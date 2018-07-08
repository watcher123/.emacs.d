(use-package winum
  :ensure t
  :config
  (set-face-attribute 'winum-face nil :weight 'bold)
  (setq window-numbering-scope            'global
	winum-reverse-frame-list          nil
	winum-auto-assign-0-to-minibuffer t
	winum-assign-func                 'my-winum-assign-func
	winum-auto-setup-mode-line        t
	winum-mode-line-position          1
	winum-ignored-buffers             '(" *which-key*"))
  (winum-mode 1))


(provide 'init-window) 
