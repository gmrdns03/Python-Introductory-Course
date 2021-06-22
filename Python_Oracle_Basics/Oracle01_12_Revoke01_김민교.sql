SQL> conn angel/angel;
Connected.
SQL> show user
USER is "ANGEL"
SQL> conn /as sysdba;
Connected.
SQL> revoke dba from angel;

Revoke succeeded.

SQL> conn angel/angel;
ERROR:
ORA-01045: user ANGEL lacks CREATE SESSION privilege; logon denied


Warning: You are no longer connected to ORACLE.
SQL> conn /as sysdba;
Connected.
SQL> drop user angel;

User dropped.

SQL> select username from all_users;

USERNAME
------------------------------------------------------------
XS$NULL
APEX_040000
APEX_PUBLIC_USER
FLOWS_FILES
HR
MDSYS
ANONYMOUS
XDB
CTXSYS
APPQOSSYS
DBSNMP
ORACLE_OCM
DIP
OUTLN
SYSTEM
SYS

16 rows selected.