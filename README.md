# hello_user
Simple greeting script for Linux. Add to .bashrc

Neofetch wanted to pull 26 MB of dependencies when I wanted to install it on my Debian server so I made this instead.

It will display a distro banner and some system info:
- uptime
- load averages
- free memory
- free swap
- free space on /
- (optionally) free space on other mounting points

```
            _,met$$$$$gg.
         ,g$$$$$$$$$$$$$$$P.
       ,g$$P""       """Y$$.".
      ,$$P'              `$$$.
    ',$$P       ,ggs.     `$$b:
    `d$$'     ,$P"'   .    $$$                               ,#.
     $$P      d$'     ,    $$P      ##:          :##        :###:
     $$:      $$.   -    ,d$$'      ##'          `##         `#'
     $$;      Y$b._   _,d$P'    __  ##     __     ##  __      _     __          _
     Y$$.    `.`"Y$$$$P"'     ,####:##  ,######.  ##.#####. :### ,######. ###.####:
     `$$b      "-.__         ,##' `###  ##:  :##  ###' `###  ##' #:   `## `###' `##:
      `Y$$b                  ##    `##  ##    ##  ##'   `##  ##    ___,##  ##:   `##
       `Y$$.                 ##     ##  #######:  ##     ##  ##  .#######  ##'    ##
         `$$b.               ##     ##  ##'       ##     ##  ##  ##'  `##  ##     ##
           `Y$$b.            ##.   ,##  ##        ##    ,##  ##  ##    ##  ##     ##
             `"Y$b._         :#:._,###  ##:__,##  ##:__,##' ,##. ##.__:##. ##     ##
                 `""""       `:#### ###  ######'  `######'  #### `#####"## ##     ##

    Uptime          : up 13 hours, 20 minutes
    Load averages   : 2.04 1.81 1.68 3/1010 440137
    Free memory     : 11Gi
    Free swap       : 0B
    Free space on / : 32G
```

## Dependencies
- linux_logo (https://github.com/deater/linux_logo)
- uptime
- head
- tail
- awk
- column

## Installation
- Download
- Install in your scripts folder
- Add to .bashrc

## Usage

- Display the logo and system info like shown above
    > hello_user

- Also display free space on /mnt/data
    > hello_user /mnt/data
