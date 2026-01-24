### terminal en windows
#### Descargar de Microsoft Store
- terminal 
- PowerShell
- oh-my-posh
#### Elegir una nerd font `Iosevka Nerd Font` o `Jetbrains Nerd Font`
#### Crear y abrir archivo
```bash
# crear
New-Item -Path $PROFILE -Type File -Force
# abrir
notepad $PROFILE
```
#### elegir el tema cambiar de tema  modificando `clean-detailed.omp.json`
```bash
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression
```
#### Descargar iconos para la terminal [devblackops/Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
```bash
# descargar
Install-Module -Name Terminal-Icons -Repository PSGallery
# pegar en el archivo de config
Import-Module -Name Terminal-Icons
```
