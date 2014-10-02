![logo][logo]

Gotham is a **very dark** colorscheme. It was built for vim ([link][vim-gotham]
to vim colorscheme), but this repository contains versions of the colorscheme
tailored for a bunch of other platforms.

## Installation

If you use GUI vim (MacVim or gVim), [vim-gotham][vim-gotham] is the vim version
of the Gotham colorscheme. Details and installation instructions for vim are
available in the vim-gotham repository.

If you use terminal vim, check if your terminal emulator is listed in one of the
following ones. If it is, follow the instructions to install the colorscheme for
the terminal emulator; if it's not there, it's not supported. You're more than
welcome to add support for it and send me a Pull Request!

### iTerm 2

[Download][zipped] the repository, unzip it and double-click on the
`iterm2/Gotham.itermcolors` file. iTerm will confirm the colorscheme has been
installed.

**Note** if you're on iTerm ~2.0 (stable), do the same thing but with the
`iterm2/Gotham-stable.itermcolors` file.

Now go into `Preferences > Profiles > Colors` and select `Gotham` (or
`Gotham-stable`) from the `Color Presets...` menu.

If double-clicking doesn't work, you can go to `Preferences > Profiles > Colors`
and select `Import...` from the `Color Presets...` menu. From there, select the
theme file (`.itermcolors`) and it will be imported. Now set the colorscheme to
`Gotham` (or `Gotham-stable`).

### Xresources

Copy the contents of [xresources/gotham](xresources/gotham) into your
`~/.Xresources` config file.

Then run `xrdb ~/.Xresources` to reload the config file and load the gotham
colors.

For more details about configuring Xresources see the [Arch Linux wiki
page](https://wiki.archlinux.org/index.php/Xresources)

## Contributing

I'm more than happy to accept Pull Requests of any kind: bug fixes, support for
other editors/terminal emulators, suggestions. If something is wrong, you can
help even by just opening an issue.

**Note** if you want to tweak the colors and open a PR, make sure to open in
**in [vim's repository][vim-gotham]** and not here. Attach before and after
screenshots!


## License

MIT &copy; 2014 Andrea Leopardi, see [the license][license-file].


[logo]: http://i.imgur.com/FDLEzHC.png "Logo"
[screenshot]: http://i.imgur.com/gaGhjqh.png "An iTerm-only screenshot"
[license-file]: LICENSE.txt
[zipped]: https://github.com/whatyouhide/iterm2-gotham/archive/master.zip
[vim-gotham]: https://github.com/whatyouhide/vim-gotham
[iterm2]: http://iterm2.com/
