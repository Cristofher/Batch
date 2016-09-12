@Echo off
set FECHA=%date%
set mes=%date:~3,2%
set ano=%date:~6,4%
set nombre=%mes%%ano%
echo %nombre%


cd "C:\"
IF EXIST "C:\Backups" (
	echo "Existe Backups"
		IF not EXIST "C:\Backups\%nombre%" (
		cd "C:\Backups\"
		echo "No existe C:\Backups\%nombre%"
		md ""
		echo "Creada C:\Backups\%nombre%"
		cd "C:\Backups\"
	)
	IF EXIST "C:\Backups\%nombre%" (
		cd "C:\Backups\%nombre%"
		copy "C:\respaldar.bat" "C:\Backups\%nombre%\respaldar.bat"
		call respaldar.bat
        cd "C:\Backups"
        copy "C:\errasebackupsold.bat" "C:\Backups\errasebackupsold.bat"
		call errasebackupsold.bat	
	)


)

IF not EXIST "C:\Backups" (
	echo "No existe carpeta de Backups"
	md "Backups"
	IF not EXIST "C:\Backups\%nombre%" (
		cd "C:\Backups\"
		echo "No existe C:\Backups\%nombre%"
		md "%nombre%"
		echo "Creada C:\Backups\%nombre%"
		cd "C:\"
		call respaldo.bat
	)

)

