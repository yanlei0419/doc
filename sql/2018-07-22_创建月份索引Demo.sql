--创建按月份索引

  PARTITION BY RANGE (create_time)
   INTERVAL ( NUMTOYMINTERVAL (1, 'MONTH') )
   (PARTITION create_time VALUES LESS THAN (to_timestamp('2014-11-1', 'yyyy-mm-dd')))