(use-package init-functions
  :config
  (global-set-key (kbd "M-;") 'watcher-comment-dwim)) 

(use-package general :ensure t)

(general-define-key
 :states '(normal visual)
 :prefix "SPC"
 "SPC" 'counsel-M-x
 ";"   'watcher-comment-dwim
 "a"   '(:ignore t :which-key "Applications")
 "ad"  'dired
 "b"   '(:ignore t :which-key "Buffer")
 "bb"  'ivy-switch-buffer
 "f" '(:ignore t :which-key "Files")
 "ff"  'counsel-find-file
 "fr"  'counsel-recentf
 "q"   '(:ignore t :which-key "Quit")
 "qq"   'save-buffers-kill-terminal 
 "w"   '(:ignore t :which-key "Window")
 "w/"  'split-window-right
 "w-"  'split-window-below
 "wd"  'delete-window
 "wo"  'delete-other-windows
 "0"   'winum-select-window-0
 "1"   'winum-select-window-1
 "2"   'winum-select-window-2
 "3"   'winum-select-window-3
 "4"   'winum-select-window-4
 "5"   'winum-select-window-5
 "6"   'winum-select-window-6
 "7"   'winum-select-window-7
 "8"   'winum-select-window-8
 "9"   'winum-select-window-9
 )                            
(provide 'init-keybindings)
