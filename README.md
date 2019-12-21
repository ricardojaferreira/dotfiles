# Steps for setting up everything

## Settings

### General
- Appearance -> Dark

### Mission Control (Hotcorners)
- Top Right: Mission Control
- Top Left: Desktop
- Bottom Left: Launchpad 

### Keyboard
#### Shortcuts -> Mission Control
- Change shortcuts that use Control (^) to use Option instead. The control is used by some shortcuts in iTerm.

#### Modifier Keys
- Caps Lock send Escape key

### Trackpad
- Remove Scroll direction natural
- SLightly reduce _Tracking speed_

###  Display & Screen Saver
- Dark (still) mode

### Software Update
- Disable Automatic keep my mac up to date
- Advanced:
    - [x] Check for updates
    - [x] Download new updates when available
    - [x] Install system data files and security updates

### Displays (Night Shift)
- From 22:00 to 07:00
- Colour Temperature a little Less Warm

### Energy Saver
- Battery
    - [x] Turn display off after 3 min
    - [x] Put hard disks to sleep when possible
    - [x] Slightly dim the display while on battery power
    - [x] Show battery status in menu bar
- Power Adapter
    - Turn display off after: 10min.
    - [x] Preventing computer from sleeping when the display is off
    - [x] Enable Power nap 


## Applications
- [HTTPie}(https://httpie.org/): Make http calls on the browser with some cool supports and highlights
- [Rectangle](https://github.com/rxhanson/Rectangle): brew cask install rectangle 
- [Spectacle](https://www.spectacleapp.com/)
    - Shortcuts:
        - Left: Cmd + Option + Left
        - Right: Cmd + Option + Left
        - Up: Cmd + Option + Up
        - Next Display: Ctrl + Option + Left
        - Previous display: Ctrl + Option + Right
        - Center: Option + Command + C
        - Maximize: Option + Command + F
        - Make smaller: Shift + Ctrl + Option + Left
        - Make larger: Sgift + Ctrl + Option + Right
        - Restore: Ctrl + Option + Delete
- [Pock](https://pock.dev/): Dock Widget to Touchbar
- [Amphetamine](https://apps.apple.com/pt/app/amphetamine/id937984704?mt=12): Keep your mac awake
- [Bear Notes](https://bear.app/): Notes app
- [imdone](https://imdone.io): Kanban integration for TODOS in code
- [Paste App](https://pasteapp.me): Clipboard history
- [Copy Clip](https://apps.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12): Clipboard history
- [Franz](https://meetfranz.com/): Messaging services aggregator
- [Shift](https://tryshift.com/): Messaging services aggregator
- [Postman](https://www.getpostman.com/): Tool for testing API's
- [Karabiner Elements](https://pqrs.org/osx/karabiner/): Keyboard customizer
- [Gimp](https://www.gimp.org/): Image editor
- [Gramarly](https://app.grammarly.com/): Text writer assistant
- [Enpass](https://www.enpass.io/): Password manager
- [NordVPN](https://apps.apple.com/us/app/vpn-by-nordvpn-web-security/id1116599239?mt=12): VPN

## Terminal Add Ons
- [mdless](https://brettterpstra.com/2015/08/21/mdless-better-markdown-in-terminal/): Markdown viewer for terminal
	- Installation: sudo gem install mdless (needs ruby)
	- Usage: mdless [optiopns] path/to/file or cat [path/to/file] | mdless
	-[options] 
		- -c, --[no-]color                 Colorize output (default on)
		- -d, --debug LEVEL                Level of debug messages to output
		- -h, --help                       Display this screen
		- -i, --images=TYPE                Include [local|remote (both)] images in output (requires imgcat and iTerm2, default NONE)
		- -I, --all-images                 Include local and remote images in output (requires imgcat and iTerm2)
		- 	--links=FORMAT               Link style ([inline, reference], default inline) [NOT CURRENTLY IMPLEMENTED]
		- -l, --list                       List headers in document and exit
		- -p, --[no-]pager                 Formatted output to pager (default on)
		- -P                               Disable pager (same as --no-pager)
		- -s, --section=NUMBER             Output only a headline-based section of the input (numeric from --list)
		- -t, --theme=THEME_NAME           Specify an alternate color theme to load
		- -v, --version                    Display version number
		- -w, --width=COLUMNS              Column width to format for (default terminal width)

## Dotfiles

Clone dotfiles to ~/.dotfiles

Some notes:
- Run :PlugInstall on Vim to activate extensions
- Copy .zshrc to the correct folder (the original zshrc is not overrided.)




