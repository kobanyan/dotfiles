# dotfiles

## PreInstall

### ubuntu

```bash
sudo bash -c "echo '* - nofile 10240' >> /etc/security/limits.conf"
```

### osx
```bash
sudo softwareupdate --install-rosetta
```

## Install

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/kobanyan/dotfiles/main/bin/install.sh)"
bash -c "$(wget -qO - https://raw.githubusercontent.com/kobanyan/dotfiles/main/bin/install.sh)"
```

## Test

```bash
bundle install
bundle exec rspec
```

## Develop

```bash
bundle install
bundle exec guard
```
