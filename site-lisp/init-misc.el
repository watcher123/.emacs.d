;; ** cnfonts
(use-package cnfonts
  :ensure t
  ;;:demand t
  :if (display-graphic-p)
  :init 
  (setq cnfonts-verbose nil)
  :config
  (cnfonts-enable)
  :bind (("C--" . cnfonts-decrease-fontsize)
         ("C-=" . cnfonts-increase-fontsize)
         ("C-+" . cnfonts-next-profile)))


;; ** undo-tree
(use-package undo-tree
  :ensure t
  :bind (("C-c /" . undo-tree-visualize))
  :config
  (global-undo-tree-mode)
  (add-hook 'undo-tree-visualizer-mode-hook
            #'eh-undo-tree-visualizer-settings)
  (defun eh-undo-tree-visualizer-settings ()
    (interactive)
    (define-key undo-tree-visualizer-mode-map (kbd "C-c C-k") #'undo-tree-visualizer-quit)
    (define-key undo-tree-visualizer-mode-map (kbd "C-k") #'undo-tree-visualizer-quit)
    (define-key undo-tree-visualizer-mode-map (kbd "k") #'undo-tree-visualizer-quit)
    (define-key undo-tree-visualizer-mode-map (kbd "C-g") #'undo-tree-visualizer-abort)))

(use-package popwin
  :ensure t
  :config
  (popwin-mode 1))

(use-package bookmark                   ; Bookmarks for Emacs buffers
  :bind (("C-c f b" . list-bookmarks))
  ;; Save bookmarks immediately after a bookmark was added
  :config (setq bookmark-save-flag 1
		bookmark-default-file (expand-file-name "bookmarks" watcher-cache-directory)))
    
(use-package which-key
  :ensure t
  :defer 2
  :diminish which-key-mode
  :config
  (progn
    (setq which-key-special-keys nil
	  which-key-use-C-h-for-paging t
	  which-key-prevent-C-h-from-cycling t
	  which-key-echo-keystrokes 0.02
	  which-key-max-description-length 32
	  which-key-sort-order 'which-key-key-order-alpha
	  which-key-idle-delay 0.4
	  which-key-allow-evil-operators t)

    (add-to-list 'which-key-description-replacement-alist
		 (cons (rx bos "cb" (* (not (any "/"))) "/" (group (+ nonl)) eos) "\\1"))
    (which-key-add-key-based-replacements
      "SPC a"   "appliction"
      "SPC b"   "buffers"
      "SPC f"   "files"
      "SPC f e" "emacs"
      "SPC f b" "bookmarks"
      "SPC p"   "projects"
      "SPC h"   "help"
      "SPC w"   "window"
      "SPC SPC" "M-x"
      "SPC q"   "quit "
      "SPC g"   "git"
      "SPC o"   "watcher"
      "SPC v"   "visual"
      "SPC x"   "text"
      "SPC t"   "toggle"
      "SPC m"   '("major-mode-cmd" . "Major mode commands")
      "SPC z"   "zoom"
      )
    (which-key-mode)
    ;; (which-key-setup-side-window-right-bottom)
    )
  )

(provide 'init-misc)
