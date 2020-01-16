[官方中文网站](https://spacevim.org/cn/)

[官方中文手册](https://spacevim.org/cn/documentation/)

[官方中文入门指南](https://spacevim.org/cn/quick-start-guide/)

[GitHub 中文READE](https://github.com/SpaceVim/SpaceVim/blob/master/README.cn.md)


> SpaceVim 安装脚本 : V 1.3.0
>
>   这是 SpaceVim 初始化脚本，可用于定制安装、更新及卸载 SpaceVim。
>
> 使用
>
>   curl -sLf https://spacevim.org/cn/install.sh | bash -s -- [选项] [对象]
>
> 所有选项
>
>  -i, --install            为 vim 和 neovim 安装 SpaceVim
>  -v, --version            显示当前安装脚本的版本
>  -u, --uninstall          卸载 SpaceVim
>  -c, --checkRequirements  检测环境依赖
>
> 使用示例
>
>     默认同时为 vim 和 neovim 安装 SpaceVim
>
>         curl -sLf https://spacevim.org/cn/install.sh | bash
>
>     只为 vim 或者 neovim 单独安装 SpaceVim
>
>         curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install vim
>         curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install neovim
>
>     卸载 SpaceVim
>
>         curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --uninstall