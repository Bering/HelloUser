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

![Screenshot](./screenshot.png)


## Dependencies
- NerdFonts (https://www.nerdfonts.com/) (optional)
- uptime
- head
- tail
- awk
- column


## Installation
- Install the script
  ```
  git clone https://github.com/Bering/hello_user.git
  cd hello_user
  sudo make install
  ```
- Append to your .bashrc, .zshrc, etc...
  ```
  echo "hello_user" >> .bashrc
  ```
- Make sure your terminal uses a NerdFont (or make sure you use --no-icons)


## Usage

- Display the logo and system info like shown above
  ```
  hello_user
  ```

- Also display free space on /mnt/data
  ```
  hello_user -m "/,/mnt/data"
  ```

- Don't display the icons
  ```
  hello_user --no-icons
  ```
