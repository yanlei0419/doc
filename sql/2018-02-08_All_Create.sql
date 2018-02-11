-----------------------------------------
-- Export file for user VEGETTO        --
-- Created by ve on 2018/2/8, 17:01:20 --
-----------------------------------------

spool 2018-02-08_All_Create.log

prompt
prompt Creating table PRO_MODULE_INFO
prompt ==============================
prompt
create table PRO_MODULE_INFO
(
  ID          VARCHAR2(50),
  MODULE_NAME VARCHAR2(500),
  MODULE_CODE VARCHAR2(10),
  REMARK      VARCHAR2(4000)
)
;
comment on table PRO_MODULE_INFO
  is '系统模块信息';
comment on column PRO_MODULE_INFO.ID
  is '主键id';
comment on column PRO_MODULE_INFO.MODULE_NAME
  is '模块名称';
comment on column PRO_MODULE_INFO.MODULE_CODE
  is '模块编码';
comment on column PRO_MODULE_INFO.REMARK
  is '备注';

prompt
prompt Creating table PRO_MODULE_TEMPLATE_NEXUS
prompt ========================================
prompt
create table PRO_MODULE_TEMPLATE_NEXUS
(
  ID          VARCHAR2(50),
  MODULE_ID   VARCHAR2(50),
  TEMPLATE_ID VARCHAR2(50)
)
;
comment on table PRO_MODULE_TEMPLATE_NEXUS
  is '模块中';
comment on column PRO_MODULE_TEMPLATE_NEXUS.ID
  is '主键id';
comment on column PRO_MODULE_TEMPLATE_NEXUS.MODULE_ID
  is '模块id';
comment on column PRO_MODULE_TEMPLATE_NEXUS.TEMPLATE_ID
  is '模版id';

prompt
prompt Creating table PRO_PROJECT_INFO
prompt ===============================
prompt
create table PRO_PROJECT_INFO
(
  ID           VARCHAR2(50) not null,
  PROJECT_NAME VARCHAR2(400),
  PROJECT_CODE VARCHAR2(10),
  CREATE_BY    VARCHAR2(50),
  CREATE_TIME  VARCHAR2(20),
  UPDATE_BY    VARCHAR2(50),
  UPDATE_TIME  VARCHAR2(20),
  备注           VARCHAR2(4000)
)
;
comment on table PRO_PROJECT_INFO
  is '存储项目信息';
comment on column PRO_PROJECT_INFO.ID
  is '主键id';
comment on column PRO_PROJECT_INFO.PROJECT_NAME
  is '项目名称';
comment on column PRO_PROJECT_INFO.PROJECT_CODE
  is '项目编码';
comment on column PRO_PROJECT_INFO.CREATE_BY
  is '创建人';
comment on column PRO_PROJECT_INFO.CREATE_TIME
  is '创建时间';
comment on column PRO_PROJECT_INFO.UPDATE_BY
  is '修改人';
comment on column PRO_PROJECT_INFO.UPDATE_TIME
  is '修改时间';
comment on column PRO_PROJECT_INFO.备注
  is '备注';
alter table PRO_PROJECT_INFO
  add constraint PK_PRO_PROJECT_INFO primary key (ID);

prompt
prompt Creating table PRO_PROJECT_MODULE_NEXUS
prompt =======================================
prompt
create table PRO_PROJECT_MODULE_NEXUS
(
  ID          VARCHAR2(50) not null,
  PROJECT_ID  VARCHAR2(50),
  TEMPLATE_ID VARCHAR2(50),
  TABLE_NAME  VARCHAR2(500)
)
;
comment on table PRO_PROJECT_MODULE_NEXUS
  is '通过项目查询模块信息';
comment on column PRO_PROJECT_MODULE_NEXUS.ID
  is '主键id';
comment on column PRO_PROJECT_MODULE_NEXUS.PROJECT_ID
  is '项目id';
comment on column PRO_PROJECT_MODULE_NEXUS.TEMPLATE_ID
  is '模版id';
comment on column PRO_PROJECT_MODULE_NEXUS.TABLE_NAME
  is '表名';
alter table PRO_PROJECT_MODULE_NEXUS
  add constraint PK_PRO_PROJECT_MODULE_NEXUS primary key (ID);

prompt
prompt Creating table PRO_TEMPLATE_INFO
prompt ================================
prompt
create table PRO_TEMPLATE_INFO
(
  ID            VARCHAR2(50) not null,
  TEMPLATE_NAME VARCHAR2(400),
  TEMPLATE_PATH VARCHAR2(1000),
  REMARK        VARCHAR2(4000)
)
;
comment on table PRO_TEMPLATE_INFO
  is '模版信息表';
comment on column PRO_TEMPLATE_INFO.ID
  is '主键';
comment on column PRO_TEMPLATE_INFO.TEMPLATE_NAME
  is '模版名称';
comment on column PRO_TEMPLATE_INFO.TEMPLATE_PATH
  is '模版路径';
comment on column PRO_TEMPLATE_INFO.REMARK
  is '备注';
alter table PRO_TEMPLATE_INFO
  add constraint PK_PRO_TEMPLATE_INFO primary key (ID);

prompt
prompt Creating table SYS_GROUP
prompt ========================
prompt
create table SYS_GROUP
(
  ID         VARCHAR2(50) not null,
  GROUP_NAME VARCHAR2(50),
  STATUS     CHAR(1),
  REMARK     VARCHAR2(4000)
)
;
comment on table SYS_GROUP
  is '角色';
comment on column SYS_GROUP.ID
  is '主键';
comment on column SYS_GROUP.GROUP_NAME
  is '组名';
comment on column SYS_GROUP.STATUS
  is '状态';
comment on column SYS_GROUP.REMARK
  is '备注';
alter table SYS_GROUP
  add constraint PK_SYS_GROUP primary key (ID);

prompt
prompt Creating table SYS_GROUP_MENU
prompt =============================
prompt
create table SYS_GROUP_MENU
(
  ID      VARCHAR2(50) not null,
  MENUID  VARCHAR2(50),
  GROUPID VARCHAR2(50)
)
;
comment on table SYS_GROUP_MENU
  is '菜单与角色关系';
comment on column SYS_GROUP_MENU.ID
  is '主键';
comment on column SYS_GROUP_MENU.MENUID
  is '菜单id';
comment on column SYS_GROUP_MENU.GROUPID
  is '组id';
alter table SYS_GROUP_MENU
  add constraint PK_SYS_GROUP_MENU primary key (ID);

prompt
prompt Creating table SYS_GROUP_OPERATION_AUTHORITY
prompt ============================================
prompt
create table SYS_GROUP_OPERATION_AUTHORITY
(
  ID           VARCHAR2(50) not null,
  GROUP_ID     VARCHAR2(50),
  AUTHORITY_ID VARCHAR2(50)
)
;
comment on table SYS_GROUP_OPERATION_AUTHORITY
  is '角色操作权限';
comment on column SYS_GROUP_OPERATION_AUTHORITY.ID
  is 'id';
comment on column SYS_GROUP_OPERATION_AUTHORITY.GROUP_ID
  is '角色id';
comment on column SYS_GROUP_OPERATION_AUTHORITY.AUTHORITY_ID
  is '权限id';
alter table SYS_GROUP_OPERATION_AUTHORITY
  add constraint PK_SYS_GROUP_OPERATION_AUTHORI primary key (ID);

prompt
prompt Creating table SYS_GROUP_USER
prompt =============================
prompt
create table SYS_GROUP_USER
(
  ID      VARCHAR2(50) not null,
  USERID  VARCHAR2(50),
  GROUPID VARCHAR2(50)
)
;
comment on table SYS_GROUP_USER
  is '用户与角色关系表';
comment on column SYS_GROUP_USER.ID
  is '主键';
comment on column SYS_GROUP_USER.USERID
  is '用户id';
comment on column SYS_GROUP_USER.GROUPID
  is '组id';
alter table SYS_GROUP_USER
  add constraint PK_SYS_GROUP_USER primary key (ID);

prompt
prompt Creating table SYS_LOG
prompt ======================
prompt
create table SYS_LOG
(
  ID              VARCHAR2(50) not null,
  OPERATE_MODULE  VARCHAR2(400),
  OPERATE_CONTENT VARCHAR2(4000),
  OPERATE_TYPE    CHAR(1),
  OPERATE_BY      VARCHAR2(50),
  OPERATE_TIME    VARCHAR2(20),
  OPERATE_IP      VARCHAR2(50),
  OPERATE_REMARK  VARCHAR2(4000)
)
;
comment on table SYS_LOG
  is '操作日志表';
comment on column SYS_LOG.ID
  is '主键';
comment on column SYS_LOG.OPERATE_MODULE
  is '模块名';
comment on column SYS_LOG.OPERATE_CONTENT
  is '操作内容';
comment on column SYS_LOG.OPERATE_TYPE
  is '操作类型';
comment on column SYS_LOG.OPERATE_BY
  is '操作人';
comment on column SYS_LOG.OPERATE_TIME
  is '操作时间';
comment on column SYS_LOG.OPERATE_IP
  is '操作人ip';
comment on column SYS_LOG.OPERATE_REMARK
  is '备注';
alter table SYS_LOG
  add constraint PK_SYS_LOG primary key (ID);

prompt
prompt Creating table SYS_MENU
prompt =======================
prompt
create table SYS_MENU
(
  ID          VARCHAR2(50) not null,
  NAME        VARCHAR2(50),
  PID         VARCHAR2(50),
  URL         VARCHAR2(50),
  TYPE        CHAR(1),
  STATUS      CHAR(1),
  SEQ         NUMBER(4),
  MLEVEL      NUMBER(4),
  ICON        VARCHAR2(500),
  CSS         VARCHAR2(500),
  REMARK      VARCHAR2(4000),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50)
)
;
comment on table SYS_MENU
  is '菜单表';
comment on column SYS_MENU.ID
  is '主键';
comment on column SYS_MENU.NAME
  is '名称';
comment on column SYS_MENU.PID
  is '父菜单';
comment on column SYS_MENU.URL
  is '地址';
comment on column SYS_MENU.TYPE
  is '菜单类别';
comment on column SYS_MENU.STATUS
  is '是否启用';
comment on column SYS_MENU.SEQ
  is '排序';
comment on column SYS_MENU.MLEVEL
  is '层';
comment on column SYS_MENU.ICON
  is '图片';
comment on column SYS_MENU.CSS
  is '样式';
comment on column SYS_MENU.REMARK
  is '备注';
comment on column SYS_MENU.CREATE_TIME
  is '创建时间';
comment on column SYS_MENU.CREATE_BY
  is '创建人';
alter table SYS_MENU
  add constraint PK_SYS_MENU primary key (ID);

prompt
prompt Creating table SYS_OPERATION_AUTHORITY
prompt ======================================
prompt
create table SYS_OPERATION_AUTHORITY
(
  ID     VARCHAR2(50) not null,
  NAME   VARCHAR2(50),
  CODE   VARCHAR2(50),
  REMARK VARCHAR2(4000)
)
;
comment on table SYS_OPERATION_AUTHORITY
  is '操作权限表';
comment on column SYS_OPERATION_AUTHORITY.ID
  is 'id';
comment on column SYS_OPERATION_AUTHORITY.NAME
  is '名称';
comment on column SYS_OPERATION_AUTHORITY.CODE
  is '编码';
comment on column SYS_OPERATION_AUTHORITY.REMARK
  is '备注';
alter table SYS_OPERATION_AUTHORITY
  add constraint PK_SYS_OPERATION_AUTHORITY primary key (ID);

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table SYS_USER
(
  ID          VARCHAR2(50) not null,
  USERNAME    VARCHAR2(50),
  PASSWORD    VARCHAR2(100),
  NAME        VARCHAR2(50),
  TEL         VARCHAR2(20),
  EMAIL       VARCHAR2(20),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  STATUS      CHAR(1),
  REMARK      VARCHAR2(4000)
)
;
comment on table SYS_USER
  is '用户表';
comment on column SYS_USER.ID
  is '主键';
comment on column SYS_USER.USERNAME
  is '用户名';
comment on column SYS_USER.PASSWORD
  is '密码';
comment on column SYS_USER.NAME
  is '姓名';
comment on column SYS_USER.TEL
  is '联系电话';
comment on column SYS_USER.EMAIL
  is '邮箱';
comment on column SYS_USER.CREATE_TIME
  is '创建时间';
comment on column SYS_USER.CREATE_BY
  is '创建人';
comment on column SYS_USER.STATUS
  is '启用状态';
comment on column SYS_USER.REMARK
  is '备注';
alter table SYS_USER
  add constraint PK_SYS_USER primary key (ID);

prompt
prompt Creating table TEST
prompt ===================
prompt
create table TEST
(
  CONTENT VARCHAR2(4000),
  TIME1   VARCHAR2(4000)
)
;

prompt
prompt Creating table TEST_DIC
prompt =======================
prompt
create table TEST_DIC
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_SCOPE   VARCHAR2(500),
  DIC_VERSION VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table TEST_DIC
  is '正式_产品数据字典';
comment on column TEST_DIC.ID
  is '主键id';
comment on column TEST_DIC.PARENTID
  is '父ID';
comment on column TEST_DIC.DIC_ID
  is '字典项ID';
comment on column TEST_DIC.DIC_NAME
  is '字典项名称';
comment on column TEST_DIC.DIC_CODE
  is '字典项编码';
comment on column TEST_DIC.DIC_SCOPE
  is '适用范围';
comment on column TEST_DIC.DIC_VERSION
  is '版本';
comment on column TEST_DIC.DIC_TYPE
  is '类别';
comment on column TEST_DIC.LEVEL_NO
  is '层编码';
comment on column TEST_DIC.STATUS
  is '状态';
comment on column TEST_DIC.CREATE_TIME
  is '创建时间';
comment on column TEST_DIC.CREATE_BY
  is '创建人';
comment on column TEST_DIC.UPDATE_TIME
  is '修改时间';
comment on column TEST_DIC.UPDATE_BY
  is '修改人';
comment on column TEST_DIC.REMARK
  is '备注';
alter table TEST_DIC
  add constraint PK_TEST_DIC primary key (ID);

prompt
prompt Creating table T_ANALYSIS
prompt =========================
prompt
create table T_ANALYSIS
(
  ID                   VARCHAR2(50) not null,
  C_NAME               VARCHAR2(1000),
  E_NAME               VARCHAR2(400),
  TYPE                 VARCHAR2(200),
  TABLE_NAME           VARCHAR2(200),
  SS_NAME              VARCHAR2(200),
  VERSION              VARCHAR2(200),
  REMARK               VARCHAR2(4000),
  IS_UPDATE            CHAR(1),
  SIMILARITY_REMARK    VARCHAR2(4000),
  SIMILARITY_IS_UPDATE CHAR(1),
  MARK_ID              VARCHAR2(50),
  LENGTH               VARCHAR2(50),
  CPRECISION           VARCHAR2(50),
  CREATE_TIME          VARCHAR2(20),
  CREATE_BY            VARCHAR2(50),
  UPDATE_TIME          VARCHAR2(20),
  UPDATE_BY            VARCHAR2(50)
)
;
comment on table T_ANALYSIS
  is '数据分析表';
comment on column T_ANALYSIS.ID
  is '主键';
comment on column T_ANALYSIS.C_NAME
  is '中文名称';
comment on column T_ANALYSIS.E_NAME
  is '英文名称';
comment on column T_ANALYSIS.TYPE
  is '数据类型';
comment on column T_ANALYSIS.TABLE_NAME
  is '表名称';
comment on column T_ANALYSIS.SS_NAME
  is '子系统名称';
comment on column T_ANALYSIS.VERSION
  is '上传文件版本号';
comment on column T_ANALYSIS.REMARK
  is '类型不一致备注';
comment on column T_ANALYSIS.IS_UPDATE
  is '类型不一致修改状态';
comment on column T_ANALYSIS.SIMILARITY_REMARK
  is '同义异名备注';
comment on column T_ANALYSIS.SIMILARITY_IS_UPDATE
  is '同义异名修改状态';
comment on column T_ANALYSIS.MARK_ID
  is '上传标识ID';
comment on column T_ANALYSIS.LENGTH
  is '长度';
comment on column T_ANALYSIS.CPRECISION
  is '精度';
comment on column T_ANALYSIS.CREATE_TIME
  is '创建时间';
comment on column T_ANALYSIS.CREATE_BY
  is '创建人';
comment on column T_ANALYSIS.UPDATE_TIME
  is '修改时间';
comment on column T_ANALYSIS.UPDATE_BY
  is '修改人';
alter table T_ANALYSIS
  add constraint PK_T_ANALYSIS primary key (ID);

prompt
prompt Creating table T_ANALYSIS_HIS
prompt =============================
prompt
create table T_ANALYSIS_HIS
(
  ID                   VARCHAR2(50) not null,
  C_NAME               VARCHAR2(1000),
  E_NAME               VARCHAR2(400),
  TYPE                 VARCHAR2(200),
  TABLE_NAME           VARCHAR2(200),
  SS_NAME              VARCHAR2(200),
  VERSION              VARCHAR2(200),
  REMARK               VARCHAR2(4000),
  IS_UPDATE            CHAR(1),
  SIMILARITY_REMARK    VARCHAR2(4000),
  SIMILARITY_IS_UPDATE CHAR(1),
  CREATE_TIME          VARCHAR2(20),
  CREATE_BY            VARCHAR2(50),
  UPDATE_TIME          VARCHAR2(20),
  UPDATE_BY            VARCHAR2(50),
  MARK_ID              VARCHAR2(50),
  LENGTH               VARCHAR2(50),
  CPRECISION           VARCHAR2(50)
)
;
comment on table T_ANALYSIS_HIS
  is '历史数据分析表';
comment on column T_ANALYSIS_HIS.ID
  is '主键';
comment on column T_ANALYSIS_HIS.C_NAME
  is '中文名称';
comment on column T_ANALYSIS_HIS.E_NAME
  is '英文名称';
comment on column T_ANALYSIS_HIS.TYPE
  is '数据类型';
comment on column T_ANALYSIS_HIS.TABLE_NAME
  is '表名称';
comment on column T_ANALYSIS_HIS.SS_NAME
  is '子系统名称';
comment on column T_ANALYSIS_HIS.VERSION
  is '上传文件版本号';
comment on column T_ANALYSIS_HIS.REMARK
  is '类型不一致备注';
comment on column T_ANALYSIS_HIS.IS_UPDATE
  is '类型不一致修改状态';
comment on column T_ANALYSIS_HIS.SIMILARITY_REMARK
  is '同义异名备注';
comment on column T_ANALYSIS_HIS.SIMILARITY_IS_UPDATE
  is '同义异名修改状态';
comment on column T_ANALYSIS_HIS.CREATE_TIME
  is '创建时间';
comment on column T_ANALYSIS_HIS.CREATE_BY
  is '创建人';
comment on column T_ANALYSIS_HIS.UPDATE_TIME
  is '修改时间';
comment on column T_ANALYSIS_HIS.UPDATE_BY
  is '修改人';
comment on column T_ANALYSIS_HIS.MARK_ID
  is '上传标识ID';
comment on column T_ANALYSIS_HIS.LENGTH
  is '长度';
comment on column T_ANALYSIS_HIS.CPRECISION
  is '精度';
alter table T_ANALYSIS_HIS
  add constraint PK_T_ANALYSIS_HIS primary key (ID);

prompt
prompt Creating table T_ANA_SIMILARITY_CONDITIONS
prompt ==========================================
prompt
create table T_ANA_SIMILARITY_CONDITIONS
(
  ID      VARCHAR2(50) not null,
  COLID   VARCHAR2(850),
  C_NAME  VARCHAR2(1000),
  E_NAME  VARCHAR2(400),
  MARK_ID VARCHAR2(50),
  BAK     VARCHAR2(50),
  REMARK  VARCHAR2(4000)
)
;
comment on table T_ANA_SIMILARITY_CONDITIONS
  is 'T_conditions';
comment on column T_ANA_SIMILARITY_CONDITIONS.ID
  is '主键';
comment on column T_ANA_SIMILARITY_CONDITIONS.COLID
  is '标识';
comment on column T_ANA_SIMILARITY_CONDITIONS.C_NAME
  is '中文名称';
comment on column T_ANA_SIMILARITY_CONDITIONS.E_NAME
  is '英文名称';
comment on column T_ANA_SIMILARITY_CONDITIONS.MARK_ID
  is '上传标识id';
comment on column T_ANA_SIMILARITY_CONDITIONS.BAK
  is 'bak';
comment on column T_ANA_SIMILARITY_CONDITIONS.REMARK
  is '备注';
alter table T_ANA_SIMILARITY_CONDITIONS
  add constraint PK_T_ANA_SIMILARITY_CONDITIONS primary key (ID);

prompt
prompt Creating table T_ATTACH
prompt =======================
prompt
create table T_ATTACH
(
  ID          VARCHAR2(50) not null,
  FILE_NAME   VARCHAR2(200),
  FILE_PATH   VARCHAR2(200),
  ATTACH_SIZE NUMBER(12),
  FILE_TYPE   VARCHAR2(50),
  CREATE_TIME VARCHAR2(20),
  REMARK      VARCHAR2(4000),
  OBJID       VARCHAR2(50),
  CREATE_BY   VARCHAR2(50)
)
;
comment on table T_ATTACH
  is '上传附件表';
comment on column T_ATTACH.ID
  is '主键';
comment on column T_ATTACH.FILE_NAME
  is '文件名称';
comment on column T_ATTACH.FILE_PATH
  is '文件路径';
comment on column T_ATTACH.ATTACH_SIZE
  is '文件大小';
comment on column T_ATTACH.FILE_TYPE
  is '附件类型';
comment on column T_ATTACH.CREATE_TIME
  is '上传时间';
comment on column T_ATTACH.REMARK
  is '备注';
comment on column T_ATTACH.OBJID
  is '业务号';
comment on column T_ATTACH.CREATE_BY
  is '上传人';
alter table T_ATTACH
  add constraint PK_T_ATTACH primary key (ID);

prompt
prompt Creating table T_CONDITIONS
prompt ===========================
prompt
create table T_CONDITIONS
(
  ID         VARCHAR2(50) not null,
  MODULENAME CHAR(1),
  CONDITION  VARCHAR2(4000),
  REMARK     VARCHAR2(2000),
  MARK_ID    VARCHAR2(50)
)
;
comment on table T_CONDITIONS
  is 'T_conditions';
alter table T_CONDITIONS
  add constraint PK_T_CONDITIONS primary key (ID);

prompt
prompt Creating table T_DATA_STANDARD
prompt ==============================
prompt
create table T_DATA_STANDARD
(
  DS_ID       VARCHAR2(50) not null,
  C_NAME      VARCHAR2(1000),
  E_NAME      VARCHAR2(400),
  TYPE        VARCHAR2(200),
  DEFINITION  VARCHAR2(400),
  ENABLE_FLAG CHAR(1),
  CODE        VARCHAR2(20),
  VERSION     NUMBER(5),
  LENGTH      VARCHAR2(50),
  CPRECISION  VARCHAR2(50)
)
;
comment on table T_DATA_STANDARD
  is '数据标准表';
comment on column T_DATA_STANDARD.DS_ID
  is '数据标准id';
comment on column T_DATA_STANDARD.C_NAME
  is '中文名称';
comment on column T_DATA_STANDARD.E_NAME
  is '英文名称';
comment on column T_DATA_STANDARD.TYPE
  is '数据类型';
comment on column T_DATA_STANDARD.DEFINITION
  is '定义';
comment on column T_DATA_STANDARD.ENABLE_FLAG
  is '数据标准字段状态';
comment on column T_DATA_STANDARD.CODE
  is '内码';
comment on column T_DATA_STANDARD.VERSION
  is '版本号';
comment on column T_DATA_STANDARD.LENGTH
  is '长度';
comment on column T_DATA_STANDARD.CPRECISION
  is '精度';
alter table T_DATA_STANDARD
  add constraint PK_T_DATA_STANDARD primary key (DS_ID);

prompt
prompt Creating table T_DATA_STANDARD_HIS
prompt ==================================
prompt
create table T_DATA_STANDARD_HIS
(
  DS_ID       VARCHAR2(50) not null,
  C_NAME      VARCHAR2(1000),
  E_NAME      VARCHAR2(400),
  TYPE        VARCHAR2(200),
  DEFINITION  VARCHAR2(400),
  ENABLE_FLAG CHAR(1),
  CODE        VARCHAR2(20),
  VERSION     NUMBER(5),
  LENGTH      VARCHAR2(50),
  CPRECISION  VARCHAR2(50)
)
;
comment on table T_DATA_STANDARD_HIS
  is '历史数据标准表';
comment on column T_DATA_STANDARD_HIS.DS_ID
  is '数据标准id';
comment on column T_DATA_STANDARD_HIS.C_NAME
  is '中文名称';
comment on column T_DATA_STANDARD_HIS.E_NAME
  is '英文名称';
comment on column T_DATA_STANDARD_HIS.TYPE
  is '数据类型';
comment on column T_DATA_STANDARD_HIS.DEFINITION
  is '定义';
comment on column T_DATA_STANDARD_HIS.ENABLE_FLAG
  is '数据标准字段状态';
comment on column T_DATA_STANDARD_HIS.CODE
  is '内码';
comment on column T_DATA_STANDARD_HIS.VERSION
  is '版本号';
comment on column T_DATA_STANDARD_HIS.LENGTH
  is '长度';
comment on column T_DATA_STANDARD_HIS.CPRECISION
  is '精度';
alter table T_DATA_STANDARD_HIS
  add constraint PK_T_DATA_STANDARD_HIS primary key (DS_ID);

prompt
prompt Creating table T_DIC_AD
prompt =======================
prompt
create table T_DIC_AD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_AD
  is '档案数据字典';
comment on column T_DIC_AD.ID
  is '主键id';
comment on column T_DIC_AD.PARENTID
  is '父ID';
comment on column T_DIC_AD.DIC_ID
  is '字典项ID';
comment on column T_DIC_AD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_AD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_AD.DIC_VERSION
  is '版本';
comment on column T_DIC_AD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_AD.DIC_TYPE
  is '类别';
comment on column T_DIC_AD.LEVEL_NO
  is '层编码';
comment on column T_DIC_AD.STATUS
  is '状态';
comment on column T_DIC_AD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_AD.CREATE_BY
  is '创建人';
comment on column T_DIC_AD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_AD.UPDATE_BY
  is '修改人';
comment on column T_DIC_AD.REMARK
  is '备注';
alter table T_DIC_AD
  add constraint PK_T_DIC_AD primary key (ID);
create index INDEX_AD_LEVEL_NO on T_DIC_AD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_ARCHIVES
prompt =============================
prompt
create table T_DIC_ARCHIVES
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_NAME     VARCHAR2(400),
  DIC_CODE     VARCHAR2(50),
  F_DIC_ID     VARCHAR2(50),
  F_DIC_NAME   VARCHAR2(400),
  F_DIC_CODE   VARCHAR2(20),
  S_DIC_ID     VARCHAR2(50),
  S_DIC_NAME   VARCHAR2(400),
  S_DIC_CODE   VARCHAR2(20),
  T_DIC_ID     VARCHAR2(50),
  T_DIC_NAME   VARCHAR2(400),
  T_DIC_CODE   VARCHAR2(20),
  V_DIC_ID     VARCHAR2(50),
  V_DIC_NAME   VARCHAR2(400),
  V_DIC_CODE   VARCHAR2(20),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  REMARK       VARCHAR2(4000),
  CREATE_TIME  VARCHAR2(20),
  FILE_VERSION VARCHAR2(20),
  FILE_NAME    VARCHAR2(200)
)
;
comment on table T_DIC_ARCHIVES
  is '原始_档案数据字典';
comment on column T_DIC_ARCHIVES.ID
  is '主键';
comment on column T_DIC_ARCHIVES.DIC_ID
  is '字典类型id';
comment on column T_DIC_ARCHIVES.DIC_NAME
  is '字典类型名称';
comment on column T_DIC_ARCHIVES.DIC_CODE
  is '字典编码';
comment on column T_DIC_ARCHIVES.F_DIC_ID
  is '一级_字典项ID';
comment on column T_DIC_ARCHIVES.F_DIC_NAME
  is '一级_字典项名称';
comment on column T_DIC_ARCHIVES.F_DIC_CODE
  is '一级_字典项编码';
comment on column T_DIC_ARCHIVES.S_DIC_ID
  is '二级_字典项ID';
comment on column T_DIC_ARCHIVES.S_DIC_NAME
  is '二级_字典项名称';
comment on column T_DIC_ARCHIVES.S_DIC_CODE
  is '二级_字典项编码';
comment on column T_DIC_ARCHIVES.T_DIC_ID
  is '三级_字典项ID';
comment on column T_DIC_ARCHIVES.T_DIC_NAME
  is '三级_字典项名称';
comment on column T_DIC_ARCHIVES.T_DIC_CODE
  is '三级_字典项编码';
comment on column T_DIC_ARCHIVES.V_DIC_ID
  is '四级_字典项ID';
comment on column T_DIC_ARCHIVES.V_DIC_NAME
  is '四级_字典项名称';
comment on column T_DIC_ARCHIVES.V_DIC_CODE
  is '四级_字典项编码';
comment on column T_DIC_ARCHIVES.STATUS
  is '是否有效';
comment on column T_DIC_ARCHIVES.DIC_TYPE
  is '类型';
comment on column T_DIC_ARCHIVES.REMARK
  is '备注';
comment on column T_DIC_ARCHIVES.CREATE_TIME
  is '创建时间';
comment on column T_DIC_ARCHIVES.FILE_VERSION
  is '文件版本号';
comment on column T_DIC_ARCHIVES.FILE_NAME
  is '文件名称';
alter table T_DIC_ARCHIVES
  add constraint PK_T_DIC_ARCHIVES primary key (ID);

prompt
prompt Creating table T_DIC_CD
prompt =======================
prompt
create table T_DIC_CD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_CD
  is '采集数据字典';
comment on column T_DIC_CD.ID
  is '主键id';
comment on column T_DIC_CD.PARENTID
  is '父ID';
comment on column T_DIC_CD.DIC_ID
  is '字典项ID';
comment on column T_DIC_CD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_CD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_CD.DIC_VERSION
  is '版本';
comment on column T_DIC_CD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_CD.DIC_TYPE
  is '类别';
comment on column T_DIC_CD.LEVEL_NO
  is '层编码';
comment on column T_DIC_CD.STATUS
  is '状态';
comment on column T_DIC_CD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_CD.CREATE_BY
  is '创建人';
comment on column T_DIC_CD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_CD.UPDATE_BY
  is '修改人';
comment on column T_DIC_CD.REMARK
  is '备注';
alter table T_DIC_CD
  add constraint PK_T_DIC_CD primary key (ID);
create index INDEX_CD_LEVELNO on T_DIC_CD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_COLLECTION
prompt ===============================
prompt
create table T_DIC_COLLECTION
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_NAME     VARCHAR2(400),
  DIC_CODE     VARCHAR2(50),
  DIC_VERSION  VARCHAR2(500),
  DIC_SCOPE    VARCHAR2(500),
  F_DIC_ID     VARCHAR2(50),
  F_DIC_NAME   VARCHAR2(400),
  F_DIC_CODE   VARCHAR2(20),
  S_DIC_ID     VARCHAR2(50),
  S_DIC_NAME   VARCHAR2(400),
  S_DIC_CODE   VARCHAR2(20),
  T_DIC_ID     VARCHAR2(50),
  T_DIC_NAME   VARCHAR2(400),
  T_DIC_CODE   VARCHAR2(20),
  V_DIC_ID     VARCHAR2(50),
  V_DIC_NAME   VARCHAR2(400),
  V_DIC_CODE   VARCHAR2(20),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  REMARK       VARCHAR2(4000),
  CREATE_TIME  VARCHAR2(20),
  FILE_VERSION VARCHAR2(20),
  FILE_NAME    VARCHAR2(200)
)
;
comment on table T_DIC_COLLECTION
  is '原始_采集字数据字典';
comment on column T_DIC_COLLECTION.ID
  is '主键';
comment on column T_DIC_COLLECTION.DIC_ID
  is '字典类型id';
comment on column T_DIC_COLLECTION.DIC_NAME
  is '字典类型名称';
comment on column T_DIC_COLLECTION.DIC_CODE
  is '字典编码';
comment on column T_DIC_COLLECTION.DIC_VERSION
  is '版本';
comment on column T_DIC_COLLECTION.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_COLLECTION.F_DIC_ID
  is '一级_字典项ID';
comment on column T_DIC_COLLECTION.F_DIC_NAME
  is '一级_字典项名称';
comment on column T_DIC_COLLECTION.F_DIC_CODE
  is '一级_字典项编码';
comment on column T_DIC_COLLECTION.S_DIC_ID
  is '二级_字典项ID';
comment on column T_DIC_COLLECTION.S_DIC_NAME
  is '二级_字典项名称';
comment on column T_DIC_COLLECTION.S_DIC_CODE
  is '二级_字典项编码';
comment on column T_DIC_COLLECTION.T_DIC_ID
  is '三级_字典项ID';
comment on column T_DIC_COLLECTION.T_DIC_NAME
  is '三级_字典项名称';
comment on column T_DIC_COLLECTION.T_DIC_CODE
  is '三级_字典项编码';
comment on column T_DIC_COLLECTION.V_DIC_ID
  is '四级_字典项ID';
comment on column T_DIC_COLLECTION.V_DIC_NAME
  is '四级_字典项名称';
comment on column T_DIC_COLLECTION.V_DIC_CODE
  is '四级_字典项编码';
comment on column T_DIC_COLLECTION.STATUS
  is '是否有效';
comment on column T_DIC_COLLECTION.DIC_TYPE
  is '类型';
comment on column T_DIC_COLLECTION.REMARK
  is '备注';
comment on column T_DIC_COLLECTION.CREATE_TIME
  is '创建时间';
comment on column T_DIC_COLLECTION.FILE_VERSION
  is '文件版本号';
comment on column T_DIC_COLLECTION.FILE_NAME
  is '文件名称';
alter table T_DIC_COLLECTION
  add constraint PK_T_DIC_COLLECTION primary key (ID);

prompt
prompt Creating table T_DIC_MANAGE
prompt ===========================
prompt
create table T_DIC_MANAGE
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_NAME     VARCHAR2(400),
  DIC_CODE     VARCHAR2(50),
  F_DIC_ID     VARCHAR2(50),
  F_DIC_NAME   VARCHAR2(400),
  F_DIC_CODE   VARCHAR2(20),
  S_DIC_ID     VARCHAR2(50),
  S_DIC_NAME   VARCHAR2(400),
  S_DIC_CODE   VARCHAR2(20),
  T_DIC_ID     VARCHAR2(50),
  T_DIC_NAME   VARCHAR2(400),
  T_DIC_CODE   VARCHAR2(20),
  V_DIC_ID     VARCHAR2(50),
  V_DIC_NAME   VARCHAR2(400),
  V_DIC_CODE   VARCHAR2(20),
  I_DIC_ID     VARCHAR2(50),
  I_DIC_NAME   VARCHAR2(400),
  I_DIC_CODE   VARCHAR2(20),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  REMARK       VARCHAR2(4000),
  CREATE_TIME  VARCHAR2(20),
  FILE_VERSION VARCHAR2(20),
  FILE_NAME    VARCHAR2(200)
)
;
comment on table T_DIC_MANAGE
  is '原始_管理类数据字典';
comment on column T_DIC_MANAGE.ID
  is '主键';
comment on column T_DIC_MANAGE.DIC_ID
  is '字典类型id';
comment on column T_DIC_MANAGE.DIC_NAME
  is '字典类型名称';
comment on column T_DIC_MANAGE.DIC_CODE
  is '字典编码';
comment on column T_DIC_MANAGE.F_DIC_ID
  is '一级_字典项ID';
comment on column T_DIC_MANAGE.F_DIC_NAME
  is '一级_字典项名称';
comment on column T_DIC_MANAGE.F_DIC_CODE
  is '一级_字典项编码';
comment on column T_DIC_MANAGE.S_DIC_ID
  is '二级_字典项ID';
comment on column T_DIC_MANAGE.S_DIC_NAME
  is '二级_字典项名称';
comment on column T_DIC_MANAGE.S_DIC_CODE
  is '二级_字典项编码';
comment on column T_DIC_MANAGE.T_DIC_ID
  is '三级_字典项ID';
comment on column T_DIC_MANAGE.T_DIC_NAME
  is '三级_字典项名称';
comment on column T_DIC_MANAGE.T_DIC_CODE
  is '三级_字典项编码';
comment on column T_DIC_MANAGE.V_DIC_ID
  is '四级_字典项ID';
comment on column T_DIC_MANAGE.V_DIC_NAME
  is '四级_字典项名称';
comment on column T_DIC_MANAGE.V_DIC_CODE
  is '四级_字典项编码';
comment on column T_DIC_MANAGE.I_DIC_ID
  is '五级_字典项ID';
comment on column T_DIC_MANAGE.I_DIC_NAME
  is '五级_字典项名称2';
comment on column T_DIC_MANAGE.I_DIC_CODE
  is '五级_字典项编码2';
comment on column T_DIC_MANAGE.STATUS
  is '是否有效';
comment on column T_DIC_MANAGE.DIC_TYPE
  is '类型';
comment on column T_DIC_MANAGE.REMARK
  is '备注';
comment on column T_DIC_MANAGE.CREATE_TIME
  is '创建时间';
comment on column T_DIC_MANAGE.FILE_VERSION
  is '文件版本号';
comment on column T_DIC_MANAGE.FILE_NAME
  is '文件名称';
alter table T_DIC_MANAGE
  add constraint PK_T_DIC_MANAGE primary key (ID);

prompt
prompt Creating table T_DIC_MD
prompt =======================
prompt
create table T_DIC_MD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_MD
  is '管理类数据字典';
comment on column T_DIC_MD.ID
  is '主键id';
comment on column T_DIC_MD.PARENTID
  is '父ID';
comment on column T_DIC_MD.DIC_ID
  is '字典项ID';
comment on column T_DIC_MD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_MD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_MD.DIC_VERSION
  is '版本';
comment on column T_DIC_MD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_MD.DIC_TYPE
  is '类别';
comment on column T_DIC_MD.LEVEL_NO
  is '层编码';
comment on column T_DIC_MD.STATUS
  is '状态';
comment on column T_DIC_MD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_MD.CREATE_BY
  is '创建人';
comment on column T_DIC_MD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_MD.UPDATE_BY
  is '修改人';
comment on column T_DIC_MD.REMARK
  is '备注';
alter table T_DIC_MD
  add constraint PK_T_DIC_MD primary key (ID);
create index INDEX_MD_LEVEL_NO on T_DIC_MD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_PD
prompt =======================
prompt
create table T_DIC_PD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_SCOPE   VARCHAR2(500),
  DIC_VERSION VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_PD
  is '产品数据字典';
comment on column T_DIC_PD.ID
  is '主键id';
comment on column T_DIC_PD.PARENTID
  is '父ID';
comment on column T_DIC_PD.DIC_ID
  is '字典项ID';
comment on column T_DIC_PD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_PD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_PD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_PD.DIC_VERSION
  is '版本';
comment on column T_DIC_PD.DIC_TYPE
  is '类别';
comment on column T_DIC_PD.LEVEL_NO
  is '层编码';
comment on column T_DIC_PD.STATUS
  is '状态';
comment on column T_DIC_PD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_PD.CREATE_BY
  is '创建人';
comment on column T_DIC_PD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_PD.UPDATE_BY
  is '修改人';
comment on column T_DIC_PD.REMARK
  is '备注';
alter table T_DIC_PD
  add constraint PK_T_DIC_PD primary key (ID);
create index INDEX_PD_LEVEL_NO on T_DIC_PD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_PRODUCT
prompt ============================
prompt
create table T_DIC_PRODUCT
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_NAME     VARCHAR2(400),
  DIC_CODE     VARCHAR2(50),
  F_DIC_ID     VARCHAR2(50),
  F_DIC_NAME   VARCHAR2(400),
  F_DIC_CODE   VARCHAR2(20),
  S_DIC_ID     VARCHAR2(50),
  S_DIC_NAME   VARCHAR2(400),
  S_DIC_CODE   VARCHAR2(20),
  T_DIC_ID     VARCHAR2(50),
  T_DIC_NAME   VARCHAR2(400),
  T_DIC_CODE   VARCHAR2(20),
  V_DIC_ID     VARCHAR2(50),
  V_DIC_NAME   VARCHAR2(400),
  V_DIC_CODE   VARCHAR2(20),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  REMARK       VARCHAR2(4000),
  CREATE_TIME  VARCHAR2(20),
  FILE_VERSION VARCHAR2(20),
  FILE_NAME    VARCHAR2(200)
)
;
comment on table T_DIC_PRODUCT
  is '原始_产品数据字典';
comment on column T_DIC_PRODUCT.ID
  is '主键';
comment on column T_DIC_PRODUCT.DIC_ID
  is '字典类型id';
comment on column T_DIC_PRODUCT.DIC_NAME
  is '字典类型名称';
comment on column T_DIC_PRODUCT.DIC_CODE
  is '字典编码';
comment on column T_DIC_PRODUCT.F_DIC_ID
  is '一级_字典项ID';
comment on column T_DIC_PRODUCT.F_DIC_NAME
  is '一级_字典项名称';
comment on column T_DIC_PRODUCT.F_DIC_CODE
  is '一级_字典项编码';
comment on column T_DIC_PRODUCT.S_DIC_ID
  is '二级_字典项ID';
comment on column T_DIC_PRODUCT.S_DIC_NAME
  is '二级_字典项名称';
comment on column T_DIC_PRODUCT.S_DIC_CODE
  is '二级_字典项编码';
comment on column T_DIC_PRODUCT.T_DIC_ID
  is '三级_字典项ID';
comment on column T_DIC_PRODUCT.T_DIC_NAME
  is '三级_字典项名称';
comment on column T_DIC_PRODUCT.T_DIC_CODE
  is '三级_字典项编码';
comment on column T_DIC_PRODUCT.V_DIC_ID
  is '四级_字典项ID';
comment on column T_DIC_PRODUCT.V_DIC_NAME
  is '四级_字典项名称';
comment on column T_DIC_PRODUCT.V_DIC_CODE
  is '四级_字典项编码';
comment on column T_DIC_PRODUCT.STATUS
  is '是否有效';
comment on column T_DIC_PRODUCT.DIC_TYPE
  is '类型';
comment on column T_DIC_PRODUCT.REMARK
  is '备注';
comment on column T_DIC_PRODUCT.CREATE_TIME
  is '创建时间';
comment on column T_DIC_PRODUCT.FILE_VERSION
  is '文件版本号';
comment on column T_DIC_PRODUCT.FILE_NAME
  is '文件名称';
alter table T_DIC_PRODUCT
  add constraint PK_T_DIC_PRODUCT primary key (ID);

prompt
prompt Creating table T_DIC_RD
prompt =======================
prompt
create table T_DIC_RD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_ID    NUMBER,
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_RD
  is '关联关系数据字典';
comment on column T_DIC_RD.ID
  is '主键id';
comment on column T_DIC_RD.PARENTID
  is '父ID';
comment on column T_DIC_RD.DIC_ID
  is '字典项ID';
comment on column T_DIC_RD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_RD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_RD.DIC_VERSION
  is '版本';
comment on column T_DIC_RD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_RD.DIC_TYPE
  is '类别';
comment on column T_DIC_RD.LEVEL_ID
  is '预留字段';
comment on column T_DIC_RD.LEVEL_NO
  is '层编码';
comment on column T_DIC_RD.STATUS
  is '状态';
comment on column T_DIC_RD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_RD.CREATE_BY
  is '创建人';
comment on column T_DIC_RD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_RD.UPDATE_BY
  is '修改人';
comment on column T_DIC_RD.REMARK
  is '备注';
alter table T_DIC_RD
  add constraint PK_T_DIC_RD primary key (ID);
create index INDEX_RD_LEVEL_NO on T_DIC_RD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_RELATIONAL
prompt ===============================
prompt
create table T_DIC_RELATIONAL
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_NAME     VARCHAR2(400),
  DIC_CODE     VARCHAR2(50),
  F_DIC_ID     VARCHAR2(50),
  F_DIC_NAME   VARCHAR2(400),
  F_DIC_CODE   VARCHAR2(20),
  S_DIC_ID     VARCHAR2(50),
  S_DIC_NAME   VARCHAR2(400),
  S_DIC_CODE   VARCHAR2(20),
  T_DIC_ID     VARCHAR2(50),
  T_DIC_NAME   VARCHAR2(400),
  T_DIC_CODE   VARCHAR2(20),
  V_DIC_ID     VARCHAR2(50),
  V_DIC_NAME   VARCHAR2(400),
  V_DIC_CODE   VARCHAR2(20),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  CREATE_TIME  VARCHAR2(20),
  CREATE_BY    VARCHAR2(50),
  UPDATE_TIME  VARCHAR2(20),
  UPDATE_BY    VARCHAR2(50),
  REMARK       VARCHAR2(4000),
  FILE_VERSION VARCHAR2(20),
  FILE_NAME    VARCHAR2(200)
)
;
comment on table T_DIC_RELATIONAL
  is '原始_关联关系数据字典';
comment on column T_DIC_RELATIONAL.ID
  is '主键';
comment on column T_DIC_RELATIONAL.DIC_ID
  is '字典类型id';
comment on column T_DIC_RELATIONAL.DIC_NAME
  is '字典类型名称';
comment on column T_DIC_RELATIONAL.DIC_CODE
  is '字典编码';
comment on column T_DIC_RELATIONAL.F_DIC_ID
  is '一级_字典项ID';
comment on column T_DIC_RELATIONAL.F_DIC_NAME
  is '一级_字典项名称';
comment on column T_DIC_RELATIONAL.F_DIC_CODE
  is '一级_字典项编码';
comment on column T_DIC_RELATIONAL.S_DIC_ID
  is '二级_字典项ID';
comment on column T_DIC_RELATIONAL.S_DIC_NAME
  is '二级_字典项名称';
comment on column T_DIC_RELATIONAL.S_DIC_CODE
  is '二级_字典项编码';
comment on column T_DIC_RELATIONAL.T_DIC_ID
  is '三级_字典项ID';
comment on column T_DIC_RELATIONAL.T_DIC_NAME
  is '三级_字典项名称';
comment on column T_DIC_RELATIONAL.T_DIC_CODE
  is '三级_字典项编码';
comment on column T_DIC_RELATIONAL.V_DIC_ID
  is '叶子_字典项ID';
comment on column T_DIC_RELATIONAL.V_DIC_NAME
  is '叶子_字典项名称';
comment on column T_DIC_RELATIONAL.V_DIC_CODE
  is '叶子_字典项编码';
comment on column T_DIC_RELATIONAL.STATUS
  is '状态';
comment on column T_DIC_RELATIONAL.DIC_TYPE
  is '类型';
comment on column T_DIC_RELATIONAL.CREATE_TIME
  is '创建时间';
comment on column T_DIC_RELATIONAL.CREATE_BY
  is '创建人';
comment on column T_DIC_RELATIONAL.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_RELATIONAL.UPDATE_BY
  is '修改人';
comment on column T_DIC_RELATIONAL.REMARK
  is '备注';
comment on column T_DIC_RELATIONAL.FILE_VERSION
  is '文件版本号';
comment on column T_DIC_RELATIONAL.FILE_NAME
  is '文件名称';
alter table T_DIC_RELATIONAL
  add constraint PK_T_DIC_RELATIONAL primary key (ID);

prompt
prompt Creating table T_DIC_REVISION_RECORD
prompt ====================================
prompt
create table T_DIC_REVISION_RECORD
(
  ID           VARCHAR2(50) not null,
  DIC_ID       VARCHAR2(50),
  DIC_TN       VARCHAR2(100),
  OPERATE_TYPE CHAR(1),
  DIC_TYPE     CHAR(1),
  CONTENT      VARCHAR2(4000),
  VERSION      VARCHAR2(200),
  REMARK       VARCHAR2(4000),
  GROUP_ID     VARCHAR2(50),
  CREATE_BY    VARCHAR2(50),
  CREATE_TIME  VARCHAR2(20)
)
;
comment on table T_DIC_REVISION_RECORD
  is '数据字典修订记录';
comment on column T_DIC_REVISION_RECORD.ID
  is '主键';
comment on column T_DIC_REVISION_RECORD.DIC_ID
  is '字典Id';
comment on column T_DIC_REVISION_RECORD.DIC_TN
  is '表类别';
comment on column T_DIC_REVISION_RECORD.OPERATE_TYPE
  is '操作类型';
comment on column T_DIC_REVISION_RECORD.DIC_TYPE
  is '类别';
comment on column T_DIC_REVISION_RECORD.CONTENT
  is '修订内容';
comment on column T_DIC_REVISION_RECORD.VERSION
  is '数据字典修订版本号';
comment on column T_DIC_REVISION_RECORD.REMARK
  is '备注';
comment on column T_DIC_REVISION_RECORD.GROUP_ID
  is '组';
comment on column T_DIC_REVISION_RECORD.CREATE_BY
  is '创建人';
comment on column T_DIC_REVISION_RECORD.CREATE_TIME
  is '创建时间';
alter table T_DIC_REVISION_RECORD
  add constraint PK_T_DIC_REVISION_RECORD primary key (ID);

prompt
prompt Creating table T_DIC_STANDARD_AD
prompt ================================
prompt
create table T_DIC_STANDARD_AD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_STANDARD_AD
  is '正式_档案数据字典';
comment on column T_DIC_STANDARD_AD.ID
  is '主键id';
comment on column T_DIC_STANDARD_AD.PARENTID
  is '父ID';
comment on column T_DIC_STANDARD_AD.DIC_ID
  is '字典项ID';
comment on column T_DIC_STANDARD_AD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_STANDARD_AD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_STANDARD_AD.DIC_VERSION
  is '版本';
comment on column T_DIC_STANDARD_AD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_STANDARD_AD.DIC_TYPE
  is '类别';
comment on column T_DIC_STANDARD_AD.LEVEL_NO
  is '层编码';
comment on column T_DIC_STANDARD_AD.STATUS
  is '状态';
comment on column T_DIC_STANDARD_AD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_STANDARD_AD.CREATE_BY
  is '创建人';
comment on column T_DIC_STANDARD_AD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_STANDARD_AD.UPDATE_BY
  is '修改人';
comment on column T_DIC_STANDARD_AD.REMARK
  is '备注';
alter table T_DIC_STANDARD_AD
  add constraint PK_T_DIC_STANDARD_AD primary key (ID);
create index INDEX_STANDARD_AD_LEVEL_NO on T_DIC_STANDARD_AD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_STANDARD_CD
prompt ================================
prompt
create table T_DIC_STANDARD_CD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_STANDARD_CD
  is '正式_采集数据字典';
comment on column T_DIC_STANDARD_CD.ID
  is '主键id';
comment on column T_DIC_STANDARD_CD.PARENTID
  is '父ID';
comment on column T_DIC_STANDARD_CD.DIC_ID
  is '字典项ID';
comment on column T_DIC_STANDARD_CD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_STANDARD_CD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_STANDARD_CD.DIC_VERSION
  is '版本';
comment on column T_DIC_STANDARD_CD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_STANDARD_CD.DIC_TYPE
  is '类别';
comment on column T_DIC_STANDARD_CD.LEVEL_NO
  is '层编码';
comment on column T_DIC_STANDARD_CD.STATUS
  is '状态';
comment on column T_DIC_STANDARD_CD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_STANDARD_CD.CREATE_BY
  is '创建人';
comment on column T_DIC_STANDARD_CD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_STANDARD_CD.UPDATE_BY
  is '修改人';
comment on column T_DIC_STANDARD_CD.REMARK
  is '备注';
alter table T_DIC_STANDARD_CD
  add constraint PK_T_DIC_STANDARD_CD primary key (ID);
create index INDEX_STANDARD_CD_LEVEL_NO on T_DIC_STANDARD_CD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_STANDARD_MD
prompt ================================
prompt
create table T_DIC_STANDARD_MD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_STANDARD_MD
  is '正式_管理类数据字典';
comment on column T_DIC_STANDARD_MD.ID
  is '主键id';
comment on column T_DIC_STANDARD_MD.PARENTID
  is '父ID';
comment on column T_DIC_STANDARD_MD.DIC_ID
  is '字典项ID';
comment on column T_DIC_STANDARD_MD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_STANDARD_MD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_STANDARD_MD.DIC_VERSION
  is '版本';
comment on column T_DIC_STANDARD_MD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_STANDARD_MD.DIC_TYPE
  is '类别';
comment on column T_DIC_STANDARD_MD.LEVEL_NO
  is '层编码';
comment on column T_DIC_STANDARD_MD.STATUS
  is '状态';
comment on column T_DIC_STANDARD_MD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_STANDARD_MD.CREATE_BY
  is '创建人';
comment on column T_DIC_STANDARD_MD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_STANDARD_MD.UPDATE_BY
  is '修改人';
comment on column T_DIC_STANDARD_MD.REMARK
  is '备注';
alter table T_DIC_STANDARD_MD
  add constraint PK_T_DIC_STANDARD_MD primary key (ID);
create index INDEX_STANDARD_MD_LEVEL_NO on T_DIC_STANDARD_MD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_STANDARD_PD
prompt ================================
prompt
create table T_DIC_STANDARD_PD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_SCOPE   VARCHAR2(500),
  DIC_VERSION VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_STANDARD_PD
  is '正式_产品数据字典';
comment on column T_DIC_STANDARD_PD.ID
  is '主键id';
comment on column T_DIC_STANDARD_PD.PARENTID
  is '父ID';
comment on column T_DIC_STANDARD_PD.DIC_ID
  is '字典项ID';
comment on column T_DIC_STANDARD_PD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_STANDARD_PD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_STANDARD_PD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_STANDARD_PD.DIC_VERSION
  is '版本';
comment on column T_DIC_STANDARD_PD.DIC_TYPE
  is '类别';
comment on column T_DIC_STANDARD_PD.LEVEL_NO
  is '层编码';
comment on column T_DIC_STANDARD_PD.STATUS
  is '状态';
comment on column T_DIC_STANDARD_PD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_STANDARD_PD.CREATE_BY
  is '创建人';
comment on column T_DIC_STANDARD_PD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_STANDARD_PD.UPDATE_BY
  is '修改人';
comment on column T_DIC_STANDARD_PD.REMARK
  is '备注';
alter table T_DIC_STANDARD_PD
  add constraint PK_T_DIC_STANDARD_PD primary key (ID);
create index INDEX_STANDARD_PD_LEVEL_NO on T_DIC_STANDARD_PD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DIC_STANDARD_RD
prompt ================================
prompt
create table T_DIC_STANDARD_RD
(
  ID          VARCHAR2(250) not null,
  PARENTID    VARCHAR2(250),
  DIC_ID      NUMBER(20),
  DIC_NAME    VARCHAR2(500),
  DIC_CODE    VARCHAR2(100),
  DIC_VERSION VARCHAR2(500),
  DIC_SCOPE   VARCHAR2(500),
  DIC_TYPE    CHAR(1),
  LEVEL_NO    NUMBER,
  STATUS      CHAR(1),
  CREATE_TIME VARCHAR2(20),
  CREATE_BY   VARCHAR2(50),
  UPDATE_TIME VARCHAR2(20),
  UPDATE_BY   VARCHAR2(50),
  REMARK      VARCHAR2(4000)
)
;
comment on table T_DIC_STANDARD_RD
  is '正式_关系数据字典';
comment on column T_DIC_STANDARD_RD.ID
  is '主键id';
comment on column T_DIC_STANDARD_RD.PARENTID
  is '父ID';
comment on column T_DIC_STANDARD_RD.DIC_ID
  is '字典项ID';
comment on column T_DIC_STANDARD_RD.DIC_NAME
  is '字典项名称';
comment on column T_DIC_STANDARD_RD.DIC_CODE
  is '字典项编码';
comment on column T_DIC_STANDARD_RD.DIC_VERSION
  is '字典版本';
comment on column T_DIC_STANDARD_RD.DIC_SCOPE
  is '适用范围';
comment on column T_DIC_STANDARD_RD.DIC_TYPE
  is '类别';
comment on column T_DIC_STANDARD_RD.LEVEL_NO
  is '层编码';
comment on column T_DIC_STANDARD_RD.STATUS
  is '状态';
comment on column T_DIC_STANDARD_RD.CREATE_TIME
  is '创建时间';
comment on column T_DIC_STANDARD_RD.CREATE_BY
  is '创建人';
comment on column T_DIC_STANDARD_RD.UPDATE_TIME
  is '修改时间';
comment on column T_DIC_STANDARD_RD.UPDATE_BY
  is '修改人';
comment on column T_DIC_STANDARD_RD.REMARK
  is '备注';
alter table T_DIC_STANDARD_RD
  add constraint PK_T_DIC_STANDARD_RD primary key (ID);
create index INDEX_STANDARD_RD_LEVEL_NO on T_DIC_STANDARD_RD (LEVEL_NO, DIC_ID);

prompt
prompt Creating table T_DS_USE
prompt =======================
prompt
create table T_DS_USE
(
  ID         VARCHAR2(50) not null,
  DS_ID      VARCHAR2(50),
  SS_NAME    VARCHAR2(1000),
  TABLE_NAME VARCHAR2(1000),
  VERSION    NUMBER(5),
  REMARK     VARCHAR2(4000)
)
;
comment on table T_DS_USE
  is '数据标准使用情况表';
comment on column T_DS_USE.ID
  is '主键';
comment on column T_DS_USE.DS_ID
  is '数据标准id';
comment on column T_DS_USE.SS_NAME
  is '子系统名';
comment on column T_DS_USE.TABLE_NAME
  is '表名';
comment on column T_DS_USE.VERSION
  is '版本号';
comment on column T_DS_USE.REMARK
  is '备注';
alter table T_DS_USE
  add constraint PK_T_DS_USE primary key (ID);

prompt
prompt Creating table T_DS_USE_HIS
prompt ===========================
prompt
create table T_DS_USE_HIS
(
  ID         VARCHAR2(50) not null,
  DS_ID      VARCHAR2(50),
  SS_NAME    VARCHAR2(1000),
  TABLE_NAME VARCHAR2(1000),
  VERSION    NUMBER(5),
  REMARK     VARCHAR2(4000)
)
;
comment on table T_DS_USE_HIS
  is '历史使用情况表';
comment on column T_DS_USE_HIS.ID
  is '主键';
comment on column T_DS_USE_HIS.DS_ID
  is '数据标准id';
comment on column T_DS_USE_HIS.SS_NAME
  is '子系统名';
comment on column T_DS_USE_HIS.TABLE_NAME
  is '表名';
comment on column T_DS_USE_HIS.VERSION
  is '版本号';
comment on column T_DS_USE_HIS.REMARK
  is '备注';
alter table T_DS_USE_HIS
  add constraint PK_T_DS_USE_HIS primary key (ID);

prompt
prompt Creating table T_NEXUS_CAN
prompt ==========================
prompt
create table T_NEXUS_CAN
(
  ID            VARCHAR2(50) not null,
  C_S_DIC_ID    VARCHAR2(50),
  A_S_DIC_ID    VARCHAR2(50),
  STATUS        CHAR(1),
  DIC_TYPE      CHAR(1),
  C_DIC_ID      VARCHAR2(50),
  C_DIC_NAME    VARCHAR2(400),
  C_DIC_CODE    VARCHAR2(50),
  C_DIC_VERSION VARCHAR2(20),
  C_DIC_SCOPE   VARCHAR2(20),
  C_S_DIC_NAME  VARCHAR2(400),
  C_S_DIC_CODE  VARCHAR2(20),
  A_DIC_ID      VARCHAR2(50),
  A_DIC_NAME    VARCHAR2(400),
  A_DIC_CODE    VARCHAR2(50),
  A_S_DIC_NAME  VARCHAR2(400),
  A_S_DIC_CODE  VARCHAR2(20),
  CREATE_TIME   VARCHAR2(20),
  CREATE_BY     VARCHAR2(50),
  UPDATE_TIME   VARCHAR2(20),
  UPDATE_BY     VARCHAR2(50),
  REMARK        VARCHAR2(4000)
)
;
comment on table T_NEXUS_CAN
  is '采集与档案数据字典关系';
comment on column T_NEXUS_CAN.ID
  is '主键';
comment on column T_NEXUS_CAN.C_S_DIC_ID
  is '采集字典项内码';
comment on column T_NEXUS_CAN.A_S_DIC_ID
  is '档案字典项内码';
comment on column T_NEXUS_CAN.STATUS
  is '状态';
comment on column T_NEXUS_CAN.DIC_TYPE
  is '类型';
comment on column T_NEXUS_CAN.C_DIC_ID
  is '采集_数据类型ID';
comment on column T_NEXUS_CAN.C_DIC_NAME
  is '采集_数据类型名称';
comment on column T_NEXUS_CAN.C_DIC_CODE
  is '采集_数据类型编码';
comment on column T_NEXUS_CAN.C_DIC_VERSION
  is '采集_版本';
comment on column T_NEXUS_CAN.C_DIC_SCOPE
  is '采集_适用范围';
comment on column T_NEXUS_CAN.C_S_DIC_NAME
  is '采集_字典项名称';
comment on column T_NEXUS_CAN.C_S_DIC_CODE
  is '采集_字典项编码';
comment on column T_NEXUS_CAN.A_DIC_ID
  is '档案_字典类型ID';
comment on column T_NEXUS_CAN.A_DIC_NAME
  is '档案_字类型名称';
comment on column T_NEXUS_CAN.A_DIC_CODE
  is '档案_字典类型编码';
comment on column T_NEXUS_CAN.A_S_DIC_NAME
  is '档案_字典项名称';
comment on column T_NEXUS_CAN.A_S_DIC_CODE
  is '档案_字典项编码';
comment on column T_NEXUS_CAN.CREATE_TIME
  is '创建时间';
comment on column T_NEXUS_CAN.CREATE_BY
  is '创建人';
comment on column T_NEXUS_CAN.UPDATE_TIME
  is '修改时间';
comment on column T_NEXUS_CAN.UPDATE_BY
  is '修改人';
comment on column T_NEXUS_CAN.REMARK
  is '备注';
alter table T_NEXUS_CAN
  add constraint PK_T_NEXUS_CAN primary key (ID);

prompt
prompt Creating table T_NEXUS_PAN
prompt ==========================
prompt
create table T_NEXUS_PAN
(
  ID           VARCHAR2(50) not null,
  A_S_DIC_ID   VARCHAR2(50),
  P_S_DIC_ID   VARCHAR2(50),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  P_DIC_ID     VARCHAR2(50),
  P_DIC_NAME   VARCHAR2(400),
  P_DIC_CODE   VARCHAR2(50),
  P_S_DIC_NAME VARCHAR2(400),
  P_S_DIC_CODE VARCHAR2(20),
  A_DIC_ID     VARCHAR2(50),
  A_DIC_NAME   VARCHAR2(400),
  A_DIC_CODE   VARCHAR2(50),
  A_S_DIC_NAME VARCHAR2(400),
  A_S_DIC_CODE VARCHAR2(20),
  CREATE_TIME  VARCHAR2(20),
  CREATE_BY    VARCHAR2(50),
  UPDATE_TIME  VARCHAR2(20),
  UPDATE_BY    VARCHAR2(50),
  REMARK       VARCHAR2(4000)
)
;
comment on table T_NEXUS_PAN
  is '产品与档案数据字典关系';
comment on column T_NEXUS_PAN.ID
  is '主键';
comment on column T_NEXUS_PAN.A_S_DIC_ID
  is '档案字典项内码';
comment on column T_NEXUS_PAN.P_S_DIC_ID
  is '产品字典项内码';
comment on column T_NEXUS_PAN.STATUS
  is '状态';
comment on column T_NEXUS_PAN.DIC_TYPE
  is '类型';
comment on column T_NEXUS_PAN.P_DIC_ID
  is '产品_数据类型ID';
comment on column T_NEXUS_PAN.P_DIC_NAME
  is '产品_数据类型名称';
comment on column T_NEXUS_PAN.P_DIC_CODE
  is '产品_数据类型编码';
comment on column T_NEXUS_PAN.P_S_DIC_NAME
  is '产品字典项名称';
comment on column T_NEXUS_PAN.P_S_DIC_CODE
  is '产品字典项编码';
comment on column T_NEXUS_PAN.A_DIC_ID
  is '档案字典项ID';
comment on column T_NEXUS_PAN.A_DIC_NAME
  is '档案字类型名称';
comment on column T_NEXUS_PAN.A_DIC_CODE
  is '档案字典类型编码';
comment on column T_NEXUS_PAN.A_S_DIC_NAME
  is '档案字典项名称';
comment on column T_NEXUS_PAN.A_S_DIC_CODE
  is '档案字典项编码';
comment on column T_NEXUS_PAN.CREATE_TIME
  is '创建时间';
comment on column T_NEXUS_PAN.CREATE_BY
  is '创建人';
comment on column T_NEXUS_PAN.UPDATE_TIME
  is '修改时间';
comment on column T_NEXUS_PAN.UPDATE_BY
  is '修改人';
comment on column T_NEXUS_PAN.REMARK
  is '备注';
alter table T_NEXUS_PAN
  add constraint PK_T_NEXUS_PAN primary key (ID);

prompt
prompt Creating table T_NEXUS_STANDARD_CAN
prompt ===================================
prompt
create table T_NEXUS_STANDARD_CAN
(
  ID            VARCHAR2(50) not null,
  C_S_DIC_ID    VARCHAR2(50),
  A_S_DIC_ID    VARCHAR2(50),
  STATUS        CHAR(1),
  DIC_TYPE      CHAR(1),
  C_DIC_ID      VARCHAR2(50),
  C_DIC_NAME    VARCHAR2(400),
  C_DIC_CODE    VARCHAR2(50),
  C_DIC_VERSION VARCHAR2(20),
  C_DIC_SCOPE   VARCHAR2(20),
  C_S_DIC_NAME  VARCHAR2(400),
  C_S_DIC_CODE  VARCHAR2(20),
  A_DIC_ID      VARCHAR2(50),
  A_DIC_NAME    VARCHAR2(400),
  A_DIC_CODE    VARCHAR2(50),
  A_S_DIC_NAME  VARCHAR2(400),
  A_S_DIC_CODE  VARCHAR2(20),
  CREATE_TIME   VARCHAR2(20),
  CREATE_BY     VARCHAR2(50),
  UPDATE_TIME   VARCHAR2(20),
  UPDATE_BY     VARCHAR2(50),
  REMARK        VARCHAR2(4000)
)
;
comment on table T_NEXUS_STANDARD_CAN
  is '正式_采集与档案数据字典关系';
comment on column T_NEXUS_STANDARD_CAN.ID
  is '主键';
comment on column T_NEXUS_STANDARD_CAN.C_S_DIC_ID
  is '采集字典项内码';
comment on column T_NEXUS_STANDARD_CAN.A_S_DIC_ID
  is '档案字典项内码';
comment on column T_NEXUS_STANDARD_CAN.STATUS
  is '状态';
comment on column T_NEXUS_STANDARD_CAN.DIC_TYPE
  is '类型';
comment on column T_NEXUS_STANDARD_CAN.C_DIC_ID
  is '采集_数据类型ID';
comment on column T_NEXUS_STANDARD_CAN.C_DIC_NAME
  is '采集_数据类型名称';
comment on column T_NEXUS_STANDARD_CAN.C_DIC_CODE
  is '采集_数据类型编码';
comment on column T_NEXUS_STANDARD_CAN.C_DIC_VERSION
  is '采集_版本';
comment on column T_NEXUS_STANDARD_CAN.C_DIC_SCOPE
  is '采集_适用范围';
comment on column T_NEXUS_STANDARD_CAN.C_S_DIC_NAME
  is '采集_字典项名称';
comment on column T_NEXUS_STANDARD_CAN.C_S_DIC_CODE
  is '采集_字典项编码';
comment on column T_NEXUS_STANDARD_CAN.A_DIC_ID
  is '档案_字典类型ID';
comment on column T_NEXUS_STANDARD_CAN.A_DIC_NAME
  is '档案_字类型名称';
comment on column T_NEXUS_STANDARD_CAN.A_DIC_CODE
  is '档案_字典类型编码';
comment on column T_NEXUS_STANDARD_CAN.A_S_DIC_NAME
  is '档案_字典项名称';
comment on column T_NEXUS_STANDARD_CAN.A_S_DIC_CODE
  is '档案_字典项编码';
comment on column T_NEXUS_STANDARD_CAN.CREATE_TIME
  is '创建时间';
comment on column T_NEXUS_STANDARD_CAN.CREATE_BY
  is '创建人';
comment on column T_NEXUS_STANDARD_CAN.UPDATE_TIME
  is '修改时间';
comment on column T_NEXUS_STANDARD_CAN.UPDATE_BY
  is '修改人';
comment on column T_NEXUS_STANDARD_CAN.REMARK
  is '备注';
alter table T_NEXUS_STANDARD_CAN
  add constraint PK_T_NEXUS_STANDARD_CAN primary key (ID);

prompt
prompt Creating table T_NEXUS_STANDARD_PAN
prompt ===================================
prompt
create table T_NEXUS_STANDARD_PAN
(
  ID           VARCHAR2(50) not null,
  A_S_DIC_ID   VARCHAR2(50),
  P_S_DIC_ID   VARCHAR2(50),
  STATUS       CHAR(1),
  DIC_TYPE     CHAR(1),
  P_DIC_ID     VARCHAR2(50),
  P_DIC_NAME   VARCHAR2(400),
  P_DIC_CODE   VARCHAR2(50),
  P_S_DIC_NAME VARCHAR2(400),
  P_S_DIC_CODE VARCHAR2(20),
  A_DIC_ID     VARCHAR2(50),
  A_DIC_NAME   VARCHAR2(400),
  A_DIC_CODE   VARCHAR2(50),
  A_S_DIC_NAME VARCHAR2(400),
  A_S_DIC_CODE VARCHAR2(20),
  CREATE_TIME  VARCHAR2(20),
  CREATE_BY    VARCHAR2(50),
  UPDATE_TIME  VARCHAR2(20),
  UPDATE_BY    VARCHAR2(50),
  REMARK       VARCHAR2(4000)
)
;
comment on table T_NEXUS_STANDARD_PAN
  is '正式_产品与档案数据字典关系表';
comment on column T_NEXUS_STANDARD_PAN.ID
  is '主键';
comment on column T_NEXUS_STANDARD_PAN.A_S_DIC_ID
  is '档案字典项内码';
comment on column T_NEXUS_STANDARD_PAN.P_S_DIC_ID
  is '产品字典项内码';
comment on column T_NEXUS_STANDARD_PAN.STATUS
  is '状态';
comment on column T_NEXUS_STANDARD_PAN.DIC_TYPE
  is '类型';
comment on column T_NEXUS_STANDARD_PAN.P_DIC_ID
  is '产品_数据类型ID';
comment on column T_NEXUS_STANDARD_PAN.P_DIC_NAME
  is '产品_数据类型名称';
comment on column T_NEXUS_STANDARD_PAN.P_DIC_CODE
  is '产品_数据类型编码';
comment on column T_NEXUS_STANDARD_PAN.P_S_DIC_NAME
  is '产品字典项名称';
comment on column T_NEXUS_STANDARD_PAN.P_S_DIC_CODE
  is '产品字典项编码';
comment on column T_NEXUS_STANDARD_PAN.A_DIC_ID
  is '档案字典项ID';
comment on column T_NEXUS_STANDARD_PAN.A_DIC_NAME
  is '档案字类型名称';
comment on column T_NEXUS_STANDARD_PAN.A_DIC_CODE
  is '档案字典类型编码';
comment on column T_NEXUS_STANDARD_PAN.A_S_DIC_NAME
  is '档案字典项名称';
comment on column T_NEXUS_STANDARD_PAN.A_S_DIC_CODE
  is '档案字典项编码';
comment on column T_NEXUS_STANDARD_PAN.CREATE_TIME
  is '创建时间';
comment on column T_NEXUS_STANDARD_PAN.CREATE_BY
  is '创建人';
comment on column T_NEXUS_STANDARD_PAN.UPDATE_TIME
  is '修改时间';
comment on column T_NEXUS_STANDARD_PAN.UPDATE_BY
  is '修改人';
comment on column T_NEXUS_STANDARD_PAN.REMARK
  is '备注';
alter table T_NEXUS_STANDARD_PAN
  add constraint PK_T_NEXUS_STANDARD_PAN primary key (ID);

prompt
prompt Creating table T_SIMILARITY_CONDITIONS
prompt ======================================
prompt
create table T_SIMILARITY_CONDITIONS
(
  ID      VARCHAR2(50) not null,
  COLID   VARCHAR2(850),
  C_NAME  VARCHAR2(400),
  E_NAME  VARCHAR2(400),
  MARK_ID VARCHAR2(50),
  REMARK  VARCHAR2(2000),
  BAK     VARCHAR2(50)
)
;
comment on table T_SIMILARITY_CONDITIONS
  is 'T_conditions';
alter table T_SIMILARITY_CONDITIONS
  add constraint PK_T_SIMILARITY_CONDITIONS primary key (ID);

prompt
prompt Creating table test_log
prompt =======================
prompt
create table test_log
(
  OPERATE_CONTENT VARCHAR2(4000),
  OPERATE_TIME    VARCHAR2(20),
  OPERATE_REMARK  VARCHAR2(4000)
)
;

prompt
prompt Creating sequence DIC_ID
prompt ========================
prompt
create sequence DIC_ID
minvalue 1000000
maxvalue 9999999999999999999999999999
start with 1001782
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_T_DATA_STANDARD_VERSION
prompt =============================================
prompt
create sequence SEQ_T_DATA_STANDARD_VERSION
minvalue 1
maxvalue 9999999999999999999999999999
start with 133
increment by 1
cache 20;

prompt
prompt Creating sequence T_DS_USE_SEQ
prompt ==============================
prompt
create sequence T_DS_USE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating view V_DIC_CONVERSION_ARCHIVES
prompt =======================================
prompt
CREATE OR REPLACE VIEW V_DIC_CONVERSION_ARCHIVES AS
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

prompt
prompt Creating view V_DIC_CONVERSION_COLLECTION
prompt =========================================
prompt
CREATE OR REPLACE VIEW V_DIC_CONVERSION_COLLECTION AS
SELECT
    row_number() over(ORDER BY dic_name ASC ,dic_version ASC,dic_scope ASC) level_id,
    DIC_ID,
    DIC_NAME,
    dic_code AS dic_code,
    DIC_VERSION,
    DIC_SCOPE,
    0      AS level_no,
    '-1'   AS parentId,
    DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_COLLECTION
GROUP BY
    DIC_ID,
    DIC_NAME,
    DIC_VERSION,
    DIC_SCOPE,
    dic_code,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID ORDER BY F_DIC_NAME ASC,F_DIC_CODE) AS level_id,
    F_DIC_ID                                                                  AS dic_id,
    F_DIC_NAME                                                                AS dic_name,
    F_DIC_CODE                                                                AS dic_code,
    DIC_VERSION                                                               AS DIC_VERSION,
    DIC_SCOPE                                                                 AS DIC_SCOPE,
    1                                                                         AS level_no,
    DIC_ID                                                                    AS parentId,
    DIC_ID||'--'||F_DIC_ID                                                    AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_COLLECTION
WHERE
    F_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    F_DIC_NAME,
    F_DIC_CODE,
    DIC_VERSION,
    DIC_SCOPE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID ORDER BY s_DIC_NAME ASC,s_DIC_CODE) AS level_id,
    s_DIC_ID                                                                           AS dic_id,
    s_DIC_NAME                                                                         AS dic_name,
    s_DIC_CODE                                                                         AS dic_code,
    DIC_VERSION                                                                        AS
                 DIC_VERSION,
    DIC_SCOPE                              AS DIC_SCOPE,
    2                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_COLLECTION
WHERE
    s_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    s_DIC_NAME,
    s_DIC_CODE,
    DIC_VERSION,
    DIC_SCOPE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID ORDER BY t_DIC_NAME ASC, t_DIC_CODE) AS
                level_id,
    t_DIC_ID                                               AS dic_id,
    t_DIC_NAME                                             AS dic_name,
    t_DIC_CODE                                             AS dic_code,
    DIC_VERSION                                           AS DIC_VERSION,
    DIC_SCOPE                                              AS DIC_SCOPE,
    3                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_COLLECTION
WHERE
    t_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    t_DIC_ID,
    t_DIC_NAME,
    t_DIC_CODE,
    DIC_VERSION,
    DIC_SCOPE,
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID,t_DIC_ID ORDER BY v_DIC_NAME ASC,
    v_DIC_CODE)                                            AS level_id,
    v_DIC_ID                                               AS dic_id,
    v_DIC_NAME                                             AS dic_name,
    v_DIC_CODE                                             AS dic_code,
    DIC_VERSION                                            AS DIC_VERSION,
    DIC_SCOPE                                              AS DIC_SCOPE,
    4                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID||'--'||v_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_COLLECTION
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
    DIC_VERSION,
    DIC_SCOPE,
    dic_type;

prompt
prompt Creating view V_DIC_CONVERSION_MANAGE
prompt =====================================
prompt
CREATE OR REPLACE VIEW V_DIC_CONVERSION_MANAGE AS
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
    T_dic_manage
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
    T_dic_manage
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
    T_dic_manage
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
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID ORDER BY t_DIC_NAME ASC, t_DIC_CODE) AS
                level_id,
    t_DIC_ID                                               AS dic_id,
    t_DIC_NAME                                             AS dic_name,
    t_DIC_CODE                                             AS dic_code,
    3                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_manage
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
    T_dic_manage
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
    dic_type
UNION
SELECT
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID,t_DIC_ID,v_DIC_ID ORDER BY i_DIC_NAME
    ASC, i_DIC_CODE)                                                             AS level_id,
    i_DIC_ID                                                                     AS dic_id,
    i_DIC_NAME                                                                   AS dic_name,
    i_DIC_CODE                                                                   AS dic_code,
    5                                                                            AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||'--'||t_DIC_ID||'--'||v_DIC_ID AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||'--'||t_DIC_ID||'--'||v_DIC_ID||'--'|| i_dic_id
    AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_manage
WHERE
    i_DIC_ID IS NOT NULL
GROUP BY
    DIC_ID,
    F_DIC_ID,
    s_DIC_ID,
    t_DIC_ID,
    v_DIC_ID,
    i_DIC_ID,
    i_DIC_NAME,
    i_DIC_CODE,
    dic_type;

prompt
prompt Creating view V_DIC_CONVERSION_PRODUCT
prompt ======================================
prompt
CREATE OR REPLACE VIEW V_DIC_CONVERSION_PRODUCT AS
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
    T_dic_product
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
    T_dic_product
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
    T_dic_product
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
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID ORDER BY t_DIC_NAME ASC, t_DIC_CODE) AS
                level_id,
    t_DIC_ID                                               AS dic_id,
    t_DIC_NAME                                             AS dic_name,
    t_DIC_CODE                                             AS dic_code,
    3                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_dic_product
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
    T_dic_product
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

prompt
prompt Creating view V_DIC_CONVERSION_RELATIONAL
prompt =========================================
prompt
CREATE OR REPLACE VIEW V_DIC_CONVERSION_RELATIONAL AS
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
    T_DIC_RELATIONAL
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
    T_DIC_RELATIONAL
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
    T_DIC_RELATIONAL
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
    row_number() over(partition BY DIC_ID,F_DIC_ID,s_DIC_ID ORDER BY t_DIC_NAME ASC, t_DIC_CODE) AS
                level_id,
    t_DIC_ID                                               AS dic_id,
    t_DIC_NAME                                             AS dic_name,
    t_DIC_CODE                                             AS dic_code,
    3                                                      AS level_no,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID                 AS parentId,
    DIC_ID||'--'||F_DIC_ID||'--'||s_DIC_ID||'--'||t_DIC_ID AS id,
    dic_type,
    MAX(status) AS status
FROM
    T_DIC_RELATIONAL
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
    T_DIC_RELATIONAL
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

prompt
prompt Creating view V_DIC_EXCEL_AD
prompt ============================
prompt
CREATE OR REPLACE VIEW V_DIC_EXCEL_AD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_ad
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_ad
        WHERE
            level_no='4' );

prompt
prompt Creating view V_DIC_EXCEL_CD
prompt ============================
prompt
CREATE OR REPLACE VIEW V_DIC_EXCEL_CD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_cd
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_cd
        WHERE
            level_no='4' );

prompt
prompt Creating view V_DIC_EXCEL_MD
prompt ============================
prompt
CREATE OR REPLACE VIEW V_DIC_EXCEL_MD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t5.dic_id   AS i_dic_id,
    t5.dic_name AS i_dic_Name,
    t5.dic_code AS i_dic_code,
    t5.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='5') t5
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='4') t4
ON
    t4.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
OR  t2.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
OR  t1.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
OR  t.id=t5.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
WHERE
    1=1
AND t4.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='4' )
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='4' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='4' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    '' AS i_dic_id,
    '' AS i_dic_Name,
    '' AS i_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_md
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='4' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_md
        WHERE
            level_no='5' );

prompt
prompt Creating view V_DIC_EXCEL_PD
prompt ============================
prompt
CREATE OR REPLACE VIEW V_DIC_EXCEL_PD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            t_dic_pd
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            t_dic_pd
        WHERE
            level_no='4' );

prompt
prompt Creating view V_DIC_STANDARD_EXCEL_AD
prompt =====================================
prompt
CREATE OR REPLACE VIEW V_DIC_STANDARD_EXCEL_AD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_AD
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_AD
        WHERE
            level_no='4' );

prompt
prompt Creating view V_DIC_STANDARD_EXCEL_CD
prompt =====================================
prompt
CREATE OR REPLACE VIEW V_DIC_STANDARD_EXCEL_CD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_CD
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_CD
        WHERE
            level_no='4' );

prompt
prompt Creating view V_DIC_STANDARD_EXCEL_MD
prompt =====================================
prompt
CREATE OR REPLACE VIEW V_DIC_STANDARD_EXCEL_MD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t5.dic_id   AS i_dic_id,
    t5.dic_name AS i_dic_Name,
    t5.dic_code AS i_dic_code,
    t5.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='5') t5
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='4') t4
ON
    t4.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
OR  t2.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
OR  t1.id=t5.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
OR  t.id=t5.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
WHERE
    1=1
AND t4.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='4' )
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='4' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    ''          AS i_dic_id,
    ''          AS i_dic_Name,
    ''          AS i_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='4' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='5' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    '' AS i_dic_id,
    '' AS i_dic_Name,
    '' AS i_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_MD
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='4' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_MD
        WHERE
            level_no='5' );

prompt
prompt Creating view V_DIC_STANDARD_EXCEL_PD
prompt =====================================
prompt
CREATE OR REPLACE VIEW V_DIC_STANDARD_EXCEL_PD AS
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    t4.dic_id   AS v_dic_id,
    t4.dic_name AS v_dic_Name,
    t4.dic_code AS v_dic_code,
    t4.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='4') t4
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='3')t3
ON
    t3.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
OR  t2.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
OR  t1.id=t4.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
OR  t.id=t4.parentid
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    t3.dic_id   AS t_dic_id,
    t3.dic_name AS t_dic_name,
    t3.dic_code AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t3.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='3')t3
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='2')t2
ON
    t2.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
OR  t1.id=t3.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
OR  t.id=t3.parentid
WHERE
    1=1
AND t3.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    t2.dic_id   AS s_dic_id,
    t2.dic_name AS s_dic_name,
    t2.dic_code AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t2.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='2')t2
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='1')t1
ON
    t1.id=t2.parentid
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
OR  t.id=t2.parentid
WHERE
    1=1
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='3' )
AND t2.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    t1.dic_id   AS f_dic_id,
    t1.dic_name AS f_dic_name,
    t1.dic_code AS f_dic_code,
    ''          AS s_dic_id,
    ''          AS s_dic_name,
    ''          AS s_dic_code,
    ''          AS t_dic_id,
    ''          AS t_dic_name,
    ''          AS t_dic_code,
    ''          AS v_dic_id,
    ''          AS v_dic_Name,
    ''          AS v_dic_code,
    t1.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='1')t1
LEFT JOIN
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='0') t
ON
    t.id=t1.parentid
WHERE
    1=1
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='2' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='3' )
AND t1.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='4' )
UNION
SELECT
    t.dic_id,
    t.dic_name,
    t.dic_code,
    t.dic_version,
    t.dic_scope,
    t.dic_type,
    '' AS f_dic_id,
    '' AS f_dic_name,
    '' AS f_dic_code,
    '' AS s_dic_id,
    '' AS s_dic_name,
    '' AS s_dic_code,
    '' AS t_dic_id,
    '' AS t_dic_name,
    '' AS t_dic_code,
    '' AS v_dic_id,
    '' AS v_dic_Name,
    '' AS v_dic_code,
    t.status
FROM
    (
        SELECT
            *
        FROM
            T_DIC_STANDARD_PD
        WHERE
            1=1
        AND level_no='0' ) t
WHERE
    1=1
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='1' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='2' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='3' )
AND t.id NOT IN
    (
        SELECT
            parentId
        FROM
            T_DIC_STANDARD_PD
        WHERE
            level_no='4' );


spool off
