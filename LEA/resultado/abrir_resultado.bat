@echo off

REM Comprueba si se ha proporcionado un directorio como argumento
if [%1] == [] (
    echo Debe especificar un directorio como argumento.
    goto :EOF
)

REM Cambia al directorio especificado
cd %1

REM Ejecuta el comando de Graphviz
dot resultado_analisis.dot -o resultado_analisis.png -Tpng
if %errorlevel% equ 0 (
  start resultado_analisis.png
  echo "IMAGEN REALIZADA CON EXITO"
) else (
  del resultado_analisis.png
  echo "ERROR AL CONVERTIR A DOT"
  start resultado_analisis.dot
)

:EOF
