(use-package spacemacs-keys
  :ensure nil
  :config
  (spacemacs-keys-set-leader-keys
    "SPC" 'counsel-M-x
    "="  'watcher/indent-region-or-buffer
    "TAB" 'watcher/last-buffer
    ";"  'watcher-comment-dwim
    ;; "/" 'helm-do-ag
    "0" 'winum-select-window-0
    "1" 'winum-select-window-1
    "2" 'winum-select-window-2
    "3" 'winum-select-window-3
    "4" 'winum-select-window-4

    "a l" 'counsel-colors-emacs
    "a r" 'calendar
    "a c" 'calc
    "a e" 'eshell
    "a p" 'esup

    "b b" 'ivy-switch-buffer
    "b o" 'ivy-switch-buffer-other-window
    "b w" 'read-only-mode
    "b s" 'watcher/switch-to-scratch-buffer
    "b m" 'watcher/switch-to-messages-buffer
    "b d" 'watcher/kill-this-buffer
    "b p" 'previous-buffer
    "b n" 'next-buffer
    "b C-d" 'watcher/kill-other-buffers

    "f f" 'counsel-find-file
    "fr" 'counsel-recentf
    "fs" 'save-buffer
    "f J" 'dired-jump-other-window
    "f j" 'dired-jump
    "f o" 'watcher-open-in-external-app
    "fbb" 'counsel-bookmark
    "fbm" 'bookmark-set
    "fbd" 'bookmark-delete
    "fbj" 'bookmark-jump
    "f c" 'watcher/copy-file
    "f y" 'watcher/show-and-copy-buffer-filename
    "f R" 'watcher/rename-current-buffer-file
    "fei" 'watcher/find-user-init-file
    "fec" 'watcher/find-core-file
    "fem" 'watcher/find-modules-file

    "vl" 'watcher-clean-empty-lines
    "t c" 'watcher-toggle-letter-case

    "q q" 'save-buffers-kill-terminal
    "w /" 'watcher/split-window-horizontally
    "w -" 'watcher/split-window-vertically
    "w d" 'watcher/delete-window
    "w o" 'delete-other-windows
    "w =" 'balance-windows
    "w t" 'toggle-window-split

    "h p" 'describe-package
    "h k" 'describe-key
    "h m" 'describe-mode
    "h f" 'describe-function
    "h v" 'describe-variable

    "z=" 'cnfonts-increase-fontsize
    "z-" 'cnfonts-decrease-fontsize
    )
  )

(use-package init-functions
  :config
  (global-set-key (kbd "M-;") 'watcher-comment-dwim))

;; (use-package general :ensure t)

;; (general-define-key
;;  :states '(normal visual)
;;  :prefix "SPC"
;;  "SPC" 'counsel-M-x
;;  ";"   'watcher-comment-dwim
;;  "a"   '(:ignore t :which-key "Applications")
;;  "ad"  'dired
;;  "b"   '(:ignore t :which-key "Buffer")
;;  "bb"  'ivy-switch-buffer
;;  "e"   '(:ignore t :which-key "Emacs")
;;  "eb"  'eval-buffer
;;  "f" '(:ignore t :which-key "Files")
;;  "ff"  'counsel-find-file
;;  "fr"  'counsel-recentf
;;  "fs"  'save-buffer
;;  "q"   '(:ignore t :which-key "Quit")
;;  "qq"   'save-buffers-kill-terminal
;;  "w"   '(:ignore t :which-key "Window")
;;  "w/"  'split-window-right
;;  "w-"  'split-window-below
;;  "wd"  'delete-window
;;  "wo"  'delete-other-windows
;;  "0"   'winum-select-window-0
;;  "1"   'winum-select-window-1
;;  "2"   'winum-select-window-2
;;  "3"   'winum-select-window-3
;;  "4"   'winum-select-window-4
;;  "5"   'winum-select-window-5
;;  "6"   'winum-select-window-6
;;  "7"   'winum-select-window-7
;;  "8"   'winum-select-window-8
;;  "9"   'winum-select-window-9
;;  "h"   '(:ignore t :which-key "Help")
;;  "hv"  'counsel-describe-variable
;;  "hf"  'counsel-describe-function
;;  "hk"  'describe-key
;;  "hm"  'describe-mode
;;  "z"   '(:ignore t :which-key "Zoom")
;;  "z="  'cnfonts-increase-fontsize
;;  "z-"  'cnfonts-decrease-fontsize
;;  )

(provide 'init-keybindings)
