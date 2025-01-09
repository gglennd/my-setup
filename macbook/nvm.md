## nvm

#### Installation

```bash
# HOMEBREW
$ brew install nvm
```

You should create NVM's working directory if it doesn't exist:

```bash
$ mkdir ~/.nvm
```

Add the following to your shell profile e.g. `~/.profile or ~/.zshrc`:

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
```

#### Usage

[nvm github](https://github.com/nvm-sh/nvm)

#### sample

```bash
# nvm
$ nvm install --lts
```
