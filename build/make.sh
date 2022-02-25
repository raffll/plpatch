#!/bin/bash

VER=""
NAME="plpatch"
DICT="ENtoPL_plpatch${VER}.xml"

if [ -e "$NAME.zip" ]; then
	rm "$NAME.zip"
fi

"./yampt.exe" --create -f "master/Morrowind.esm" -d "$DICT"
"./yampt.exe" --create -f "master/Tribunal.esm" -d "$DICT"
"./yampt.exe" --create -f "master/Bloodmoon.esm" -d "$DICT"

mv "Morrowind.CREATED.esm" "Morrowind [plpatch].esm"
mv "Tribunal.CREATED.esm" "Tribunal [plpatch].esm"
mv "Bloodmoon.CREATED.esm" "Bloodmoon [plpatch].esm"

zip "$NAME.zip" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "plpatch.bat" "README.pdf" "yampt.exe" "CHANGELOG.htm" "ENtoPL_plpatch${VER}_DIAL.xml" "ENtoPL_plpatch${VER}_CELL.xml" "ENtoPL_plpatch${VER}.xml"
