@echo off

setlocal enabledelayedexpansion enableextensions

set ESM=
for %%f in ("*.esp", "*.esm") do set ESM=!ESM! "%%f"
set ESM=%ESM:~1%

yampt.exe --convert -f %ESM% -d "ENtoPL_plpatch_CELL.xml" "ENtoPL_plpatch_DIAL.xml"

pause
