# pacman-key-completion

Zsh completion plugin for [pacman-key](https://man.archlinux.org/man/pacman-key.8) (pacman 7.x). Designed for [Oh My Zsh](https://ohmyz.sh/).

## Features

- Complete all operations (`--add`, `--delete`, `--export`, `--init`, `--populate`, `--recv-keys`, etc.)
- Complete all options (`--config`, `--gpgdir`, `--keyserver`, etc.)
- File/directory path completion for `--add`, `--verify`, `--import`, `--config`, `--gpgdir`

## Installation

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/pacman-key-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/pacman-key-completion
```

Add to `~/.zshrc`:

```zsh
plugins=(... pacman-key-completion)
```

### Manual

```zsh
source /path/to/pacman-key-completion.plugin.zsh
```

## Usage

```bash
pacman-key --<TAB>        # Show all operations and options
pacman-key --add <TAB>    # Complete key file paths
pacman-key --verify <TAB> # Complete signature file paths
pacman-key --import <TAB> # Complete directory paths
```

## Supported Options

| Category | Options |
|----------|---------|
| Operations | `--add` `--delete` `--export` `--finger` `--list-keys` `--recv-keys` `--updatedb` `--verify` `--edit-key` `--import` `--import-trustdb` `--init` `--list-sigs` `--lsign-key` `--populate` `--refresh-keys` |
| Options | `--config` `--gpgdir` `--populate-from` `--keyserver` `--verbose` `--help` `--version` |

## Requirements

- Zsh 5.0+
- pacman 7.x (Arch Linux)

## License

MIT
