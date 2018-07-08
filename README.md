# 安装emacs
[emacs27-pdumper](https://alpha.gnu.org/gnu/emacs/pretest/windows/emacs-27-pdumper/)
# 配置emacs的初始化环境
- 默认配置文件路径
>C:\Users\Administrator\AppData\Roaming\ 
- 配置步骤：
    - 1. C:\Users\Administrator\AppData\Roaming目录下没有.emacs文件。
    - 2. 建立C:\Users\Administrator\AppData\Roaming\.emacs.d\init.el文件；内容如下：
    
    ```elisp
     (setenv "HOME" "C:/SOFT/Emacs/") 
     (setenv "PATH" "C:/SOFT/Emacs/")
     (setq default-directory  "~/")
     (load "C:/SOFT/Emacs/.emacs.d/init.el")
     ;;重新映射emacs的home目录到指定的目录
    ```
# 配置正常的emacs环境
- >  git clone git@github.com:watcher123/.emacs.d.git
- 重启emacs安装插件即可
