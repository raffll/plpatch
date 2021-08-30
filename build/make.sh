#!/bin/bash

NAME=plpatch
DIR="../../yampt"
DICT="../ENtoPL_plpatch"

if [ -e "$NAME.zip" ]; then
	rm "$NAME.zip"
fi

"$DIR/x64/Release/yampt.exe" --create -f "master/Morrowind.esm" -d "${DICT}.xml"
"$DIR/x64/Release/yampt.exe" --create -f "master/Tribunal.esm" -d "${DICT}.xml"
"$DIR/x64/Release/yampt.exe" --create -f "master/Bloodmoon.esm" -d "${DICT}.xml"

mv "Morrowind.CREATED.esm" "Morrowind [plpatch].esm"
mv "Tribunal.CREATED.esm" "Tribunal [plpatch].esm"
mv "Bloodmoon.CREATED.esm" "Bloodmoon [plpatch].esm"
cp "../readme.md" .

zip "$NAME.zip" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "readme.md"

rm "yampt.log" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "readme.md"

