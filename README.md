# Slats Dotfiles

## TLDR; or How To
```
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

## Replacements
The following tools are incorporated as well.
|Tool|Replaced By|Why|URL|
|:---|:---|:---:|:---:|
|ls|eza|Testing|https://github.com/eza-community/eza|
|tool2|Text|url|

## Work in Progress
- Dotbot - https://github.com/anishathalye/dotbot/ with profiles.  Working well.
