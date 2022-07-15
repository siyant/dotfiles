## siyan's dotfiles for mac

- Download dotfiles from GitHub
- Run `bootstrap.sh`
- Restart computer for mac settings to take effect
- Login to dropbox
- Set up Alfred with preferences from dropbox

Other things to set up manually:

- [Microsoft office](https://account.microsoft.com/services)
- Fonts: [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- VPN config
- [Logitech Options](https://www.logitech.com/en-us/software/options.html) for mouse settings
- Firefox extensions: [Vimium](https://addons.mozilla.org/en-GB/firefox/addon/vimium-ff/), [uBlock Origin](https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/), [HTTPS everywhere](https://addons.mozilla.org/en-GB/firefox/addon/https-everywhere/)
- Python virtual env: `pip3 install virtualenv virtualenvwrapper`

## Generate/update the dotfiles

`brew bundle dump --force`
