# Acceso fijo al portal remoto

Sitio estático mínimo que conserva una URL pública estable en Render y redirige
al Cloudflare Quick Tunnel vigente del computador de casa.

El supervisor local valida el túnel y publica únicamente `public/target.json` en
esta rama privada. Render invalida su CDN y la página fija empieza a enviar al
nuevo destino. El acceso de Git usa el Administrador de credenciales de Windows;
no se guardan tokens en los scripts ni en la configuración del portal.

El sitio estático no usa horas de instancia. Solo consume una pequeña cantidad
de ancho de banda y minutos de pipeline cuando realmente cambia el túnel. Las
contraseñas del portal y de VNC nunca pasan por Render ni por este repositorio.
