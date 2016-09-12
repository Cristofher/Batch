@echo off
	set var=%date:~6,4%
	set /a var=%var% -1
if "%date:~3,2%"=="01" (
	rd /s /q "11%var%"
	)
if "%date:~3,2%"=="02" (
	rd /s /q "12%var%"
	)
if "%date:~3,2%"=="03" (
	rd /s /q "01%date:~6,4%"
	)
if "%date:~3,2%"=="04" (
	rd /s /q "02%date:~6,4%"
	)
if "%date:~3,2%"=="05" (
	rd /s /q "03%date:~6,4%"
	)
if "%date:~3,2%"=="06" (
	rd /s /q "04%date:~6,4%"
	)
if "%date:~3,2%"=="07" (
	rd /s /q "05%date:~6,4%"
	)
if "%date:~3,2%"=="08" (
	rd /s /q "06%date:~6,4%"
	)
if "%date:~3,2%"=="09" (
	rd /s /q "07%date:~6,4%"
	)
if "%date:~3,2%"=="10" (
	rd /s /q "08%date:~6,4%"
	)
if "%date:~3,2%"=="11" (
	rd /s /q "09%date:~6,4%"
	)
if "%date:~3,2%"=="12" (
	rd /s /q "10%date:~6,4%"
	)
