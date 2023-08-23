# About
My personal nvim configuration written in lua.

- Fastest startup time in 20-35ms(depends ssd) with 42 plugins

![QQ20210112-155113](https://user-images.githubusercontent.com/41671631/104285066-06ebd300-54ee-11eb-9652-b2d9cc1f9ce0.png)

# prepare
安装npm、yarn、nodejs、clangd
## 安装高版本node
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt install nodejs


## 安装高版本nvim
sudo apt install software-properties-common  

sudo apt update 

sudo add-apt-repository ppa:neovim-ppa/stable 

sudo apt install neovim 

## Coc插件
python补全：CocInstall coc-pyright

