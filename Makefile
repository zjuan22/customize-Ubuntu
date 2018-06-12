#NSTALAR APLICATIVOS##########################################################

BIN_DIR = /usr/local/bin/
CMDS_DIR = ./my-cmds
.PHONY: cmds git-keep

update:		#update your aplication mirrors
	- sudo apt-get update

vim: 	#vim, the best command line editor
	#instalando - vim
	#- sudo apt-get update
	- sudo apt-get install vim -y
	- sudo cp ./vimrc /etc/vim/

ssh:		#install SSH client and server
	#instalando - ssh
	- sudo apt-get update
	- sudo apt-get install libssh-4          -y   
	- sudo apt-get install openssh-client    -y  
	- sudo apt-get install openssh-server    -y 
	- sudo apt-get install ssh-askpass-gnome -y      
	- sudo apt-get install ssh-import-id     -y     

sublime:	#easy to use text editor and IDE
	#instalando - sublime
	- sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y 
	- sudo apt-get update 
	- sudo apt-get install sublime-text -y
	- cp  MonokaiDark.tmTheme  ~/.config/sublime-text-2/Packages/Color\ Scheme\ -\ Default/
	- cp Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/

pinta:		#paint like program for Ubuntu
	#instalando - pinta
	- sudo add-apt-repository ppa:pinta-maintainers/pinta-stable/ubuntu
	- sudo apt-get update
	- sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
	- sudo apt-get update
	- sudo apt-get install pinta

eclipse:	#Eclipse IDE
	#instaladno - eclipse
	- sudo apt-get update
	- sudo apt-get install eclipse eclipse-cdt g++

gimp:		#powerfull and photoshop quivalent image editor
	#instalando - gimp 
	- sudo apt-get update
	- sudo apt-get install gimp                            
	- sudo apt-get install gimp-data                       
	- sudo apt-get install libgimp2.0                      

svn:		#versioning controls software
	#instalando svn
	- sudo apt-get update
	- sudo apt-get install subversion libapache2-svn

kdesvn:		#KDE gui for SVN
	# instalado KDESVN
	- sudo apt-get update
	- sudo apt-get install kdesvn                          
	- sudo apt-get install kdesvn-kio-plugins              
	- sudo apt-get install libsvn1                         
	- sudo apt-get install libsvnqt6                       

aptitude:	#software manager for Ubuntu
	#aptitude
	- sudo apt-get update
	- sudo apt-get install aptitude -y

chromium:	#Chrome like bronser for Ubuntu
	- sudo apt-get update
	- sudo apt-get install chromium-browser

bash:		#better shell script interface
	#configurações personalizadas para o terminal
	- cp bashrc  ~/.bashrc


meld:		#meld text diff, with a friendly GUI
	#instalar meld
	- sudo apt-get install meld -y

dia:		#diagramns creator
	#instalar dia
	- sudo apt-get updade
	- sudo apt-get autoclean
	- sudo apt-get install --fix-missing dia
	- mkdir ~/dia-workspace


wallpapers:	#A collection of must-have awsome papers ;P 
	#wallpapers
	- tar -xzvf Wallpapers.tar.gz
	- chmod -R ug+rw ./Wallpapers
	- mv ./Wallpapers ~/Wallpapers

cmds:		#automatizable commands
	# Criar pasta de comandos pessoais
	- sudo mkdir ~/cmds/
	- sudo cp ./cmds/* ~/cmds/
	- sudo chmod -R 777 ~/cmds/*

deviceDrivers:	#kerner source for device drivers creation
	#instalar libs para devicedrivers
	- sudo apt-get update
	- sudo apt-get install linux-headers-generic
	- sudo apt-get install kernel-package
	- sudo apt-get install build-dep 

mtd-utils: 	#
	#Memory Technology Device Utilities
	#http://www.linux-mtd.infradead.org/
	- sudo apt-get update
	- sudo apt-get install mtd-utils -y

libncurses:	#
	- sudo apt-get install libncursesw5-dbg

traceroute:	#traceroute (https://pt.wikipedia.org/wiki/Traceroute)
	#instalar traceroute
	- sudo apt-get install traceroute -y

kdbg:		#good and simple debugger
	#degugger
	- sudo apt-get install kdbg -y

grive:		#
	- sudo apt-add-repository ppa:thefanclub/grive-tools
	- sudo apt-get update
	- sudo apt-get install -y grive-tools

git:		#controll of version
	- sudo apt-get install git -y
	- sudo apt-get install gitk -y
	- sudo apt-get install meld -y
	@echo "Configure diff tool as meld"
	- git config --global diff.external meld	

web:		#command-line web tools: curl, wget, lynx and w3m
	-  sudo apt-get install curl wget lynx w3m -y


doxygen:	#document your software!
	# criador de documentação para software
	-  sudo apt-get install doxygen   doxygen-doc  doxygen-gui doxygen-latex -y

tree:		#display directory trees
	# programa para exibir arvore de diretórios via terminal
	- sudo apt-get install tree


gnome-panel:	#create icon launchers for aplications
	- sudo apt-get install gnome-panel 

ruby:		#ruby language
	#Linguagem 
	- sudo apt-get install  ruby1.9.1  rubygems

chrome:		#Chrome brownser
	- wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	- sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
	-  sudo apt-get update ; sudo apt-get install google-chrome-stable -y
rar:
	- sudo apt-get update -y
	- sudo apt-get install rar -y
	- sudo apt-get install unrar -y

nuvola: 	#Nuvola Music Player
	- sudo add-apt-repository ppa:nuvola-player-builders/stable
	- sudo apt-get update
	- sudo apt-get install nuvolaplayer

alacarte:	#Customize Gnome menu
	- sudo apt-get install alacarte

cloc:		#cloc counts blank lines, comment lines, and physical lines of source code in many programming languages.
	- sudo apt-get install cloc

atop:		#CPU and RAM live monitoring program
	- sudo apt-get install atop

htop:		#CPU and RAM live monitoring program
	- sudo apt-get install htop -y
iperf:
	- sudo apt-get install iperf -y

tcpreplay:
	- sudo apt-get install tcpreplay

ostinato:
	- sudo apt-get install ostinato
	- sudo -H pip install python-ostinato

tcptrace:
	- sudo apt-get install tcptrace 

fping:		#sends ICMP ECHO_REQUEST packets to network hosts
	- sudo apt-get install fping

apt-clean:
	- sudo apt-get clean        -y
	- sudo apt-get clean up     -y
	- sudo apt-get autoclean    -y  
	- sudo apt-get autoremove   -y
	- sudo apt-get -f install   -y
	- sudo apt-get autoremove   -y

meld-git: #configure meld for git
	- sudo apt-get install meld    -y     
	- sudo chmod 777 ${CMDS_DIR}/meld-diff.py
	- sudo install ${CMDS_DIR}/meld-diff.py ${BIN_DIR}
	- git config --global diff.external meld-diff.py

more-workspaces: 	# modifique quantidade de workspaces
	- sudo install ${CMDS_DIR}/more-workspaces.sh ${BIN_DIR}

latex:
	- sudo apt-get install texlive-full -y
	- sudo apt-get install texmaker     -y
	- sudo apt-get install texstudio    -y

graphics:
	- sudo apt-get update
	- sudo apt-get install qpdfview       -y
	- sudo apt-get install inkscape      -y
	- sudo apt-get install gimp          -y                  
	- sudo apt-get install gimp-data     -y                  
	- sudo apt-get install libgimp2.0    -y                  

php:
	- sudo apt-get install php5-dev  -y
	- sudo apt-get install php-pear   -y
	- sudo apt-get install php5-cgi   -y

git-keep:
	- sudo install git-keep ${BIN_DIR}

netfpga_sume: # sume required libs 
	- sudo apt-get install gcc g++
	- sudo apt-get install minicom 
	- sudo apt-get install libusb-dev
	- sudo apt-get install libc6-i386
	- sudo apt-get install python-serial 
	- sudo apt-get install python-wxgtk3.0
	- sudo apt-get install python-scapy
	- sudo apt-get install lib32z1 libbz2-1.0
	- sudo apt-get install lib64z1 libbz2-1.0
	- sudo apt-get install lib64stdc++6 
	- sudo apt-get install libgtk2.0-0:i386 
	- sudo apt-get install libstdc++6:i386
	- sudo apt-get install linux-headers-$(uname -r) build-essential
	 
wireshark: 
	- sudo apt install wireshark-qt -y
virtualbox:
	- sudo apt-get install virtualbox -y
          

basic-install:
	- make update vim ssh sublime pinta eclipse gimp aptitude chromium bash meld dia wallpapers cmds traceroute kdbg web tree gnome-panel chrome rar alacarte cloc atop htop 


help:		#dispay this help menu
	@echo "make [target]"
	@echo
	@echo "<targets>	#<description>"
	@echo "---------	#-------------------------------------------------------------------------------------"
	@#comando abaixo imprime todos os targets
	@cat Makefile |grep "^[a-z]" |grep "[a-z]*:" |sed "s/:/ /g" |awk '{print $1}'

targets:	#list all targets
	@#comando abaixo imprime todos os targets
	@cat Makefile |grep "^[a-z]" |grep "[a-z]*:" |sed "s/:/ /g" |awk '{print $1}'


	
         












