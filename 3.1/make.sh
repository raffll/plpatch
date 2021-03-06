#!/bin/bash

VER="3.1"
NAME="plpatch"
DICT="ENtoPL_plpatch.xml"

if [ -e "$NAME.zip" ]; then
	rm "$NAME.zip"
fi

"./yampt.exe" --create -f "../master/Morrowind.esm" -d "$DICT"
"./yampt.exe" --create -f "../master/Tribunal.esm" -d "$DICT"
"./yampt.exe" --create -f "../master/Bloodmoon.esm" -d "$DICT"

mv "Morrowind.CREATED.esm" "Morrowind [plpatch].esm"
mv "Tribunal.CREATED.esm" "Tribunal [plpatch].esm"
mv "Bloodmoon.CREATED.esm" "Bloodmoon [plpatch].esm"

zip "$NAME.zip" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "plpatch.bat" "README.pdf" "yampt.exe" "CHANGES.htm" "CHANGES_CELL.htm" "CHANGES_DIAL.htm" "ENtoPL_plpatch_DIAL.xml" "ENtoPL_plpatch_CELL.xml" "ENtoPL_plpatch.xml"
