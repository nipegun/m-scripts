#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#--------------------------------------------------
#  Script de NiPeGun para borrar todos los cachés ( -- Script No funcional, todavía)
#--------------------------------------------------

#Mojave
sudo kextcache -prelinked-kernel
sudo kextcache -system-prelinked-kernel
sudo kextcache -system-caches

#sudo kextcache -update-volume /

# Reconstruir la cache
#sudo kextcache -i /

#sudo touch /System/Library/Extensions/
#sudo kextcache -update-volume /


# Actualizar el cache de /S/L/E y /L/E (No advierte de Kext con firma incorrecta)
#sudo kextcache -system-prelinked-kernel

# (SI avierte de Kext con firma incorrecta)
#sudo kextcache -prelinked-kernel

# Rebuild the info caches for system kexts on the root volume
#sudo kextcache -system-caches

# Según recomendación de Apple (No advierte de Kext con firma incorrecta)
#sudo touch /System/Library/Extensions
#sudo kextcache -update-volume /


