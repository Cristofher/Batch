@echo off
set FECHA=%date%
set dia=%date:~0,2%
set mes=%date:~3,2%
set ano=%date:~6,4%
set nombre=%mes%%ano%
set FECHA_Nueva=%dia%%nombre%
set FILE=C:\\Backups\\%nombre%\\Backup%FECHA_Nueva%.sql 

/// Comentarios
//C:/xampp/mysql/bin/mysqldump.exe ruta de mysqldump.exe que permite realizar backup
//localhost Ubicación base de dato, puede ser localhost o ip de enlace a conección local
//-uuser usuario Ejemplo -uMicuenta
//-ppassword contraseña Ejemplo _uMicontraseña
// Base de datos a realizar backup, es configurable y se pueden extraer todas las bases de datos locales en un mismo archivo.sql
//--add-drop-database --triggers --force --routines opciones añadiñas, puede ser consideraras o no, buscar en documentación la referencia de cada una

///Fin comentarios

C:/xampp/mysql/bin/mysqldump.exe -h localhost -uuser -ppassword -r %FILE% basededato --create-options --add-drop-database --triggers --force --routines
echo "Respaldo realizado"
