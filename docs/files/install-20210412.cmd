@echo off
powershell (new-object System.Net.WebClient).DownloadFile( 'https://github.com/iTXTech/mcl-installer/releases/download/2827601/mcl-installer-2827601-windows-amd64.exe','mcl-installer.exe')
del input.txt
REM ��װ Java
echo Y >> input.txt
REM ʹ�� Java 11
echo 11 >> input.txt
REM ʹ�� JRE
echo 1 >> input.txt
REM ʹ�� 32 λ JRE �ļ�������ϵͳ, Ҳ�������Ҫ�� mirai-native
echo x32 >> input.txt
echo Y >> input.txt
echo Y >> input.txt
echo Y >> input.txt
echo Y >> input.txt
echo Y >> input.txt
echo Y >> input.txt
mcl-installer.exe < input.txt
del input.txt
del mcl-installer.exe
cmd /c mcl.cmd --update-package net.mamoe:mirai-api-http --channel stable --type plugin
echo
echo
echo ��װ�ɹ�, �Ժ�ִ�� mcl.cmd �������� Mirai Console
echo Installation succeed. Run mcl.cmd to start Mirai Console.
pause