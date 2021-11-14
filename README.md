# clipboard manager
A very simple clipboard manager script using xclip and dmenu

## Features
* Clipboard History(only text)
* Preserves the copied content in the clipboard if the source application is closed
* Enable/Disable history

## Dependencies
* xclip
* dmenu
* xdotool (if using instant pasting)
## Install
    make install

## Uninstall
    make uninstall

## How to use
* Start the **clipmanager** script. This script needs to run all the time, so autostart it somehow. For example in your xinitrc

        clipmanager &
* Bind the **clipmenu** script to a key combo (here alt + y). For example using [sxhkd](https://github.com/baskerville/sxhkd)

        mod1 + y
                clipmenu
* For pasting on select (depends on xdotool) 

        clipmenu -p  

* you may neet to set xkbmap to properly write special characters

        setxkbmap us/de/... 
* Now you can start copying and pasting
* Use the key combo for selecting an item in the history
* Use clipctl for enabling/disabling the history. This might be useful when copying passwords

        clipctl enable
        clipctl disable

## How it works
### clipmanager
* It checks the copied content against a preferred list of file types (pref_type) and tries to workout the correct one. If it fails you probably use some obscure file type. You can add it to the list. Use the logs to workout the file type if you dont know it.
* If the copied content is text it adds a history entry by writing the copied content to a file in the history directory (.cache/clipboard_history/)
### clipmenu
* It looks at the history directory, works out a preview and is using dmenu to let you select one
### clipctl
* Sends signals to the clipmanager script for enabling/disabling history

## Additional information
* The history size and some other variables can be changed in the script itself.
* The log file is in your cache directory (~/.cache/clipmanager.log)

## Inspired by
* [clip.sh script from karabaja4](https://github.com/karabaja4/arch/blob/master/scripts/clip.sh)
* [clipmenu](https://github.com/cdown/clipmenu)
