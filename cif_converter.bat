for /r %%i in (*)
do
  C:\path_where_VESTA_is_stored\VESTA -nogui -i %%i -o format=cif %%~ni.cif
