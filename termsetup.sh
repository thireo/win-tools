read -p "You didn't just ran me without admin privileges, did you?"

echo "Okay fine. I'll go ahead then."
#cat .bashrc >> ~/.bashrc
#echo Appended .bashrc to USERPROFILE



#rm -rf wt.reg
#echo 'Windows Registry Editor Version 5.00' >> wt.reg
#echo '' >> wt.reg
#echo '[HKEY_CLASSES_ROOT\Directory\Background\shell\wt]' >> wt.reg
#echo '@="Terminal here"' >> wt.reg
#echo '"Icon"="C:\\Program Files\\Git\\git-bash.exe"' >> wt.reg
#echo '' >> wt.reg
#echo '[HKEY_CLASSES_ROOT\Directory\Background\shell\wt\command]' >> wt.reg
#printf '@=\"\\\"C:\\\\Users\\\\%s\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps\\\\wt.exe\\\" \\\"-d\\\" \\\"%%v.\\\"\"' $USERNAME >> wt.reg

echo "Importing new wt.reg file"
regedit -S wt.reg
regedit -S wte.reg
echo "Damn I'm good!"
