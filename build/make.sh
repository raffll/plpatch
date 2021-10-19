#!/bin/bash

NAME=plpatch
DIR="."
DICT="../ENtoPL_plpatch"

if [ -e "$NAME.zip" ]; then
	rm "$NAME.zip"
fi

"$DIR/yampt.exe" --create -f "master/Morrowind.esm" -d "${DICT}.xml"
"$DIR/yampt.exe" --create -f "master/Tribunal.esm" -d "${DICT}.xml"
"$DIR/yampt.exe" --create -f "master/Bloodmoon.esm" -d "${DICT}.xml"

mv "Morrowind.CREATED.esm" "Morrowind [plpatch].esm"
mv "Tribunal.CREATED.esm" "Tribunal [plpatch].esm"
mv "Bloodmoon.CREATED.esm" "Bloodmoon [plpatch].esm"
cp "../README.md" .
cp "../ENtoPL_plpatch.xml" .
cp "../CHANGES.htm" .

sed -i "s|C:\TODO\Gry\Morrowind\!git\plpatch\ENtoPL.xml|VANILLA|g" "CHANGES.htm"
sed -i "s|C:\TODO\Gry\Morrowind\!git\plpatch\ENtoPL_plpatch.xml|PATCH|g" "CHANGES.htm"

zip "$NAME.zip" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "README.md" "ENtoPL_plpatch.xml" "CHANGES.htm"

rm "yampt.log" "Morrowind [plpatch].esm" "Tribunal [plpatch].esm" "Bloodmoon [plpatch].esm" "README.md" "ENtoPL_plpatch.xml" "CHANGES.htm"

