#!/bin/bash
# for installation of pkgs after debian netinst iso w/o gui

sudo apt install -y xorg
sudo apt install -y amd-microcode
sudo apt install -y intel-microcode
sudo apt install -y xfce4 xfce4-goodies
sudo apt install -y dialog mtools acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
sudo apt install -y alsa-utils volumeicon-alsa
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
sudo apt install -y build-essential pipx curl wget
sudo apt install -y micro nala ffmpeg zoxide fzf bat ranger git ncdu vnstat btop mpv foliate
curl -fsS https://dl.brave.com/install.sh | sh
wget https://github.com/fastfetch-cli/fastfetch/releases/download/v2.43.0/fastfetch-linux-amd64.deb
sudo dpkg -i fastfetch-linux-amd64.deb
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.wezfurlong.wezterm
sudo apt install -y cups bluez blueman system-config-printer simple-scan
sudo systemctl enable cups.service
sudo systemctl enable bluetooth
sudo systemctl enable cups
sudo apt install -y hplip hplip-gui
sudo apt install -y printer-driver-hpcups
sudo apt install -y geany vlc yt-dlp ripgrep xpad 
sudo apt install -y xfce4-panel-profiles 
