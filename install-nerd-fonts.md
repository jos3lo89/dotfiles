
## install nerd font 
### Nerd fonts
- `IosevkaTerm Nerd Font` [Download](https://www.nerdfonts.com/font-downloads)
- Install
```bash
cd ~/Downloads
unzip IosevkaTermNerdFond.zip -d IosevkaTermNerdFond
sudo cp -r IosevkaTermNerdFond /usr/share/fonts/
sudo fc-cache -fv
```

###  Kitty
- Install `kitty`
```bash
sudo dnf install kitty -y
```
- Change theme in Kitty
```bash
kittem theme
# Search and Choose /Kanagawa_dragon
# choose to create the kitty.conf
# copy the configuration file from ./kitty
```

