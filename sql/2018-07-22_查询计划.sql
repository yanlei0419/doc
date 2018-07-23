explain plan for 
SELECT
    row_number() over(ORDER BY dic_name ASC) level_id,
    DIC_ID,
    DIC_NAME,
    dic_code AS dic_code,
    0        AS level_no,
    '-1'     AS parentId,
    DIC_ID   AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_archives
GROUP BY
    DIC_ID,
    DIC_NAME,
    dic_type,
    dic_code
UNION
SELECT
    row_number() over(partition BY DIC_ID ORDER BY F_DIC_NAME ASC,F_DIC_CODE) AS level_id,
    F_DIC_ID                                                                  AS dic_id,
    F_DIC_NAME                                                                AS dic_name,
    F_DIC_CODE                                                                AS dic_code,
    1                                                                         AS level_no,
    DIC_ID                                                                    AS parentId,
    DIC_ID||'--'||F_DIC_ID                                                    AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_archives
WHERE
    F_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    F_DIC_NAME,
    F_DIC_CODE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID ORDER BY s_DIC_NAME ASC,s_DIC_CODE) AS level_id,
    s_DIC_ID                                                                           AS dic_id,
    s_DIC_NAME                                                                         AS dic_name,
    s_DIC_CODE                                                                         AS dic_code,
    2                                                                                  AS level_no,
    DIC_ID||'--'||F_DIC_ID                                                             AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                                             AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_archives
WHERE
    s_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    s_DIC_NAME,
    s_DIC_CODE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID ORDER BY t_DIC_NAME ASC , t_DIC_CODE)
                                                 AS level_id,
    t_DIC_ID                                               AS dic_id,
    t_DIC_NAME                                             AS dic_name,
    t_DIC_CODE                                             AS dic_code,
    3                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_archives
WHERE
    t_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    t_DIC_ID,
    t_DIC_NAME,
    t_DIC_CODE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID,t_DIC_ID ORDER BY v_DIC_NAME ASC,
    v_DIC_CODE)                                            AS level_id,
    v_DIC_ID                                               AS dic_id,
    v_DIC_NAME                                             AS dic_name,
    v_DIC_CODE                                             AS dic_code,
    4                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID||'--'||v_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_archives
WHERE
    v_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    t_DIC_ID,
    v_DIC_ID,
    v_DIC_NAME,
    v_DIC_CODE,
    dic_type;
            
            
--#配合explain plan使用
select * from table(dbms_xplan.display);

--#查看刚刚执行过的SQL的执行计划
select * from table(dbms_xplan.display_cursor(null,null,'advanced'));

--#只要目标SQL的执行计划所在的Child Cursor没有被age out出Shared Pool
select sql_text,sql_id,hash_value,child_number from v$sql where sql_text like '%select * from emp%';
--#用于查看指定SQL的执行计划
select * from table(dbms_xplan.display_cursor('sql_id/hash_value',child_cursor_number, 'advanced'));


--#VERSION_COUNT代表有几种不同的执行计划
select sql_text,sql_id,hash_value,child_number from v$sql where sql_text like '%select * from emp%';

--#查看指定SQL的所有历史执行计划,前提是该SQL的执行计划被采集到AWR Repository中
select * from table(dbms_xplan.display_awr('sql_id'));



--https://www.cnblogs.com/xuty/p/7477149.html