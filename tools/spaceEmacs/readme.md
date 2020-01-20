> [**Spacemacs Rocks**](http://book.emacs-china.org/#orgheadline74)


# 安装 Spacemacs
安装 Spacemacs 非常简单, 只需要将 github 上的仓库克隆即可, 即执行以下命令(如有必要可以先备份以前的配置):


```bash
cd ~
mv .emacs.d .emacs.d.bak
mv .emacs .emacs.bak
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

在克隆完成后直接运行 Emacs. 在第一次使用 Spacemacs 时需要下载一些 Package, 然后在 Bootstrap 完成之后你需要进行如下一些配置:

使用哪种编辑方式, 包括 vim 方式(默认) 以及 emacs 方式.
使用哪种 Spacemacs distribution. 包括标准版(默认)以及基础版. 区别在于标准版包含非常多的功能, 而基础版只包含核心功能.
在完成以上两个配置之后, 就会在 HOME 目录生成一个 ~/.spacemacs 配置文件. 然后 Spacemacs 会进行进一步的初始化, 下载更多的需要的 Package. 如果你需要使用 emacs-china 的配置源, 此时可以终止 emacs, 然后在~/.spacemacs 中的 dotspacemacs/user-init 函数中加入以下代码:

(setq configuration-layer--elpa-archives
      '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
	("org-cn"   . "http://elpa.zilongshanren.com/org/")
	("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")))

重新启动 emacs, 等待 Spacemacs 完成安装即可.

**如果你需要更方便的管理你自己的配置, 可以创建 ~/.spacemacs.d 目录, 然后将 ~/.spacemacs 文件移动到该目录中并重命名为 init.el.**

在 Spacemacs 中的操作方式如下:

按下 SPC f j 打开 dired 目录
按下按键 + , 创建 ~/.spacemacs.d 目录
将光标移动到 .spacemacs 文件上, 按下 R, 将该文件移动到 .spacemacs.d 目录中
进入 .spacemacs.d 目录, 将光标移动到 .spacemacs 文件上, 按下 R, 将该文件重命名为 init.el
按下 qq 退出 dired