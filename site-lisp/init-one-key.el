(defvar one-key-menu-directory-alist nil
  "The `one-key' menu alist for DIRECTORY.")

(setq one-key-menu-directory-alist
      '(
        (("h" . "Home") . (lambda () (interactive) (dired-x-find-file "~/")))
        (("b" . "Book") . (lambda () (interactive) (dired-x-find-file "/space/data/Book")))
        (("p" . "Emacs Package") . (lambda () (interactive) (dired-x-find-file lazycat-emacs-root-dir)))
        (("z" . "Elisp") . (lambda () (interactive) (dired-x-find-file (concat lazycat-emacs-extension-dir "/lazycat"))))
        (("c" . "Config") . (lambda () (interactive) (dired-x-find-file lazycat-emacs-config-dir)))
        ((";" . "Android SDK") . (lambda () (interactive) (dired-x-find-file "/usr/local/android-sdk-linux_86")))
        (("e" . "Emacs") . (lambda () (interactive) (dired-x-find-file "/usr/share/deepin-emacs/")))
        (("s" . "Space") . (lambda () (interactive) (dired-x-find-file "/space")))
        (("x" . "Reading") . (lambda () (interactive) (dired-x-find-file "/space/data/Book/Reading")))
        ))

(defun one-key-menu-directory ()
  "The `one-key' menu for DIRECTORY."
  (interactive)
  (one-key-menu "DIRECTORY" one-key-menu-directory-alist t))

(defvar one-key-menu-ui-alist nil
  "The `one-key' menu alist for UI.")

(setq one-key-menu-ui-alist
      '(
        (("t" . "Tool-Bar") . tool-bar-mode)
        (("m" . "Menu-Bar") . menu-bar-mode)
        (("c" . "Scroll-Bar") . scroll-bar-mode)))

(defun one-key-menu-ui ()
  "The `one-key' menu for UI."
  (interactive)
  (one-key-menu "UI" one-key-menu-ui-alist t))

(provide 'init-one-key)
