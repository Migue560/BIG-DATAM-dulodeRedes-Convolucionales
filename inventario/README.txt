
Inventario automático - Demo local (modo simulación si no hay modelo TFLite válido)
==========================================================================

Contenido de la carpeta 'inventario':
- index.html    : Interfaz web en español
- script.js     : Lógica de carga del modelo y simulación
- style.css     : Estilos
- model/modelo.tflite : Archivo placeholder (si pones un TFLite válido aquí, se intentará usar detección real)
- iniciar.bat   : Intenta iniciar un servidor local con Python. Si Python no está instalado, abre index.html directamente.
- README.txt    : Este archivo

Cómo usar:
1) Descomprime el ZIP y entra en la carpeta 'inventario'.
2) Ejecuta 'iniciar.bat' con doble clic.
   - Si tienes Python instalado y en el PATH, el script lanzará: python -m http.server 8000
     y abrirá tu navegador en: http://localhost:8000/inventario/
   - Si NO tienes Python, el script abrirá index.html directamente (archivo://). En ese caso,
     la carga de un modelo TFLite puede fallar por restricciones CORS; la aplicación usará la simulación en su lugar.
3) En la página, pulsa "Elegir archivo" para subir una imagen .jpg o .png de tu salón de cómputo.
4) Pulsa "Detectar y Contar". Verás recuadros azules numerados (modo simulación o real si hay modelo).

Reemplazar por un modelo TFLite real:
- Si más adelante dispones de un modelo TFLite válido, reemplaza model/modelo.tflite por tu archivo real.
- Reinicia la página y la aplicación intentará cargar el modelo para realizar detección real.

Notas:
- Interfaz completamente en español.
- El modo simulación permite verificar la UI y la lógica de conteo sin un modelo real.
