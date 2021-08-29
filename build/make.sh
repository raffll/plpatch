#!/bin/bash

NAME=plpatch
DIR="../../yampt"
DICT="../ENtoPL_plpatch"

if [ -e "$NAME" ]; then
	rm -r "$NAME"
	rm "$NAME.zip"
fi

mkdir "$NAME"

"$DIR/x64/Release/yampt.exe" --create -f "master/Morrowind.esm" -d "${DICT}.xml"
"$DIR/x64/Release/yampt.exe" --create -f "master/Tribunal.esm" -d "${DICT}.xml"
"$DIR/x64/Release/yampt.exe" --create -f "master/Bloodmoon.esm" -d "${DICT}.xml"

mv "Morrowind.CREATED.esm" "Morrowind [plpatch].esm"
mv "Tribunal.CREATED.esm" "Tribunal [plpatch].esm"
mv "Bloodmoon.CREATED.esm" "Bloodmoon [plpatch].esm"

zip -r "$NAME.zip" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm"

rm "yampt.log" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm"

