if [[ "$1" == 0 ]]; then
    tomlq -it '.colors.primary.background="#FDF6E3"' .config/alacritty/alacritty.toml
    tomlq -it '.colors.primary.foreground="#657B83"' .config/alacritty/alacritty.toml
    yq e '.theme alias = "light"' -i  ~/.config/spotify-tui/config.yml
else
    tomlq -it '.colors.primary.background="#002B36"' .config/alacritty/alacritty.toml
    tomlq -it '.colors.primary.foreground="#8AA8B3"' .config/alacritty/alacritty.toml
    yq e '.theme alias = "dark"' -i  ~/.config/spotify-tui/config.yml
fi
