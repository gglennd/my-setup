### Use SSH on Github

#### Generating a new SSH key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

#### Adding your SSH key to the ssh-agent

1. Start the ssh-agent in the background.

```bash
$ eval "$(ssh-agent -s)"
> Agent pid 59566
```

2. First, check to see if your ~/.ssh/config file exists in the default location. If the file doesn't exist, create the file.

```bash
touch ~/.ssh/config
```

on ~/.ssh/config

```text
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

3. Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

[learn more](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

#### List all running ssh-agent

```bash
pgrep -af ssh-agent
```

#### Kill all running ssh-agent

```bash
pkill ssh-agent
# or
kill -9 ${PID}
```
