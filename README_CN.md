# pacman-key-completion

[pacman-key](https://man.archlinux.org/man/pacman-key.8) (pacman 7.x) 的 Zsh 补全插件，适用于 [Oh My Zsh](https://ohmyz.sh/)。

## 功能

- 补全所有操作（`--add`、`--delete`、`--export`、`--init`、`--populate`、`--recv-keys` 等）
- 补全所有选项（`--config`、`--gpgdir`、`--keyserver` 等）
- 为 `--add`、`--verify`、`--import`、`--config`、`--gpgdir` 提供文件/目录路径补全

## 安装

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/pacman-key-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/pacman-key-completion
```

在 `~/.zshrc` 中添加：

```zsh
plugins=(... pacman-key-completion)
```

### 手动安装

```zsh
source /path/to/pacman-key-completion.plugin.zsh
```

## 使用

```bash
pacman-key --<TAB>        # 显示所有操作和选项
pacman-key --add <TAB>    # 补全密钥文件路径
pacman-key --verify <TAB> # 补全签名文件路径
pacman-key --import <TAB> # 补全目录路径
```

## 支持的选项

| 类别 | 选项 |
|------|------|
| 操作 | `--add` `--delete` `--export` `--finger` `--list-keys` `--recv-keys` `--updatedb` `--verify` `--edit-key` `--import` `--import-trustdb` `--init` `--list-sigs` `--lsign-key` `--populate` `--refresh-keys` |
| 选项 | `--config` `--gpgdir` `--populate-from` `--keyserver` `--verbose` `--help` `--version` |

## 要求

- Zsh 5.0+
- pacman 7.x（Arch Linux）

## 许可证

MIT
