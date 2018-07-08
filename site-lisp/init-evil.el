(use-package evil
  :ensure t
  :config
  (setq evil-default-cursor t)
  (setq evil-symbol-word-search t)
  (evil-mode 1)
  ;; Move back the cursor one position when exiting insert mode
  (setq evil-move-cursor-back t)


  ;; {{ specify major mode uses Evil (vim) NORMAL state or EMACS original state.
  ;; You may delete this setup to use Evil NORMAL state always.
  (loop for (mode . state) in
	'((minibuffer-inactive-mode . emacs)
          (calendar-mode . emacs)
          (special-mode . emacs)
          (grep-mode . emacs)
          (Info-mode . emacs)
          (term-mode . emacs)
          (sdcv-mode . emacs)
          (anaconda-nav-mode . emacs)
          (log-edit-mode . emacs)
          (vc-log-edit-mode . emacs)
          (magit-log-edit-mode . emacs)
          (inf-ruby-mode . emacs)
          (direx:direx-mode . emacs)
          (yari-mode . emacs)
          (erc-mode . emacs)
          (neotree-mode . emacs)
          (w3m-mode . emacs)
          (gud-mode . emacs)
          (help-mode . emacs)
          (eshell-mode . emacs)
          (shell-mode . emacs)
          (xref--xref-buffer-mode . emacs)
          ;;(message-mode . emacs)
          (epa-key-list-mode . emacs)
          (fundamental-mode . emacs)
          (weibo-timeline-mode . emacs)
          (weibo-post-mode . emacs)
          (woman-mode . emacs)
          (sr-mode . emacs)
          (profiler-report-mode . emacs)
          (dired-mode . emacs)
          (compilation-mode . emacs)
          (speedbar-mode . emacs)
          (ivy-occur-mode . emacs)
          (ivy-occur-grep-mode . normal)
          (messages-buffer-mode . normal)
          (browse-kill-ring-mode . normal)
          (js2-error-buffer-mode . emacs)
          )
	do (evil-set-initial-state mode state))
  ;; }}


  ;; I prefer Emacs way after pressing ":" in evil-mode
  (define-key evil-ex-completion-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-ex-completion-map (kbd "C-b") 'backward-char)
  (define-key evil-ex-completion-map (kbd "M-p") 'previous-complete-history-element)
  (define-key evil-ex-completion-map (kbd "M-n") 'next-complete-history-element)

  )

(use-package evil-escape
  :ensure t
  :config
  (setq-default evil-escape-delay 0.3)
  (setq evil-escape-excluded-major-modes '(dired-mode))
  (setq-default evil-escape-key-sequence "kj")
  ;; disable evil-escape when input method is on
  (evil-escape-mode 1)
  )
;; change mode-line color by evil state
(lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
	    (lambda ()
	      (let ((color (cond ((minibufferp) default-color)
				 ((evil-insert-state-p) '("#e80000" . "#ffffff"))
				 ((evil-emacs-state-p)  '("#444488" . "#ffffff"))
				 ((buffer-modified-p)   '("#006fa0" . "#ffffff"))
				 (t default-color))))
		(set-face-background 'mode-line (car color))
		(set-face-foreground 'mode-line (cdr color))))))

(provide 'init-evil)
