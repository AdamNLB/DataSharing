Powershell.exe -executionpolicy remotesigned -File  removeOld.ps1
timeout /t 10
cd /d "%LOCALAPPDATA%\Android\Sdk\emulator"
start emulator @Pixel_4_API_33 -no-snapshot-load
timeout /t 120
cd /d "%USERPROFILE%\IdeaProjects\NLB-Group-Retail-Web"
timeout /t 2
java -jar "%USERPROFILE%\IdeaProjects\NLB-Group-Retail-Web\NLBTestAutomation-1.0-SNAPSHOT.jar"
timeout /t 60
cd /d "%LOCALAPPDATA%\Android\Sdk\emulator"
adb -s emulator-5554 emu kill
timeout /t 120