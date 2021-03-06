#!/bin/bash

# 
# Based on https://wiki.archlinux.org/index.php/Bash/Prompt_customization
#
# Example of use: put this file in /usr/bin and chmod 755 
#
# #!/bin/bash
# source /usr/bin/colors.sh
# echo -e "$Red *** $Z ATTENTION: the folder $BGreen documents $Z will be erased"
#

# Color definitions

# Reset
export Z='\e[0m'               # Text Reset

# Regular Colors
export Black='\e[0;30m'        # Nero
export Red='\e[0;31m'          # Rosso
export Green='\e[0;32m'        # Verde
export Yellow='\e[0;33m'       # Giallo
export Blue='\e[0;34m'         # Blu
export Purple='\e[0;35m'       # Viola
export Cyan='\e[0;36m'         # Ciano
export White='\e[0;37m'        # Bianco

# Bold
export BBlack='\e[1;30m'       # Nero
export BRed='\e[1;31m'         # Rosso
export BGreen='\e[1;32m'       # Verde
export BYellow='\e[1;33m'      # Giallo
export BBlue='\e[1;34m'        # Blu
export BPurple='\e[1;35m'      # Viola
export BCyan='\e[1;36m'        # Ciano
export BWhite='\e[1;37m'       # Bianco

# Underline
export UBlack='\e[4;30m'       # Nero
export URed='\e[4;31m'         # Rosso
export UGreen='\e[4;32m'       # Verde
export UYellow='\e[4;33m'      # Giallo
export UBlue='\e[4;34m'        # Blu
export UPurple='\e[4;35m'      # Viola
export UCyan='\e[4;36m'        # Ciano
export UWhite='\e[4;37m'       # Bianco

# Background
export On_Black='\e[40m'       # Nero
export On_Red='\e[41m'         # Rosso
export On_Green='\e[42m'       # Verde
export On_Yellow='\e[43m'      # Giallo
export On_Blue='\e[44m'        # Blu
export On_Purple='\e[45m'      # Purple
export On_Cyan='\e[46m'        # Ciano
export On_White='\e[47m'       # Bianco

# High Intensty
export IBlack='\e[0;90m'       # Nero
export IRed='\e[0;91m'         # Rosso
export IGreen='\e[0;92m'       # Verde
export IYellow='\e[0;93m'      # Giallo
export IBlue='\e[0;94m'        # Blu
export IPurple='\e[0;95m'      # Viola
export ICyan='\e[0;96m'        # Ciano
export IWhite='\e[0;97m'       # Bianco

# Bold High Intensty
export BIBlack='\e[1;90m'      # Nero
export BIRed='\e[1;91m'        # Rosso
export BIGreen='\e[1;92m'      # Verde
export BIYellow='\e[1;93m'     # Giallo
export BIBlue='\e[1;94m'       # Blu
export BIPurple='\e[1;95m'     # Viola
export BICyan='\e[1;96m'       # Ciano
export BIWhite='\e[1;97m'      # Bianco

# High Intensty backgrounds
export On_IBlack='\e[0;100m'   # Nero
export On_IRed='\e[0;101m'     # Rosso
export On_IGreen='\e[0;102m'   # Verde
export On_IYellow='\e[0;103m'  # Giallo
export On_IBlue='\e[0;104m'    # Blu
export On_IPurple='\e[10;95m'  # Viola
export On_ICyan='\e[0;106m'    # Ciano
export On_IWhite='\e[0;107m'   # Bianco