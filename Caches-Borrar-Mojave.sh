#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#----------------------------------------------------------------------------
#  Script de NiPeGun para borrar todos los caches en MacOS 10.14.x (Mojave)
#----------------------------------------------------------------------------

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

echo ""
echo -e "${ColorVerde}  Borrando cachés de Mojave...${FinColor}"
echo ""

echo ""
echo "  Borrando el cache de DNS..."
echo ""
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo ""
echo "  Borrando todo el cache del usuario..."
echo ""
#mv ~/Library/Caches/* ~/.Trash/
find ~/Library/Caches/ -type d -exec rm -rf {} \;
find ~/Library/Caches/ -type f -exec rm -rf {} \;

echo ""
echo "  Borrando todo el cache del sistema..."
echo ""
#sudo rm -rf /System/Library/Caches
sudo find /System/Library/Caches/ -type d -exec rm -rf {} \;
sudo find /System/Library/Caches/ -type f -exec rm -rf {} \;

echo ""
echo "  Borrando el cache del kernel..."
echo ""
