(use-package smex
  :ensure t
  :config
  (smex-initialize))

(use-package counsel
  :bind
  (("C-c C-r" . ivy-resume)
   ("M-x" . counsel-M-x)
   ("C-x b" . ivy-switch-buffer)
   ("C-x f" . counsel-recentf)
   ("C-x C-b" . ivy-switch-buffer)
   ("C-x C-f" . counsel-find-file)
   ("C-h f" . counsel-describe-function)
   ("C-h v" . counsel-describe-variable)
   ("C-c y" . counsel-yank-pop))
  ("\C-s" .  swiper)
  )

(use-package swiper
  :demand t
  :bind (
         :map ivy-minibuffer-map
         ;; I use "C-x C-f" to open file, so bind "C-f" to
         ;; `ivy-immediate-done' is very useful.
         ("C-f" . ivy-immediate-done)

         ([mouse-1] . ignore)
         ([mouse-3] . ignore)
         ([mouse-4] . ivy-next-line)
         ([mouse-5] . ivy-previous-line))
  :config
  (ivy-mode 1)
  (setq ivy-count-format ""
        ivy-use-virtual-buffers t
        ivy-format-function #'ivy-format-function-arrow
        ivy-display-style 'fancy
        ivy-use-selectable-prompt t)
  (push '(counsel-M-x . "") ivy-initial-inputs-alist)
  (push '(counsel-describe-function . "") ivy-initial-inputs-alist)
  (push '(counsel-describe-variable . "") ivy-initial-inputs-alist))




(provide 'init-ivy)
