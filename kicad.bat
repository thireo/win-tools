@echo off
cd %USERPROFILE%
mkdir gits
cd gits
pwd 
git clone git@github.com:Digi-Key/digikey-kicad-library.git
git clone git@github.com:KiCad/kicad-footprints.git
git clone git@github.com:KiCad/kicad-symbols.git
git clone git@github.com:KiCad/kicad-packages3d.git

setx -m KICAD_SYMBOL_DIR "%USERPROFILE%\gits\kicad-symbols"
setx -m KISYSMOD "%USERPROFILE%\gits\kicad-footprints"
setx -m KISYS3DMOD "%USERPROFILE%\gits\kicad-packages3d"
