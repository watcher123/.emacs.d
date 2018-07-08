(use-package dired
  :ensure nil
  :config
  (setq dired-recursive-copies t)                                ;;可以递归的进行拷贝
  (setq dired-recursive-deletes t)                                ;;可以递归的删除目录
  (setq dired-recursive-deletes 'always)                      ;;删除东西时不提示
  (setq dired-recursive-copies 'always)                       ;;拷贝东西时不提示
  (setq dired-details-hidden-string "[ ... ] ")                ;;设置隐藏dired里面详细信息的字符串
  (setq dired-dwim-target t)                                      ; ;Dired试着猜处默认的目标目录

  (put 'dired-find-alternate-file 'disabled nil)
  (with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))  ;; 延迟加载
  )
(provide 'init-dired)
