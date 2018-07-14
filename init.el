(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/extensions/")

(defvar watcher-cache-directory (expand-file-name ".cache" user-emacs-directory))
(make-directory watcher-cache-directory t)

(setq recentf-save-file (expand-file-name "recentf" watcher-cache-directory))
(with-temp-message ""               ;;抹掉插件启动的输出
  (require 'init-startup)
  (require 'init-elpa)
  (require 'init-functions)
  (require 'init-evil)
  (require 'init-window)
  (require 'init-company)
  (require 'init-dired)
  (require 'init-linum-mode)
  (require 'init-ivy)
  (require 'init-better-edit)
  (require 'init-benchmark)
  (require 'init-modeline)
  (require 'init-theme)
  (require 'init-markdown)
  ;;(require 'init-org)
  (require 'init-misc)
  (require 'init-lisp)
  (require 'init-keybindings)
  )



;; my personal setup, other major-mode specific setup need it.
;; It's dependent on init-site-lisp.el
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

;; @see https://www.reddit.com/r/emacs/comments/4q4ixw/how_to_forbid_emacs_to_touch_configuration_files/
;; (setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(setq custom-file (concat watcher-cache-directory "custom-set-variables.el"))
(load custom-file 'noerror)



