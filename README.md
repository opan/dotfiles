### What to install for new workspace

1. iTerm (mac): https://iterm2.com/
2. brew (mac, ubuntu): https://brew.sh/
3. Tmux (all): https://github.com/tmux/tmux/wiki/Installing
4. oh-my-zsh (all): https://ohmyz.sh/#install
5. fzf (all): https://github.com/junegunn/fzf
6. slack (all): (via App Store or Microsoft Store)
7. zoom (all): https://zoom.us/download
8. vscode (all): https://code.visualstudio.com/download
9. Telegram (all): (via App Store or Microsoft Store)
10. Golang (all): (via brew)
11. Rbenv (all): https://github.com/rbenv/rbenv#installation


### Configurations

#### Rbenv
Once installed:

1. Run `rbenv init`.
2. There should an instruction to add the following lines to `.zshrc` or `.bashrc` (whether you used zsh or not):
  ```
  # Load rbenv automatically by appending
  # the following to ~/.zshrc:

  eval "$(rbenv init - zsh)"
  ```
3. Reload rc file with `source ~/.zshrc` or `source ~/.bashrc`.
