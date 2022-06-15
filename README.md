### What to install for new workspace

1. iTerm2 (mac): https://iterm2.com/
2. brew (mac, ubuntu): https://brew.sh/
3. Tmux (all): https://github.com/tmux/tmux/wiki/Installing
4. oh-my-zsh (all): https://ohmyz.sh/#install
5. fzf (all) (optional): https://github.com/junegunn/fzf
6. fasd (all): (via brew)
7. slack (all): (via App Store or Microsoft Store)
8. zoom (all): https://zoom.us/download
9. vscode (all): https://code.visualstudio.com/download
10. Telegram (all): (via App Store or Microsoft Store)
11. Golang (all): (via brew)
12. Rbenv (all): https://github.com/rbenv/rbenv#installation
13. PostgreSQL (all): (via brew)
14. Jumpcut (free clipboard manager): (via brew)
15. DBeaver: https://dbeaver.io/download/ or via brew

### Configurations

### SSH Key

1. Generate new ssh key with: `ssh-keygen -t rsa`
2. Input passphrase if asked.
3. By default the private and public key will be generate in the home directory, e.g: `~/.ssh/id_rsa`.

### Tmux

1. Install tmux with: `brew install tmux`
2. Create a new config file if not exist: `touch ~/.tmux.conf`.
3. Copy the config from /tmux.conf

### Oh-My-Zsh

Once installed:

1. Install `spaceship` by running the commands below:
  ```
  git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  ```
2. Install Powerline fonts running the commands below:
  ```
  # clone
  git clone https://github.com/powerline/fonts.git --depth=1
  # install
  cd fonts
  ./install.sh
  # clean-up a bit
  cd ..
  rm -rf fonts
  ```
3. Change terminal fonts to use the Powerline fonts, on Mac, change the iTerm2 fonts to fonts that ends with `for Powerline`.
4. Configure zsh to use `spaceship` theme:
  ```
  ZSH_THEME="spaceship"

  ...

  # Spaceship config
  SPACESHIP_PROMPT_ORDER=(
    user
    host
    dir
    git
    ruby
    golang
    terraform
    exit_code
    line_sep
    char
    kubectl
  )

  SPACESHIP_PROMPT_ADD_NEWLINE=true
  SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=false
  SPACESHIP_PROMPT_SEPARATE_LINE=true
  SPACESHIP_CHAR_SYMBOL="›"
  SPACESHIP_CHAR_PREFIX=" "
  SPACESHIP_CHAR_SUFFIX=" "

  # For other options, refer to the official spaceship docs
  ```

### Rbenv
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

### fasd

1. Install with `brew update && brew install fasd`.
2. Add `eval "$(fasd --init auto)"` to the rc file.

### PostgreSQL

1. Install with `brew install postgresql`, for specific version, add `@<version>`.
2. To start the PostgreSQL service, run `brew services restart postgresql` or `brew services restart postgresql@<version>`.
3. Install `libpq` with `brew install libpq` if required.
4. Run `echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc`

Notice:
On macOS m1 chip, you will probably facing an issue while installing `pg` gem. Try step 3 and 4 to fix that.

### Jumpcut

1. Install with `brew install --cask jumpcut`
2. Trigger with `Control + Option + V`.
