#!/run/current-system/sw/bin/zsh

# Simple list of applications including our custom scripts
apps="excel
word
powerpoint
windows
outlook
explorer
notepad
onedrive
thunar
blueman
virt-manager
pavucontrol
printer-settings
nm-connection-editor
sway-settings
file-roller
vlc
lunarclient"

# Show menu and get selection
selection=$(echo "$apps" | wofi --show dmenu --prompt "Launch:")

# Execute based on selection
case "$selection" in
    "excel")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/excel
        else
            exec win & 
            exec /usr/bin/excel
        fi
        ;;
    "word")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/word
        else
            exec win & 
            exec /usr/bin/word
        fi
        ;;
    "powerpoint")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/powerpoint
        else
            exec win & 
            exec /usr/bin/powerpoint
        fi
        ;;
    "windows")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/windows
        else
            exec win & 
            exec /usr/bin/windows
        fi
        ;;
    "outlook")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/outlook
        else
            exec win & 
            exec /usr/bin/outlook
        fi
        ;;
    "explorer")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/explorer
        else
            exec win & 
            exec /usr/bin/explorer
        fi
        ;;
    "notepad")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/notepad
        else
            exec win & 
            exec /usr/bin/notepad
        fi
        ;;
    "onedrive")
        if [[ -n $( pgrep -x "win" ) ]]; then
            exec /usr/bin/onedrive
        else
            exec win & 
            exec /usr/bin/onedrive
        fi
        ;;
    "thunar")
        exec thunar
        ;;
    "blueman")
        exec blueman-manager
        ;;
    "virt-manager")
        exec virt-manager
        ;;
    "pavucontrol")
        exec pavucontrol
        ;;

    "printer-settings")
        exec system-config-printer
        ;;
    "nm-connection-editor")
        exec nm-connection-editor
        ;;
    "sway-settings")
        exec swaysettings
        ;;
    "file-roller")
        exec file-roller
        ;;
    "vlc")
        exec vlc
        ;;
    "lunarclient")
        exec lunarclient
        ;;
esac
