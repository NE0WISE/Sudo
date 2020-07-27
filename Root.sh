R () {
	cd $PREFIX/bin
	if [ -e python ];then
	python ~/Activate-Root/.random.py
	else
	pkg install python
	python ~/Activate-Root/.random.py
	fi
	}
	b() {
	R
	figlet root
	echo
	}
	
	
	
		packages () {
			cd $PREFIX/bin
			if [ -e proot ];then
			R
			printf "\n Proot is installed \n"
			else
			apt update
			apt upgrade
			apt install proot
			fi
			if [ -e figlet ];then
			R
			printf "\n Figlet is installed\n"
			else
			apt update
			apt upgrade
			apt install figlet
			clear
			fi
			if [ -e neofetch ];then
			R
			printf "\n Neofetch is installed\n"
			else
			apt update
			apt upgrade
			apt install root
			clear
			fi
			sleep 2
			}
			roott () {
				R
				printf "\n\n Adding sudo command\n"
				cd ~/Activate-Root
				chmod 7777 *
				cp -f sudo $PREFIX/bin
				chmod 777 sudo
				R
				clear
				R
				printf "\n\n Now you can use this command :- sudo\n"
				echo
				echo
				}
				menu () {
					b
printf "\n\033[1;91m Note : apt or pkg noot work if you use sudo.
 or you want use apt or pkg so type exit\n\n"
		echo -e -n "\033[93m Do you want to activate root\033[94m(\033[96mY/N\033[94m) "
		read a
		case $a in
		y|Y)roott ;;
		n|N)exit  ;;
		esac
		}
		packages
		menu
