#!/bin/bash
#====================================================
#	SCRIPT: MULTI SCRIPTS MANAGER
#   DATA ATT:   01 de Feb 2021
#	DESENVOLVIDO POR:	TEAM ILLUMINATI
#	COLABORADOR:	        JONY RIVERA
#	CONTATO TELEGRAM:	NO DISPONIBLE
#	CANAL TELEGRAM:	https://t.me/admmanagerfree
#====================================================
barra="\033[0m\e[34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "/root/sshplus.sh" > /bin/mis && chmod +x /bin/mis > /dev/null 2>&1

fun_prog ()
{
	comando[0]="$1" 
    ${comando[0]}  > /dev/null 2>&1 & 
	tput civis
	echo -ne "\033[1;32m.\033[1;33m.\033[1;31m. \033[1;32m"
    while [ -d /proc/$! ]
	do
		for i in / - \\ \|
		do
			sleep .1
			echo -ne "\e[1D$i"
		done
	done
	tput cnorm
	echo -e "\e[1DOK"
}

fun_update () {
    sudo apt-get update -y
}

fun_upgrade () {
    sudo apt-get upgrade -y
}

fun_atualizar () {
    rm -rf $HOME/sshplus.sh; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Multi-Instalador/sshplus.sh; chmod +x sshplus.sh
}

##ACTUALIZA SISTEMA

update_fun () {
clear
echo -e "$barra"
echo -e "\E[41;1;37m        ⇱ ACTUALIZANDO SISTEMA ⇲                  \E[0m"
echo -e "$barra"
echo -e " "
echo -ne "\033[1;33m[\033[1;31m ! \033[1;33m] \033[1;31mapt-get update "; fun_prog 'fun_update'
echo -e " "
echo -ne "\033[1;33m[\033[1;31m ! \033[1;33m] \033[1;31mapt-get upgrade "; fun_prog 'fun_upgrade'
echo -e " "
echo -ne "\033[1;33m[\033[1;31m ! \033[1;33m] \033[1;31mActualizando MIS "; fun_prog 'fun_atualizar'
echo -e " "
echo -ne "\033[1;33m[\033[1;31m ! \033[1;33m] \033[1;31mRedirigiendo "; fun_prog 'sleep 3'
sleep 1
echo -e " "
chmod +x sshplus.sh; ./sshplus.sh
}

##MANAGER SCRIPTS

sshplus () {
    apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Plus; chmod 777 Plus; ./Plus
}

sshplusDEV () {
    apt-get update -y; apt-get upgrade -y; wget    /Plus
}

sshpluskey () {
    apt-get update -y; apt-get upgrade -y; wget sshplus.xyz/script/Plus; chmod 777 Plus; ./Plus
}
sshplus () {
    apt-get update -y; apt-get upgrade -y; wget    /Plus
}

##PAINEL WEB SCRIPTS

panel_v11 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v11/Painelv11.sh > /dev/null 2>&1; chmod +x Painelv11.sh; ./Painelv11.sh
}
panel_v11_2 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v11_2/install > /dev/null 2>&1; chmod +x install; ./install
}
panel_v12 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v12/install > /dev/null 2>&1; chmod +x install; ./install
}
panel_v15 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v15/install > /dev/null 2>&1; chmod +x install; ./install
}
panel_v15_2 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v15_2/ocspanel > /dev/null 2>&1; chmod +x ocspanel; ./ocspanel
}
panel_v20 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v20/install > /dev/null 2>&1; chmod +x install; ./install
}
panel_v23 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v23/install > /dev/null 2>&1; chmod +x install; ./install
}
panel_v25 () {
    wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v25/install > /dev/null 2>&1; chmod +x install; ./install
}

##GEYGEN SSHPLUS MANAGER

keyssh () {
    apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Generador/instala_server; chmod 777 instala_server* && ./instala_server*
}

##OPCIONES DE SISTEMA

atualizar () {
    rm -rf $HOME/sshplus.sh; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Multi-Instalador/sshplus.sh; chmod +x sshplus.sh; ./sshplus.sh
}
remove_multiscripts () {
    rm -rf $HOME/sshplus.sh && rm -rf /bin/mis
}

##MENU
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
_usop=$(printf '%-1s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")

while true $x != "ok"
do
clear
echo -e "$barra"
echo -e "\E[41;1;37mMULTI-INTALADOR SSHPLUS           \033[1;32m[\033[1;37m VERSAO: r002 \033[1;32m]\E[0m"
echo -e "$barra"
echo -e "\033[1;31m[\033[1;36m01\033[1;31m] \033[1;33mSSHPLUS MANAGER v32            \033[1;32m(FREE) \033[37m∆
\033[1;31m[\033[1;36m02\033[1;31m] \033[1;33mSSHPLUS MANAGER OFICIAL-DEV    \033[1;32m(FREE) \033[37m∆
\033[1;31m[\033[1;36m03\033[1;31m] \033[1;33mSSHPLUS MANAGER OFICIAL        \033[1;31m(KEYS) 
\033[1;31m[\033[1;36m04\033[1;31m] \033[1;33mPAINEL SSHPLUS WEB V.11        \033[1;32m(FREE) 
\033[1;31m[\033[1;36m05\033[1;31m] \033[1;33mPAINEL SSHPLUS WEB V.12        \033[1;32m(FREE) 
\033[1;31m[\033[1;36m06\033[1;31m] \033[1;33mPAINEL SSHPLUS WEB V.15        \033[1;32m(FREE) 
\033[1;31m[\033[1;36m07\033[1;31m] \033[1;33mPAINEL SSHPLUS WEB V.20        \033[1;32m(FREE) \033[37m∆
\033[1;31m[\033[1;36m08\033[1;31m] \033[1;33mPAINEL VIP-VPS V.23            \033[1;32m(FREE) 
\033[1;31m[\033[1;36m09\033[1;31m] \033[1;33mPAINEL VIP-VPS V.25            \033[1;32m(FREE) 
\033[0m\e[34m--------------------------------------------------
\033[1;31m[\033[1;36m10\033[1;31m] \033[1;33mGENERADOR KEY SSHPLUS MANAGER  \033[1;32m(FREE)
\033[0m\e[34m--------------------------------------------------
\033[1;31m[\033[1;36m11\033[1;31m] \033[1;35m[!] \033[1;32mACTUALIZAR                \033[1;31mRam:\033[1;37m $_usor
\033[1;31m[\033[1;36m12\033[1;31m] \033[1;35m[!] \033[1;31mDESINSTALAR \033[1;35m[\033[1;37m MIS \033[1;35m]       \033[1;31mNucleo:\033[1;37m $_usop
\033[1;31m[\033[1;36m00\033[1;31m] \033[1;37mSALIR \033[1;32m<\033[1;33m<\033[1;31m<                     \033[1;37m@admmanagerfree\033[0m \033[0m"
echo -e "$barra"
echo -ne "\033[1;32mOQUE DESEJA FAZER \033[1;33m?\033[1;31m?\033[1;37m : "; read x

case "$x" in 
   1 | 01)
   clear
   sshplus
   exit;
   ;;
   2 | 02)
   clear
   sshplusDEV
   exit;
   ;;
   3 | 03)
   clear
   sshpluskey
   exit;
   ;;
   4 | 04)
   clear
   panel_v11_2
   exit;
   ;;      
   5 | 05)
   clear
   panel_v12
   exit;
   ;;
   6 | 06)
   clear
   panel_v15_2
   exit;
   ;; 
   7 | 07)
   clear
   panel_v20
   exit;
   ;;
   8 | 08)
   clear
   panel_v23
   exit;
   ;;     
   9 | 09)
   clear
   panel_v25
   exit;
   ;;
   10)
   clear
   keyssh
   exit;
   ;;
   11)
   clear
   atualizar
   exit;
   ;;
   12)
   clear
   remove_multiscripts
   exit;
   ;;
   update)
   clear
   update_fun
   exit;
   ;;
   0 | 00)
   echo -e "\033[1;31mSaindo...\033[0m"
   sleep 2
   clear
   exit;
   ;;
   *)
   echo -e "\n\033[1;31mOpcao invalida !\033[0m"
   sleep 2
esac
done
}
menu
#fim