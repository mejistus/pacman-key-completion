#compdef pacman-key

# pacman-key zsh completion plugin
# For pacman-key (pacman) 7.x

_pacman-key() {
    local ret=1

    _arguments -s -S \
        '(-a --add)'{-a,--add}'[Add the specified keys (empty for stdin)]:key file:_files' \
        '(-d --delete)'{-d,--delete}'[Remove the specified keyids]:keyid:' \
        '(-e --export)'{-e,--export}'[Export the specified or all keyids]:keyid:' \
        '(-f --finger)'{-f,--finger}'[List fingerprint for specified or all keyids]:keyid:' \
        '(-l --list-keys)'{-l,--list-keys}'[List the specified or all keys]:keyid:' \
        '(-r --recv-keys)'{-r,--recv-keys}'[Fetch the specified keyids]:keyid:' \
        '(-u --updatedb)'{-u,--updatedb}'[Update the trustdb of pacman]' \
        '(-v --verify)'{-v,--verify}'[Verify the file specified by the signature]:signature file:_files' \
        '--edit-key[Present a menu for key management task]:keyid:' \
        '--import[Imports pubring.gpg from dir(s)]:directory:_files -/' \
        '--import-trustdb[Imports ownertrust values from trustdb.gpg in dir(s)]:directory:_files -/' \
        '--init[Ensure the keyring is properly initialized]' \
        '--list-sigs[List keys and their signatures]:keyid:' \
        '--lsign-key[Locally sign the specified keyid]:keyid:' \
        '--populate[Reload default keys from keyrings]:keyring:' \
        '--refresh-keys[Update specified or all keys from a keyserver]:keyid:' \
        '--verbose[Show extra information]' \
        '--config=[Use an alternate config file]:config file:_files' \
        '--gpgdir=[Set an alternate directory for GnuPG]:gpg directory:_files -/' \
        '--populate-from=[Set an alternate directory for --populate]:keyring directory:_files -/' \
        '--keyserver=[Specify a keyserver to use]:keyserver URL:' \
        '(-h --help)'{-h,--help}'[Show help message and exit]' \
        '(-V --version)'{-V,--version}'[Show program version]' && ret=0

    return ret
}

compdef _pacman-key pacman-key
