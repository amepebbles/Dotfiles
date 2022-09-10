<!--
# Dotfiles

My personal Linux dotfiles

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **Dotfiles**
| :label: Tecnologias | Bash, Shell, Linux
| :rocket: URL         | https://github.com/amepebbles/Dotfiles
| :fire: Desafio     | https://www.alura.com.br/challenges/devops

![](https://github.com/amepebbles/Dotfiles/raw/master/preview/preview.png#vitrinedev)

-->
## Dotfiles🐧
This repository serves the purpose of holding my personal Linux dotfiles. Dotfiles are, simply put, configuration files that hold information on how programs should look, feel and behave. If you'd like to learn more about them consider visiting https://dotfiles.github.io/.

![preview](https://github.com/amepebbles/Dotfiles/raw/master/preview/preview.png)

## Dependencies
To replicate this setup you need to install a couple base dependencies. I'm using Debian so the instructions will be using `apt` as the package manager, you can change it accordingly to your distribution of choice.
```
sudo apt install gdm3 gnome-session gnome-terminal gnome-tweaks nautilus eog vlc gedit vim nano htop keepassxc arc-theme papirus-icon-theme fonts-roboto
```
#### Details
- Colorscheme: [Gruvbox](https://github.com/morhetz/gruvbox)
- GTK theme: [Arc GTK](https://github.com/horst3180/arc-theme)
  - Qt theme: Qt5ct inheriting GTK2
- Icon theme: [Arc](https://github.com/horst3180/arc-icon-theme) inheriting [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- Fonts: Roboto
#### GNOME shell extensions
For the shell extensions I'm using:
- User Themes
- Caffeine
- Dash to Panel
- Appindicators
```
sudo apt install gnome-shell-extensions gnome-shell-extension-caffeine gnome-shell-extension-dash-to-panel gnome-shell-extension-appindicator
```
## Installation
In order to install these files you simply need to `git clone https://github.com/amepebbles/dotfiles` and copy the repository's files to your home directory, creating and replacing files as needed. Use `gnome-tweaks` to apply themes, fonts and extensions. Some GNOME settings are stored through the `dconf` utility which acts like a Windows registry and stores user data I can't publicly share, as such dconf keys and values are not going to be shared in this repository.
## Extra
#### Matching GTK and Qt Theming
I'm using [Qt5ct](https://github.com/desktop-app/qt5ct) and the `qt5-style-plugins` package in order to better harmonize the different desktop applications toolkits look and feel, it allows me to apply GTK2 theming to Qt applications so they feel more integrated with the rest of the desktop.
```
sudo apt install qt5ct qt5ct-style-plugins
```
#### Icon theme inheritance
In order to make Arc icon theme inherit Papirus I had to navigate to Arc's base directory and edit the `index.theme` file to include:
```
Inherits=Papirus,Moka,Adwaita,gnome,hicolor
```
#### GRUB customization
I also edit GRUB settings in order to better monitor all the system processes as they start and finish on boot/shutdown. **CAUTION:** It sets the default timeout to 0, if the system faces any issues you won't be able to set boot-time kernel parameters and as such is not advisable unless you have another way of recovering from system failure, which I do. My `/etc/default/grub` file looks as follows:
```
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
GRUB_DISTRIBUTOR="Debian"
GRUB_CMDLINE_LINUX_DEFAULT=""
GRUB_CMDLINE_LINUX=""
GRUB_BACKGROUND=""
```
