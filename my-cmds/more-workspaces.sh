#/bin/bash
arg1=$1;
arg2=$2;

if [ "$arg1" != '' ] && [ "$arg2" != '' ];
then
	echo "Setting up $arg1 workspaces in the vertical and $arg2 workspaces on the horizontal";
	gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize $arg1;
	gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize $arg2;

elif [ "$arg1" == '' ] && [ "$arg2" == '' ];
then
	echo "Setting up 2 workspaces in the vertical and 6 workspaces on the horizontal";
	echo "use --help for help"
	gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2
	gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 6

else
	echo "Usage: more-workspaces.sh <n_vetical> <n_horizontal>"
fi


#gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2
#gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 6


