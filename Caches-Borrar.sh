#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#--------------------------------------------------
#  Script de NiPeGun para borrar todos los cachés
#--------------------------------------------------

echo ""
echo "  Borrando todo el contenido de /S/L/C..."
echo ""
sudo find /System/Library/Caches/ -type f -exec rm -rf {} \; 2> /dev/null
sudo find /System/Library/Caches/ -type d -exec rm -rf {} \; 2> /dev/null

echo ""
echo "  Borrando todo el contenido de /L/C..."
echo ""
sudo find /Library/Caches/ -type f -exec rm -rf {} \; 2> /dev/null
sudo find /Library/Caches/ -type d -exec rm -rf {} \; 2> /dev/null

echo ""
echo "  Borrando todo el contenido de ~/Library/Caches/..."
echo ""
sudo find ~/Library/Caches/ -type f -exec rm -rf {} \; 2> /dev/null
sudo find ~/Library/Caches/ -type d -exec rm -rf {} \; 2> /dev/null

echo ""
echo "  Reparando permisos..."
echo ""
sudo chmod -Rf 755 /S*/L*/E*
sudo chmod -Rf 755 /L*/E*
sudo chown -Rf 0:0 /S*/L*/E*
sudo chown -Rf 0:0 /L*/E*

