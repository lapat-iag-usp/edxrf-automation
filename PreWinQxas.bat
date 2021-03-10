::Add the local address before use
:: automatizar local do arquivo
:: executavel precisa de fortran?
@echo off
set mypath=%~dp0
cd %mypath:~0,-1%
dir *.csv/b > list.txt
(
echo S
echo list.txt
) | converte_xrf_spe.exe
DEL list.txt