:startup
taskkill /f /im explorer.exe
TASKLIST | FINDSTR mshta.exe || START "" "C:\Users\ETKullanici\AMDForce\data\hide2.vbs"
:pasif
set label=yanlis
ping -n 3 127.0.0.1 > nul
for /f "tokens=6" %%I in (' Vol F: ') do ( set label=%%I)
set test= '
if %test%==%label% goto aktif
for /f "tokens=6" %%I in (' Vol G: ') do ( set label=%%I)
set test= '
if %test%==%label% goto aktif
goto startup
:aktif
taskkill /f /im mshta.exe
taskkill /f /im wscript.exe
ping -n 4 127.0.0.1 > nul
TASKLIST | FINDSTR explorer.exe || START "" "C:\Users\ETKullanici\AMDForce\data\explorer.bat"
goto pasif