::Resarting QuickBook Services

powershell -window hidden -command ""
@ECHO Off
::First the QB Monitor Service
net stop "QBCFMonitorService"
timeout 2 /nobreak
net start "QBCFMonitorService"

timeout 2 /nobreak

::Second the QBIDPService
net stop "QBIDPService"
timeout 2 /nobreak
net start "QBIDPService"
timeout 2 /nobreak

::Now the QB Database Manager
net stop "QuickBooksDB29"
timeout 2 /nobreak
net start "QuickBooksDB29"


::Creates a txt file that confirms stop and starting of services - must already have folder created

echo %date% %time% QBCFMonitorService service stopped >> C:/batch/QBServices.txt
echo %date% %time% QBCFMonitorService service started >> C:/batch/QBServices.txt
echo %date% %time% QBIDPService service stopped >> C:/batch/QBServices.txt
echo %date% %time% QBIDPService service started >> C:/batch/QBServices.txt
echo %date% %time% QuickBooksDB29 service stopped >> C:/batch/QBServices.txt
echo %date% %time% QuickBooksDB29 service stopped >> C:/batch/QBServices.txt

