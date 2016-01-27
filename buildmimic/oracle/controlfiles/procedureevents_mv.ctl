OPTIONS (
skip=1,
errors=0,
direct=true,
multithreading=true 
)
LOAD DATA
INFILE 'PROCEDUREEVENTS_MV.csv' "str '\n'"
BADFILE 'logfile.bad'
DISCARDFILE 'logfile.discard'
APPEND
INTO TABLE services
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING nullcols
(
ROW_ID, 
SUBJECT_ID,
HADM_ID,
ICUSTAY_ID,
STARTTIME DATE "YYYY-MM-DD HH24:MI:SS",
ENDTIME DATE "YYYY-MM-DD HH24:MI:SS",
ITEMID,
VALUE,
VALUEUOM,
LOCATION,
LOCATIONCATEGORY,
STORETIME DATE "YYYY-MM-DD HH24:MI:SS",
CGID,
ORDERID,
LINKORDERID,
ORDERCATEGORYNAME,
SECONDARYORDERCATEGORYNAME,
ORDERCATEGORYDESCRIPTION,
ISOPENBAG,
CONTINUEINNEXTDEPT,
CANCELREASON,
STATUSDESCRIPTION,
COMMENTS_EDITEDBY,
COMMENTS_CANCELEDBY,
COMMENTS_DATE  DATE "YYYY-MM-DD HH24:MI:SS"
)