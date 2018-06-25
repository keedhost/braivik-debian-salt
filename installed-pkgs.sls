apt-transport-https:
  pkg.installed

steam:
  pkgrepo.managed:
    - humanname: 'Steam Repo'
    - name: deb http://http.debian.net/debian/ jessie main contrib non-free
    - file: /etc/apt/sources.list.d/steam.list
    - refresh_db: False
#    - watch_in:
#       - cmd: 'apt-get update'

apt-update:
  cmd.run:
    - name: apt-get update

installed:
  pkg.installed:
    - pkgs:
      - xfce4
      - xfce4-goodies
      - fish
      - fish-common
      - vim
      - vim-common
      - chromium
      - gimp
      - inkscape
      - mc
      - virtualbox
      - cmake
      - cryptoplugin
      - cryptsetup-bin
      - firmware-iwlwifi
      - firmware-linux-free
      - firmware-linux-nonfree
      - firmware-misc-nonfree
      - google-musicmanager-beta
      - google-play-music-desktop-player
      - gparted
      - gstreamer1.0-alsa:amd64
      - gstreamer1.0-libav:amd64
      - gstreamer1.0-plugins-base:amd64
      - gstreamer1.0-plugins-good:amd64
      - gstreamer1.0-plugins-ugly:amd64
      - gstreamer1.0-pulseaudio:amd64
      - keepass2
      - make
      - mesa-utils
      - mousepad
      - mplayer
      - network-manager
      - network-manager-gnome
      - ntfs-3g
      - p7zip
      - p7zip-full
      - parted
      - ristretto
      - rocketchat
      - salt-common
      - salt-master
      - salt-minion
      - screen
      - shutter
#      - steam:i386
#      - steam-launcher
#      - teamviewer:i386
      - transmission
      - transmission-common
      - transmission-gtk
      - htop

install_teamwiever:
  pkg.installed:
    - sources:
      - teamviewer: https://download.teamviewer.com/download/teamviewer_i386.deb

install_steam:
  pkg.installed:
    - sources:
      - steam: https://steamcdn-a.akamaihd.net/client/installer/steam.deb