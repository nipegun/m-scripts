#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para borrar todos los caches en MacOS 10.14.x (Mojave)
#
# Ejecución remota:
#   sudo curl -sL https://raw.githubusercontent.com/nipegun/m-scripts/master/Caches-Borrar-Mojave.sh | bash
# ----------

cColorRojo='\033[1;31m'
cColorVerde='\033[1;32m'
cFinColor='\033[0m'

echo ""
echo -e "${cColorVerde}  Borrando cachés de Mojave...${cFinColor}"
echo ""

echo ""
echo "    Borrando el cache de DNS..."
echo ""
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo ""
echo "    Borrando todo el cache del usuario..."
echo ""
#mv ~/Library/Caches/* ~/.Trash/
find ~/Library/Caches/ -type f -print -exec rm -rf {} \; 2> /dev/null
find ~/Library/Caches/ -type d -print -exec rm -rf {} \; 2> /dev/null

echo ""
echo "    Borrando todo el cache del sistema..."
echo ""
#sudo rm -rf /System/Library/Caches
sudo find /System/Library/Caches/ -type f -print -exec rm -rf {} \; 2> /dev/null
sudo find /System/Library/Caches/ -type d -print -exec rm -rf {} \; 2> /dev/null

echo ""
echo "    Borrando el cache del kernel..."
echo ""
