# How to Install Neovim on Windows Through WSL

## Introduction
Neovim is a highly configurable, modernized version of Vim (a text editor) that uses keystrokes to manipulate the cursor, removing the need to take a hand off the keyboard to access a mouse. This unique feature allows users to become highly efficient at writing and editing files.

## Installing Windows Subsystem for Linux (WSL)
- Run Windows Command Prompt as administrator.
- Install WSL with the following command:
```
wsl --install
```
- For more information on this topic or troubleshooting, go [here](https://learn.microsoft.com/en-us/windows/wsl/setup/environment).

## Installing Neovim in Ubuntu
- Open the Ubuntu app.
- Create a username and password. All future references to `username` should be replaced with the created username. *Please note that when you type your password, there will be no visual indication that you are typing.*
- Update and upgrade system packages with the following command:
```
sudo apt-get update && sudo apt-get upgrade
```
- Install Neovim with the following command:
```
sudo snap install nvim --classic
```

## Modernize Neovim With Plugins
- Install the packages necessary for the plugins to function using the following command:
```
sudo apt get install build-essential ripgrep unzip libpython3-dev python3-venv
```
- Download this repository as a ZIP file.
- Extract the `nvim-config-main.zip` file.
- Navigate to the `.config` folder in `nvim-config-main`.
- Place the `.config` folder in the Ubuntu home directory `\\wsl.localhost\Ubuntu\home\username`
