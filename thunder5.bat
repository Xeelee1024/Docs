ren {cm_ComDllsPath} ComDlls
ren {cm_ComponentsPath} Components
ren {cm_LanguagesPath} Languages
ren {cm_ProgramPath} Program
ren {cm_SkinsPath} Skins
rd /s/q Components
rd /s/q Languages
rd /s/q Plugins
rd /s/q Skins

cd Program
del Baidu*
del bd.dll
del bootstrap*
del BugReport.exe
del checkfilemd5.ini
del CrackFW.exe
del dhtnodes.dat
del download.cfg
del DSConvert.dll
rem del emule_id.dll
del id.dat
del ipfilter.dat
del KanKan.ico
del LanguageSetter.exe
del LiveUpdate.dll
del nodes.dat
del register*
del RegLicense*
del SCID.dat
del server*
del SetupHelper.exe
del SpecialSite.ini
del stat.dat
del stream.dll
del takeown.bat
del Thunder.ico
del Thunder_cfg.ini
del Whatsnew.txt
del xldc*
del xlvdt*

cd Ad
del 002.gif
copy new.gif 002.gif

cd ..
cd ..
cd ComDlls
rd /s/q skin
