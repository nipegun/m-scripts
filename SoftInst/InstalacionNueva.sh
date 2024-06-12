#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para instalar y configurar x en macOS
#
# Ejecución remota:
#  curl -sL https://raw.githubusercontent.com/nipegun/m-scripts/master/SoftInst/InstalacionNueva.sh | bash
#
# Ejecución remota sin caché:
#  curl -sL -H 'Cache-Control: no-cache, no-store' https://raw.githubusercontent.com/nipegun/m-scripts/master/SoftInst/InstalacionNueva.sh | bash
#
# Ejecución remota con parámetros:
#  curl -sL https://raw.githubusercontent.com/nipegun/m-scripts/master/SoftInst/InstalacionNueva.sh | bash -s Parámetro1 Parámetro2
# ----------

# Definir constantes de color
  cColorAzul="\033[0;34m"
  cColorAzulClaro="\033[1;34m"
  cColorVerde='\033[1;32m'
  cColorRojo='\033[1;31m'
  # Para el color rojo también:
    #echo "$(tput setaf 1)Mensaje en color rojo. $(tput sgr 0)"
  cFinColor='\033[0m'

# Determinar la versión de macOS

  # Obtener la versión completa (con subversión)
    cProductVersion=$(sw_vers -productVersion)
  # Contar la cantidad de puntos
    vCantPuntos=0
    for (( i=0; i<${#cProductVersion}; i++ )); do
      if [[ "${cProductVersion:$i:1}" == "." ]]; then
        (( vCantPuntos++ ))
      fi
    done
  # Guardar la versión sin subversión
    if (( $vCantPuntos >= 2 )); then
      # Elimina la última parte después del último punto
      cVerSO="${cProductVersion%.*}"
    else
      # Usa toda la cadena
      cVerSO="$cProductVersion"
    fi

# Elegir que hacer según la versión de macOS

  if [ $cVerSO == "15" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 15 (Sequoia)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 15 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "14" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 14 (Sonoma)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 14 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "13" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 13 (Ventura)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 13 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "12" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 12 (Monterey)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 12 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "11" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 11 (Big Sur)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 11 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.15" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.15 (Catalina)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.15 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.14" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.14 (Mojave)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.14 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.13" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.13 (High Sierra)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.13 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.12" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.12 (Sierra)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.12 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.11" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.11 (El Capitan)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.11 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.10" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.10 (Yosemite)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.10 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.9" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.9 (Mavericks)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.9 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.8" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.8 (Mountain Lion)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.8 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.7" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.7 (Lion)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.7 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  elif [ $cVerSO == "10.6" ]; then

    echo ""
    echo -e "${cColorAzulClaro}  Iniciando el script de instalación de xxxxxxxxx para macOS 10.6 (Snow Leopard)...${cFinColor}"
    echo ""

    echo ""
    echo -e "${cColorRojo}    Comandos para macOS 10.6 todavía no preparados. Prueba ejecutarlo en otra versión de macOS.${cFinColor}"
    echo ""

  fi

