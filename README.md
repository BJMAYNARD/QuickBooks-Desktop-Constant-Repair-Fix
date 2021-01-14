# QuickBooks-Desktop-Constant-Repair-Fix

About:

As a system admin or someone who helps companies with QuickBooks Desktop versions, 
it has been a baine of my existance to always have to either get the QuickBooks Database Manager started on the 
server or desktop of which the files are bing shared out. The constant "network fix", or rebooting of the
computer that is hosting the file. 

After many mweeks of research and trial and error in writing a Python program to do this - only to learn that
QuickBooks constantly changes the "Scan" button location. So with advoce from a friend - I looked into the
services that QB was using and noticed that Windows had stopped them after so long. 

There are three main services that QB relies on that I noticed. In this script:
QBFMonitorService, QBIDPService, and QuickBooksDBxx (xx meaning the version number associated with it) were the services
that seemed to either get stuck or just crashed in Windows preventing users from entering multi-user mode.

Now yes - when QB updates and this scripts no longer works - it would be due to the QuickBooksDB version changing. 
Simply go back into the script and change it to the newest version DB. 

I currently have this simple script running in multiple locations - with differnet versions of the DB running.

I created a folder in the root of C:drive where the database files is so that I can verify that the services
have been stopped and restarted again - all with dates and times in a text file. After about 3 months - I clear
out the text file and it is recreated with the next run of the script.

Every company will be different but if you create this script in task scheduler with admin rights - say around 6am -
even when the admin is not logged into the server at the time - you will get less calls about not getting into multi-user mode.
