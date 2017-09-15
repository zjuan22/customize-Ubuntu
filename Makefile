#INSTALAR APLICATIVOS##########################################################

BIN_DIR = /usr/local/bin/
CMDS_DIR = ./my-cmds
.PHONY: cmds git-keep

update:		#update your aplication mirrors
	- sudo apt-get update

vim: 		#vim, the best command line editor
	#instalando - vim
	#- sudo apt-get update
	- sudo apt-get install vim
	- sudo cp ./vimrc /etc/vim/

ssh:		#install SSH client and server
	#instalando - ssh
	- sudo apt-get update
	- sudo apt-get install libssh-4    
	- sudo apt-get install openssh-client   
	- sudo apt-get install openssh-server  
	- sudo apt-get install ssh-askpass-gnome       
	- sudo apt-get install ssh-import-id          

sublime:	#easy to use text editor and IDE
	#instalando - sublime
	- sudo add-apt-repository ppa:webupd8team/sublime-text-2
	- sudo apt-get update
	- sudo apt-get install sublime-text
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
	- sudo apt-get install aptitude

myunit:		#My unit: customize Unit (not recomended for Ubuntu >= 13)
	#unity-tweak-tool
	- sudo apt-get update
	- sudo add-apt-repository ppa:freyja-dev/unity-tweak-tool-daily
	- sudo apt-get update
	- sudo apt-get install unity-tweak-tool
	#myunity
	- sudo apt-get install myunity
	#humanity-colors
	- sudo add-apt-repository ppa:ravefinity-project/ppa && sudo apt-get update
	- sudo apt-get install humanity-colors
	- sudo apt-get install dconf

chromium:	#Chrome like bronser for Ubuntu
	- sudo apt-get update
	- sudo apt-get install chromium-browser

bash:		#better shell script interface
	#configurações personalizadas para o terminal
	- cp bashrc  ~/.bashrc

desktop:	#for non-english users: change the name of your Desktop directory to... Desktop ;P
	#configurar Desktop e configurações padrão de outras aplicações
	- cp user-dirs.dirs ~/.config/user-dirs.dirs
	- cp bashrc  ~/.bashrc

sqlite:		#Install Sqlite3
	#instalar sqlite3
	#- sudo chmod 777 sqlite3
	#- sudo cp ./sqlite3 /usr/bin/
	#- sudo apt-get install tcl
	#- cd sqlite3-3.7.9
	#- sudo ./sqlite3-3.7.9/configure
	#- sudo make -C ./sqlite3-3.7.9/
	#- sudo make install -C ./sqlite3-3.7.9/
	- sudo apt-get install sqlite3
	- sudo apt-get install libsqlite3-dev

emacs:		#Emacs text editor
	# instalar emacs
	- sudo apt-get install emacs

meld:		#meld text diff, with a friendly GUI
	#instalar meld
	- sudo apt-get install meld

dia:		#diagramns creator
	#instalar dia
	- sudo apt-get updade
	- sudo apt-get autoclean
	- sudo apt-get install --fix-missing dia
	- mkdir ~/dia-workspace

octave:		#scentific computation software, compatble with Matlab language
	#instalar octave
	- sudo apt-get update
	- sudo apt-add-repository ppa:octave/stable
	- sudo apt-get update
	- sudo apt-get install octave

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
	- sudo apt-get install mtd-utils

libncurses:	#
	- sudo apt-get install libncursesw5-dbg

bridge-utils:	#bridge utils (http://www.linuxfoundation.org/collaborate/workgroups/networking/bridge)
	#instalar bridge-utils
	- apt-get install bridge-utils

traceroute:	#traceroute (https://pt.wikipedia.org/wiki/Traceroute)
	#instalar traceroute
	- sudo apt-get install traceroute

kdbg:		#good and simple debugger
	#degugger
	- sudo apt-get install kdbg

dconf:		#tool for customize ubuntu
	- sudo apt-get install asoundconf-gtk
	- sudo apt-get install dconf
	- sudo apt-get install dconf-tools
	@echo "=================================================================================="
	@echo "http://askubuntu.com/questions/63126/how-do-i-change-the-selected-items-color"
	@echo "=================================================================================="
	@echo ""
	@echo "= Replace the orange color in Ubuntu 11.10 (active color) ="
	@echo ""
	@echo "Install dconf-editor"
	@echo ""
	@echo "sudo apt-get install dconf-tools"
	@echo "Start the program press Alt+F2 and then write dconf-editor and enter."
	@echo ""
	@echo "Path: org => gnome => desktop => interface"
	@echo "Find the line “gtk-color-scheme” and add this string:"
	@echo ""
	@echo "bg_color:#f0f1f2;selected_bg_color:#023C88"
	@echo ""
	@echo "Here it is then simply choose the color you want yourself, I have adark blue "
	@echo "color, then just replace the last color in the string (#023C88) to change the"
	@echo "highlight color to what you want."
	@echo ""
	@echo "More info here:"
	@echo "http://antecblue.wordpress.com/2011/10/17/replace-the-orange-color-in-ubuntu-11-10-active-color/"

dtc:		#
	- sudo apt-get install device-tree-compiler

valgrind:	#testing tool: check if yor program has memory leaks!
	- sudo apt-get install valgrind

grive:		#
	- sudo apt-add-repository ppa:thefanclub/grive-tools
	- sudo apt-get update
	- sudo apt-get install -y grive-tools

git:		#controll of version
	- sudo apt-get install git
	- sudo apt-get install gitk
	- sudo apt-get install meld
	@echo "Configure diff tool as meld"
	- git config --global diff.external meld	

web:		#command-line web tools: curl, wget, lynx and w3m
	-  sudo apt-get install curl wget lynx w3m

ddd:		#debuger
	# debugger
	- sudo apt-get install ddd

doxygen:	#document your software!
	# criador de documentação para software
	-  sudo apt-get install doxygen   doxygen-doc  doxygen-gui doxygen-latex

youtube:	#download youtube videos
	# ferramentas para se fazer download de vídeos do youtube
	- sudo apt-get install youtube-dl   
	- sudo apt-get install libwebservice-youtube-perl 
	- sudo apt-get install libwww-youtube-download-perl 

tree:		#display directory trees
	# programa para exibir arvore de diretórios via terminal
	- sudo apt-get install tree


gnome-panel:	#create icon launchers for aplications
	- sudo apt-get install gnome-panel

ruby:		#ruby language
	#Linguagem 
	- sudo apt-get install  ruby1.9.1  rubygems

qt:		#Qt IDE
	#programa para desenvolvimento de interfaces e aplicações
	- sudo ./qt-opensource-linux-x86-1.6.0-4-online.run

eletronica:	#
	# instala aplicações úteis para área de eletronica
	- sudo apt-get install gresistor

nemiver:	#
	- sudo apt-get install nemiver

klish:		#command-line creator component
	-  sudo klish-1.5.4/install_clish.sh

man-gpp:	#
	- sudo apt-get install manpages-dev glibc-doc 

chrome:		#Chrome brownser
	- wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	- sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
	-  sudo apt-get update ; sudo apt-get install google-chrome-stable -y

keyboard:	#
	- setxkbmap -model abnt2 -layout br

pycharm:	#Python IDE
	- sudo add-apt-repository ppa:mystic-mirage/pycharm
	- sudo apt-get update
	- sudo apt-get install pycharm-community
	- sudo apt-get install pycharm 

rar:		#rar: compres and uncompress files
	- sudo apt-get update
	- sudo apt-get install rar
	- sudo apt-get install unrar

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
	- sudo apt-get install htop
iperf:
	- sudo apt-get install iperf

tcpreplay:
	- sudo apt-get install tcpreplay

ostinato:
	- sudo apt-get install ostinato
	- sudo -H pip install python-ostinato

tcptrace:
	- sudo apt-get install tcptrace

netbeans:	#Extensible Java IDE
	- sudo apt-get install netbeans libnetbeans-cvsclient-java

codelite:	#Powerful and lightweight IDE
	- sudo apt-get install codelite codelite-plugins

fping:		#sends ICMP ECHO_REQUEST packets to network hosts
	- sudo apt-get install fping

ack:	#  um programa como o grep específico para grandes árvores de código fonte
	- sudo apt-get install ack-grep

apt-clean:
	- sudo apt-get clean
	- sudo apt-get clean up
	- sudo apt-get autoclean
	- sudo apt-get autoremove
	- sudo apt-get -f install
	- sudo apt-get autoremove
	- sudo apt-get clean
	- sudo apt-get clean up
	- sudo apt-get autoclean

ovs:	# Install OpenV-Switch
	- sudo apt-get install openvswitch-switch

meld-git: #configure meld for git
	- sudo apt-get install meld
	- sudo chmod 777 ${CMDS_DIR}/meld-diff.py
	- sudo install ${CMDS_DIR}/meld-diff.py ${BIN_DIR}
	- git config --global diff.external meld-diff.py

keyboard-br-abnt:	#Teclado com configuração Brasil ABNT
	- sudo install  ${CMDS_DIR}/keyboard-br-abnt.sh ${BIN_DIR}

create-icon:		# Crie icones para executaveis
	- sudo install ${CMDS_DIR}/create-icon.sh ${BIN_DIR}

more-workspaces: 	# modifique quantidade de workspaces
	- sudo install ${CMDS_DIR}/more-workspaces.sh ${BIN_DIR}

latex:
	- sudo apt-get install texlive-full
	- sudo apt-get install texmaker
	- sudo apt-get install texstudio

rename-no-white-spaces:
	- sudo install ${CMDS_DIR}/rename-no-white-spaces.sh  ${BIN_DIR}

notes:
	- sudo add-apt-repository ppa:umang/indicator-stickynotes && sudo apt-get update 
	- sudo aptitude install indicator-stickynotes

graphics:
	- sudo apt-get update
	- sudo apt-get install qpdfview
	- sudo apt-get install inkscape
	- sudo apt-get install okular
	- sudo apt-get install gimp                            
	- sudo apt-get install gimp-data                       
	- sudo apt-get install libgimp2.0                      
	- sudo make dia

php:
	- sudo apt-get install php5-dev
	- sudo apt-get install php-pear
	- sudo apt-get install php5-cgi

git-keep:
	- sudo install git-keep ${BIN_DIR}

basic-install:
	- make update vim ssh sublime pinta eclipse gimp aptitude chromium bash desktop sqlite emacs meld dia octave wallpapers cmds bridge-utils traceroute kdbg valgring web ddd tree gnome-panel ruby qt chrome rar pycharm alacarte cloc atop htop 


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


	
         












