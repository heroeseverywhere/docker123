$env:path += ";."

ECHO  "1. Invoking Interaface"

Test_Controller.exe T3ODE-SQL-F07 Facets1xc gurusamys qModGIAa

ECHO "2. Invoking Stored Procedure"

SQLCMD -S T3ODE-SQL-F07  -d Facets1xc  -U gurusamys -P qModGIAa -Q "EXEC tpzp_cust_grgr_act"


ECHO "3. Invoking Core Batch Job"

C:\Windows\System32\cscript.exe C:\Facets\System\Bin64\ErSys0FrmExecuteJob.wsf --runbook=ErCmcRunElig.xml
