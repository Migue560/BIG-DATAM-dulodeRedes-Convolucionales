
@echo off
REM iniciar.bat - intenta iniciar servidor HTTP con python, si no está, abre index.html directamente.
cd /d "%~dp0"
echo Iniciando servidor local...
python -m http.server 8000 2>nul
if %ERRORLEVEL%==0 (
  start http://localhost:8000/inventario/
  echo Servidor iniciado en http://localhost:8000/inventario/
  pause
  goto :eof
) else (
  echo Python no disponible o el comando fallo. Abriendo index.html directamente (puede impedir la carga del modelo por CORS).
  start index.html
  pause
)
