@echo off
cd %USERPROFILE%
mkdir gits
cd gits
pwd 
git clone git@github.com:Digi-Key/digikey-kicad-library.git
git clone git@github.com:KiCad/kicad-footprints.git
git clone git@github.com:KiCad/kicad-symbols.git
git clone git@github.com:KiCad/kicad-packages3d.git

echo Change KICAD_SYMBOL_DIR, KISYSMOD and KISYS3DMOD to ~/gits/xxxxx
