(use-package spacemacs-keys
  :ensure nil
  :config
  (spacemacs-keys-declare-prefix-for-mode 'emacs-lisp-mode
					  "me" "eval"
					  )
  )

(defun watcher/lisp-keybindings ()
  (spacemacs-keys-set-leader-keys-for-major-mode 'emacs-lisp-mode
    "eb" 'eval-buffer
    "er" 'eval-region
    )
  )

(add-hook 'emacs-lisp-mode-hook 'watcher/lisp-keybindings)

(provide 'init-lisp)
