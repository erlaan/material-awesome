#This is will install everything for you. 
#
<<comment
TODO:
--Fedora
    -- Fixig so i3lock-color get all the dependencies
    -- TEST the script
    -- I think it working right now
--Opensuse
--Arch
--Ubuntu
comment

if [ $1 == "Fedora" ]; then
    sudo dnf install -y awesome git google-roboto-fonts rofi compton xclip qt5-qtstyleplugins materia-gtk-theme lxappearance papirus-icon-theme spectacle imagemagick awk util-linux
    sudo dnf groupinstall "Development Tools"
    git clone https://github.com/erlaan/material-awesome.git ~/.config/awesome
    mkdir ~/git
    cd ~/git
    git clone https://github.com/Raymo111/i3lock-color.git
    git clone https://github.com/meskarune/i3lock-fancy.git
    cd i3lock-color
    chmod +x install-i3lock-color.sh
    ./install-i3lock-color.sh
    cd ~/git/i3lock-fancy
    sudo make install
    sudo su
    echo XDG_CURRENT_DESKTOP=Unity >> /etc/environment
    echo QT_QPA_PLATFORMTHEME=gtk2 >> /etc/environment
    echo "Should be done now!"
    exit
else
    echo "You need to run command as ./INSTALL.sh Fedora"
fi

