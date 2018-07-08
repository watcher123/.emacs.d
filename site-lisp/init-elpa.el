(require 'package)
(package-initialize)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                          ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; Install 'use-package' if necessary
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'cl)
;; Enable use-package
(eval-when-compile
  (require 'use-package))

(use-package diminish
  :ensure t)
(use-package bind-key
  :ensure t)

(use-package general :ensure t)

(provide 'init-elpa)



