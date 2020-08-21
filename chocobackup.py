import subprocess

listOfPackages = []
bob = subprocess.run(['choco','list','--local-only','-r'],capture_output=True)
stdout = bob.stdout.decode('utf-8').split('\n')
for package in stdout:
    temp = package.split('|')[0]
    if(not '.install' in temp and temp != '' and temp):
        listOfPackages.append(package.split('|')[0])


#print(listOfPackages)

file = open('choco-backup.awesome','w')
file.write('@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"')

for package in listOfPackages:
    print('%s'%package)
    file.writelines('\nchoco install %s -y'%package)

file.close()

