create or replace directory PMTOEDWDATA as '/pmb';   
grant read,write on directory PMTOEDWDATA to prdpmb;   
GRANT EXECUTE ON utl_file TO prdpmb;  
