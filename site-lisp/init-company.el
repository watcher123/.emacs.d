;; ** 设置 company-mode
(use-package company
  :ensure t
  :defer 5
  :bind (("M-/" . company-complete)
         :map company-active-map
         ("M-i" . company-complete-selection)
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("M-n" . company-select-next)
         ("M-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10)
  (setq company-echo-delay 0)
  (setq company-global-modes
        '(not message-mode git-commit-mode eshell-mode))

  ;; company-dabbrev
  (setq company-dabbrev-char-regexp "[[:word:]_:@.-]+")
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case nil)
  (setq company-require-match nil)
  (setq company-dabbrev-minimum-length 2)

  (setq company-backends
        '((company-capf company-dabbrev company-files)
          (company-dabbrev-code company-gtags company-etags
                                company-keywords)))
  (setq company-transformers
        '(company-sort-by-occurrence))

  (setq company-frontends
        '(company-pseudo-tooltip-frontend
          company-echo-metadata-frontend))

  (if (and (fboundp 'daemonp) (daemonp))
      (add-hook 'after-make-frame-functions
                (lambda (x)
                  (global-company-mode)))
    (global-company-mode)))


(provide 'init-company)
