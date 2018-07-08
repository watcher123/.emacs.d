(electric-pair-mode 1)                ;; 自动插入括号匹配
(delete-selection-mode 1)            ;; 删除选中的文字，并替换
(show-paren-mode 1)                  ;; 高亮匹配的括号
(save-place-mode 1)                  ;; 记住光标的位置

;;强制代码进行格式化
(use-package aggressive-indent
  :ensure t
  :config
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  (add-hook 'python-mode-hook #'aggressive-indent-mode)
  )


(provide 'init-better-edit)


