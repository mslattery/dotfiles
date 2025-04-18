# Slats Dotfiles

## TLDR; or Just Do It!
```console
DEBIAN_FRONTEND=noninteractive apt update && apt install git -y && git clone https://github.com/mslattery/dotfiles.git && cd dotfiles/ && ./install-requirements.sh

./install-profile linux
```
## Required packages
The following packages are required
- **git** - to clone the repo
- **curl** - to install via curl
- **zsh** - because I like it
- **sudo** - becuase I am Root
- **python3** - because the dotbot package needs it

## ZSH Plugins
The following ZSH plugins are included in the zshrc.
|ZSH Plugin|Why|URL|
|:---|:---|:---|
|git|We use git|https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git|
|ssh-agent|We use ssh|https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent|
|zsh-syntax-highlighting|We like it|https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent|
|zsh-autosuggestions|Testing|https://github.com/zsh-users/zsh-autosuggestions|
|aliases|We use aliases|https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aliases|

## Replacements
The following tools are incorporated as well.
|Tool|Replaced By|Why|URL|
|:---|:---|:---|:---|
|ls|eza|Testing|https://github.com/eza-community/eza|

## Work in Progress
- Dotbot - https://github.com/anishathalye/dotbot/ with profiles.  Working well.
