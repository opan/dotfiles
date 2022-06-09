### What to install for new workspace

1. iTerm2 (mac): https://iterm2.com/
2. brew (mac, ubuntu): https://brew.sh/
3. Tmux (all): https://github.com/tmux/tmux/wiki/Installing
4. oh-my-zsh (all): https://ohmyz.sh/#install
5. fzf (all) (optional): https://github.com/junegunn/fzf
6. z (all): https://github.com/rupa/z
7. slack (all): (via App Store or Microsoft Store)
8. zoom (all): https://zoom.us/download
9. vscode (all): https://code.visualstudio.com/download
10. Telegram (all): (via App Store or Microsoft Store)
11. Golang (all): (via brew)
12. Rbenv (all): https://github.com/rbenv/rbenv#installation


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
4. Confirm the `rbenv` installation is correct by running below command:
   ```
   curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
   ```
   
