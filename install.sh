#!/bin/bash
# installation of pkgs after base Debian testing w/o gui
sudo apt install -y xorg
sudo apt install -y build-essential
#sudo apt install -y amd-microcode
sudo apt install -y intel-microcode
sudo apt install -y pipx
pipx install yt-dlp
sudo apt install -y xfce4 xfce4-goodies
sudo apt install -y curl wget
curl -fsS https://dl.brave.com/install.sh | sh
sudo apt install -y dialog mtools acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
sudo apt install -y alsa-utils volumeicon-alsa
sudo apt install -y cups bluez blueman system-config-printer simple-scan
sudo systemctl enable cups.service
sudo apt install -y exa
sudo systemctl enable bluetooth
sudo systemctl enable cups
sudo apt install -y hplip hplip-gui
sudo apt install -y printer-driver-hpcups
sudo apt install -y micro nala ffmpeg zoxide fzf bat ranger git ncdu vnstat btop mpv foliate
mkdir -p ~/.local/share/fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus
fc-cache -f
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
wget https://github.com/fastfetch-cli/fastfetch/releases/download/v2.39.1/fastfetch-linux-amd64.deb
sudo dpkg -i fastfetch-linux-amd64.deb
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo nala -y update
sudo nala -y install wezterm
pipx install powerline-shell

