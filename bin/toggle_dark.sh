if [[ "$1" == 0 ]]; then
    yq e '.colors.primary alias = "light"' -i ~/.config/alacritty/alacritty.yml
    yq e '.theme alias = "light"' -i  ~/.config/spotify-tui/config.yml
else
    yq e '.colors.primary alias = "dark"' -i ~/.config/alacritty/alacritty.yml
    yq e '.theme alias = "dark"' -i  ~/.config/spotify-tui/config.yml
fi
