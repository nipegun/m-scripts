#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#---------------------------------------------------------------------
#  Script de NiPeGun para agregar un atributo extendido a un archivo
#---------------------------------------------------------------------

# Borrar todo el contenido de /S/L/E
sudo find /System/Library/Caches/* -type d -exec rm -rf {} \;
sudo find /System/Library/Caches/* -type f -exec rm -rf {} \;

# Borrar todo el contenido de /L/E
sudo find /Library/Caches/* -type d -exec rm -rf {} \;
sudo find /Library/Caches/* -type f -exec rm -rf {} \;

# Borrar todo el contenido de ~/Library/Caches/
sudo find ~/Library/Caches/* -type d -exec rm -rf {} \;
sudo find ~/Library/Caches/* -type f -exec rm -rf {} \;

# Reparar permisos
sudo chmod -Rf 755 /S*/L*/E*
sudo chmod -Rf 755 /L*/E*
sudo chown -Rf 0:0 /S*/L*/E*
sudo chown -Rf 0:0 /L*/E*

