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
the terminal emulator; if it's not there, you can use the **256 colors version**
of the colorscheme but it doesn't look as polished as the regular one.
Instructions are available at the [vim-gotham][vim-gotham] repository.

You're more than welcome to add support for more platforms. Send me a PR!

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

### Terminal.app

Download [terminal.app/Gotham.terminal](terminal.app/Gotham.terminal). Go into
`Terminal.app > Preferences > Profiles` and on the bottom left of the window,
click the little gear icon and click `Import...`; now select the file you
downloaded. If you want to set the colorscheme as the default one, click the
`Default` button on the right of the gear icon.

**Note** this has been tested with OSX >= 10.9 only, but let me know if it works
with previous versions too (just open an issue), thanks!

### Konsole

Copy the file [Gotham.colorscheme](konsole/Gotham.colorscheme) in the Konsole
colorschemes folder (default `~/.kde/share/apps/konsole`).

Now go into `Configuration > Modify current profile > Appearance` and the colorscheme
Gotham should be in the list. The change of colorscheme is immediate.

### Xresources

Copy the contents of [xresources/gotham](xresources/gotham) into your
`~/.Xresources` config file.

Then run `xrdb ~/.Xresources` to reload the config file and load the gotham
colors.

For more details about configuring Xresources see the [Arch Linux wiki
page][xresources-arch-wiki].

### PuTTY

Download [putty/gotham.reg](putty/gotham.reg).

Double-clicking on it should ask for confirmation that you want to modify the
registry.

Start PuTTY, select "Gotham" from the "Saved Sessions" list and then click
"Load" to load the colors.

### Termite

Copy the contents of [termite/gotham](termite/gotham) to your Termite
configuration file.

``` bash
mkdir -p ~/.config/termite
cd gotham-contrib
cat termite/gotham >> ~/.config/termite/config
```

If Termite is running, do <kbd>CTRL</kbd> + <kbd>SHIFT</kbd> + <kbd>R</kbd> to
reload the config file.

### Terminator

Make a backup of any existing session layouts and other options you may have
and copy [terminator/gotham](terminator/gotham) to `~/.config/terminator/config`
or `$XDG_CONFIG_HOME/terminator/config` if you're running OS X.

Restart terminator to load the Gotham colorscheme.

### Alacritty

Copy the contents of [alacritty/gotham.yml](alacritty/gotham.yml) into your
`$XDG_CONFIG_HOME/alacritty.yml` or `$HOME/.alacritty.yml` after any
pre-existing `colors:` mapping. After saving, it should change automatically.

For more information, see the [Alacritty README][alacritty-configuration].

### Jetbrains IDEs (IntelliJ/Pycharm/WebStorm/PhpStorm/Rider/Clion/Rubymine//Goland)

Download [intellij/Gotham.icls](intellij/Gotham.icls) and then follow the
instructions for your OS.

Open IDE then navigate to: 

(Windows & Linux) `"File > Settings > Editor > Colors Scheme"` 

(OSX) `"PyCharm > Preferences > Editor > Color Scheme"`

Open dropdown by clicking `⚙▾` button which should be next to scheme 
selection window `(Scheme: [...] ⚙▾)`.

Choose `Import Scheme`.

Find and load downloaded `Gotham.icls` file.

Colorscheme should change immediately and `Gotham` should appear on list of available schemas.  
(In case of external schemas, `⚙▾` dropdown contains `delete` option for schema removal)

### Jetbrains IDEs - manual installation:

##### OSX

Navigate to the location where you downloaded the file above and copy it
(<kbd>⌘</kbd>+<kbd>c</kbd>). Then press <kbd>⇧</kbd>+<kbd>⌘</kbd>+<kbd>g</kbd>
and go to `~/Library/Preferences/WebIde80/colors/` or
`~/Library/Preferences/PyCharm30/colors/`.

Paste (<kbd>⌘</kbd>+<kbd>v</kbd>) and restart your IDE. Then navigate to
`Settings > Editor > Colors & Fonts` and select the Gotham colorscheme.

##### Windows

On Windows Explorer, select the file you downloaded and copy it to the
clipboard. Navigate to the colors folder, located in:
`C:/Users/USERNAME/.WebIde80/config/colors` or
`C:/Users/USERNAME/.PyCharm30/config/colors`.

Paste the `.icls` file in and restart your IDE. Then navigate to `File >
Settings > Editor > Colors & Fonts` and select the Gotham colorscheme.

##### Linux

On Linux, the color files are located in `~/.WebIde80/config/colors/` or
`~/.PyCharm30/config/colors/`.

Move the file you downloaded in the appropriate directory and restart your IDE,
then (in the IDE) navigate to `File > Settings > Editor > Colors & Fonts` and
select the Gotham colorscheme.

### Mintty

Download [mintty/.minttyrc](mintty/.minttyrc) and place the contents into your
.minttyrc file.

### Emacs

An Emacs port has been made! The theme with all the necessary installation
instructions are available on the Emacs [gotham-theme][emacs-version]
repository.

### Google Chrome theme

The Gotham colorscheme has been ported to a Chrome theme, which is available [on
the Chrome Web Store][chrome-theme].

### Xcode theme

Copy file [xcode/Gotham.dvtcolortheme](xcode/Gotham.dvtcolortheme) into your
`~/Library/Developer/Xcode/UserData/FontAndColorThemes/`.

Open Xcode, then navigate to `Xcode > Preferences > Fonts & Colors` and select the Gotham theme.

### Sublime Text theme

Go to `Preferences > Browse Packages` in the menu and create a
`Colorsublime-Themes` directory if it doesn't exist yet. Copy
[sublime-text/Gotham.tmTheme](sublime-text/Gotham.tmTheme) there.

You will find the Gotham theme in `Preferences > Color Scheme > Colorsublime-Themes`.

### Sublime Text UI theme

A Gotham sublime text 3 UI theme: [gotham-theme-sublime][gotham-theme-sublime].
Includes the original Gotham sublime color scheme theme by whatyouhide.

### Shell
Download and source on your shell rc file.

    curl --create-dirs -o $HOME/.config/gotham/gotham.sh https://raw.githubusercontent.com/whatyouhide/gotham-contrib/master/shell/gotham.sh

**Bash/ZSH**
```
# Gotham Shell
GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
[[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL
```
**Fish**
```
# Gotham Shell
eval sh $HOME/.config/gotham/gotham.sh
```
See [shell/README.md](shell/README.md) for more information.

### Jupyter notebook

Gotham color scheme for Jupyter notebook is available with installation instructions in [gotham-jupyter][jupyter-theme] repository.

### st

Go to your local repository of the [st][st], merge your own `config.h` with the
values in `st/config.h`. Run `make` and `[sudo] make install`.

### Visual Studio Code

Gotham theme is now available on the [VSCode Marketplace][vscode-theme-marketplace].
You can find more information in the [vscode-theme-gotham][vscode-theme-repo] repository.

### Atom

A Gotham-inspired syntax theme, with special features, is available for Atom: [atom-ubik-syntax][atom-ubik-syntax].

**Installation:** `apm install ubik-syntax`

### Spyder

A Gotham-inspired syntax theme is available for Spyder: [spyder-ubik-syntax][spyder-ubik-syntax].

### Arc Theme

A flat theme with transparent elements based on Gotham scheme for GTK 3, GTK 2 and GNOME Shell which supports GTK 3 and GTK 2 based desktop environments like GNOME, Unity, Budgie, Pantheon, Xfce, MATE, etc. : [arc-theme-gotham][arc-theme-gotham].

### Highlight

A Gotham inspired theme for the syntax highlighting tool [highlight](https://gitlab.com/saalen/highlight) by Andre Simon

**Installation:** The `gotham.theme` file can be installed to `~/.hightlight/themes` or to your system highlight installation such as `/usr/share/highlight/themes/`

See [highlight/README.md](highlight/README.md) for additional info

### xfce4-terminal

Copy the file [xfce4-terminal/gotham.theme](xfce4-terminal/gotham.theme) to `/usr/share/xfce4/terminal/colorschemes/`

Go into `Preferences > Colors > Presets` and the colorscheme Gotham should be in the list. The change of colorscheme is immediate.

## Contributing

I'm more than happy to accept Pull Requests of any kind: bug fixes, support for
other editors/terminal emulators, suggestions.  If something is wrong, you can
help even by just opening an issue.

When you make a PR with support for a new platform (terminal emulator, editor,
whatever) attach a screenshot of the colorscheme in the new platform so it's
easier for me to merge right away! Also, make sure to add a section in this
repository's README that explains how to install the theme on the new platform.

**Note** if you want to tweak the colors and open a PR, make sure to open in
**in [vim's repository][vim-gotham]** and not here. Attach before and after
screenshots!

You can see a list of contributors [here][contributors]. Thanks to every one of
them!


## License

MIT &copy; 2014-2015 Andrea Leopardi, see [the license][license-file].


[logo]: http://i.imgur.com/FDLEzHC.png "Logo"
[screenshot]: http://i.imgur.com/gaGhjqh.png "An iTerm-only screenshot"
[license-file]: LICENSE.txt
[contributors]: https://github.com/whatyouhide/gotham-contrib/graphs/contributors
[zipped]: https://github.com/whatyouhide/iterm2-gotham/archive/master.zip
[vim-gotham]: https://github.com/whatyouhide/vim-gotham
[iterm2]: http://iterm2.com/
[xresources-arch-wiki]: https://wiki.archlinux.org/index.php/Xresources
[emacs-version]: https://github.com/wasamasa/gotham-theme
[chrome-theme]: https://chrome.google.com/webstore/detail/gotham/gnlfcflpgndokoemddgnhampfeaahmhc?authuser=1
[jupyter-theme]: https://github.com/lepisma/gotham-jupyter
[st]: http://st.suckless.org/
[vscode-theme-marketplace]: https://marketplace.visualstudio.com/items?itemName=alireza94.theme-gotham
[vscode-theme-repo]: https://github.com/alireza-ahmadi/vscode-theme-gotham
[atom-ubik-syntax]: https://github.com/mr-ubik/atom-ubik-syntax
[spyder-ubik-syntax]: https://github.com/mr-ubik/spyder-ubik-syntax
[alacritty-configuration]: https://github.com/jwilm/alacritty#configuration
[gotham-theme-sublime]: https://github.com/hjohnson02/gotham-theme-sublime
[arc-theme-gotham]: https://github.com/hjohnson02/arc-theme-gotham
