
#INSTALAR APLICATIVOS##########################################################

.PHONY: cmds

update:
	- sudo apt-get update

vim: 
	#instalando - vim
	#- sudo apt-get update
	- sudo apt-get install vim
	- sudo cp ./vimrc /etc/vim/

cinnamon:
	#cinnamon GUI
	- sudo add-apt-repository ppa:gwendal-lebihan-dev/cinnamon-nightly
	- sudo apt-get update
	- sudo apt-get install cinnamon
	- sudo apt-get install gnome-icon-theme-yasis
	- sudo apt-get install gnome-icon-theme-suede 
	- sudo apt-get install gnome-icon-theme-nuovo
	- sudo apt-get install gnome-icon-theme-gperfection2
	- sudo apt-get install cinnamon-settings-daemon 
	- sudo apt-get install cinnamon-settings-daemon 
	#instalar xfce4 GUI
	- sudo apt-get update
	- sudo apt-get install xubuntu-desktop
	- sudo apt-get install xfce4
	@echo "#######################################################################"
	@echo ""
	@echo "==	CONFIGURACAO DOS ICONES	=="
	@echo ""
	@echo "Caso os icones nao estejam aparecendo corretamente, significa que"
	@echo "eles nao foram configurados. Para isso, va no menu iniciar>"
	@echo "> "configuracao do sistema", > "temas", aba "Outras configuracoes"" 
	@echo "(3a aba) > barra "ícones". Recomentase a opção elementary-xfce."
	@echo ""
	@echo "#######################################################################"

ssh:
	#instalando - ssh
	- sudo apt-get update
	- sudo apt-get install libssh-4    
	- sudo apt-get install openssh-client   
	- sudo apt-get install openssh-server  
	- sudo apt-get install ssh-askpass-gnome       
	- sudo apt-get install ssh-import-id          

sublime:
	#instalando - sublime
	- sudo add-apt-repository ppa:webupd8team/sublime-text-2
	- sudo apt-get update
	- sudo apt-get install sublime-text
	- cp  MonokaiDark.tmTheme  ~/.config/sublime-text-2/Packages/Color\ Scheme\ -\ Default/
	- cp Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/

pinta:
	#instalando - pinta
	- sudo add-apt-repository ppa:pinta-maintainers/pinta-stable/ubuntu
	- sudo apt-get update
	- sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
	- sudo apt-get update
	- sudo apt-get install pinta

eclipse:
	#instaladno - eclipse
	- sudo apt-get update
	- sudo apt-get install eclipse eclipse-cdt g++

gimp:
	#instalando - gimp 
	- sudo apt-get update
	- sudo apt-get install gimp                            
	- sudo apt-get install gimp-data                       
	- sudo apt-get install libgimp2.0                      

svn:
	#instalando svn
	- sudo apt-get update
	- sudo apt-get install subversion libapache2-svn

kdesvn:
	# instalado KDESVN
	- sudo apt-get update
	- sudo apt-get install kdesvn                          
	- sudo apt-get install kdesvn-kio-plugins              
	- sudo apt-get install libsvn1                         
	- sudo apt-get install libsvnqt6                       

aptitude:
	#aptitude
	- sudo apt-get update
	- sudo apt-get install aptitude

myunit:
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

chromium:
	- sudo apt-get update
	- sudo apt-get install chromium-browser

bash:
	#configurações personalizadas para o terminal
	- cp bashrc  ~/.bashrc

desktop:
	#configurar Desktop e configurações padrão de outras aplicações
	- cp user-dirs.dirs ~/.config/user-dirs.dirs
	- cp bashrc  ~/.bashrc

sqlite:
	#instalar sqlite3
	- sudo chmod 777 sqlite3
	- sudo cp ./sqlite3 /usr/bin/
	- sudo apt-get install tcl
	- cd sqlite3-3.7.9
	- sudo ./sqlite3-3.7.9/configure
	- sudo make -C ./sqlite3-3.7.9/
	- sudo make install -C ./sqlite3-3.7.9/

emacs:
	# instalar emacs
	- sudo apt-get install emacs

meld:
	#instalar meld
	- sudo apt-get brctl command linuxinstall meld

dia:
	#instalar dia
	- sudo apt-get updade
	- sudo apt-get autoclean
	- sudo apt-get install --fix-missing dia

octave:
	#instalar octave
	- sudo apt-get update
	- sudo apt-get install octave

imagens:
	# wallpapers
	- cp -r ./Imagens/* ~/Imagens/
	- sudo chmod -R 666 ~/Imagens/

cmds:
	# Criar pasta de comandos pessoais
	- sudo mkdir ~/cmds/
	- sudo cp ./cmds/* ~/cmds/
	- sudo chmod -R 777 ~/cmds/*

deviceDrivers:
	#instalar libs para devicedrivers
	- sudo apt-get update
	- sudo apt-get install linux-headers-generic
	- sudo apt-get install kernel-package
	- sudo apt-get install build-dep 

mtd-utils: 
	#Memory Technology Device Utilities
	#http://www.linux-mtd.infradead.org/
	- sudo apt-get update
	- sudo apt-get install mtd-utils

libncurses:
	- sudo apt-get install libncursesw5-dbg

bridge-utils:
	#instalar bridge-utils
	- apt-get install bridge-utils

traceroute:
	#instalar traceroute
	- sudo apt-get install traceroute

kdbg:
	#degugger
	- sudo apt-get install kdbg

dconf:
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

dtc:
	- sudo apt-get install device-tree-compiler

valgrind:
	- sudo apt-get install valgrind

grive:
	- sudo apt-add-repository ppa:thefanclub/grive-tools
	- sudo apt-get update
	- sudo apt-get install -y grive-tools

git:
	- sudo apt-get install git
	- sudo apt-get install gitk

web:
	-  sudo apt-get install curl wget lynx w3m

ddd:
	# debugger
	- sudo apt-get install ddd

doxygen:
	# criador de documentação para software
	-  sudo apt-get install doxygen   doxygen-doc  doxygen-gui doxygen-latex

youtube:
	# ferramentas para se fazer download de vídeos do youtube
	- sudo apt-get install youtube-dl   
	- sudo apt-get install libwebservice-youtube-perl 
	- sudo apt-get install libwww-youtube-download-perl 

tree:
	# programa para exibir arvore de diretórios via terminal
	- sudo apt-get install tree


gnome-panel:
	- sudo apt-get install gnome-panel

ruby:
	#Linguagem 
	- sudo apt-get install  ruby1.9.1  rubygems

qt:
	#programa para desenvolvimento de interfaces e aplicações
	- sudo ./qt-opensource-linux-x86-1.6.0-4-online.run

eletronica:
	# instala aplicações úteis para área de eletronica
	- sudo apt-get install gresistor

nemiver:
	- sudo apt-get install nemiver

klish:
	-  sudo klish-1.5.4/install_clish.sh

man-gpp:
	- sudo apt-get install manpages-dev glibc-doc 

chrome:
	- wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	- sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
	-  sudo apt-get update ; sudo apt-get install google-chrome-stable -y

help:
	@echo "make [target]"
	@echo
	@echo "targets"
	@echo "--------"
	@#comando abaixo imprime todos os targets
	@cat Makefile |grep "^[a-z]" |grep "[a-z]*:" |sed "s/:/ /g" |awk '{print $1}'

targets:	
	@#comando abaixo imprime todos os targets
	@cat Makefile |grep "^[a-z]" |grep "[a-z]*:" |sed "s/:/ /g" |awk '{print $1}'










