@echo off
echo Fetching system and user environment variables
regedit -e "my_system_env_variables.reg" "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
regedit -e "my_user_env_variables.reg" "HKEY_CURRENT_USER\Environment"
echo done
