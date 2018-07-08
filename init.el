(add-to-list 'load-path "~/.emacs.d/site-lisp/")



(with-temp-message ""               ;;抹掉插件启动的输出
  (require 'init-startup)
  (require 'init-elpa)
  (require 'init-functions)
  (require 'init-window)
  (require 'init-company)
  (require 'init-dired)
  (require 'init-linum-mode)
  (require 'init-ivy)
  (require 'init-better-edit)
  (require 'init-benchmark)
  (require 'init-modeline)
  (require 'init-theme)
  (require 'init-misc)
  (require 'init-keybindings)
  )



;; my personal setup, other major-mode specific setup need it.
;; It's dependent on init-site-lisp.el
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

;; @see https://www.reddit.com/r/emacs/comments/4q4ixw/how_to_forbid_emacs_to_touch_configuration_files/
(setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(load custom-file 'noerror)



