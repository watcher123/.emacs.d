(defun watcher-comment-dwim ()
  "Like `comment-dwim', but toggle comment if cursor is not at end of line.

URL `http://ergoemacs.org/emacs/emacs_toggle_comment_by_line.html'
Version 2016-10-25"
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let (($lbp (line-beginning-position))
          ($lep (line-end-position)))
      (if (eq $lbp $lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) $lep)
            (progn
              (comment-dwim nil))
          (progn
            (comment-or-uncomment-region $lbp $lep)
            (forward-line )))))))

(defun watcher-dos2unix ()
  "将dos换行方式转换为unix的换行方式,用于去除^M"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(defun watcher-unix2dos ()
  "将unix换行方式转换为dos的换行方式"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))

(defun watcher-revert-buffer-with-gbk ()
  (interactive)
  (revert-buffer-with-coding-system 'gbk-dos))

(defun watcher-revert-buffer-with-utf8 ()
  (interactive)
  (revert-buffer-with-coding-system 'utf-8-unix))

(defun watcher-save-buffer-with-gbk (&optional arg)
  (interactive)
  (set-buffer-file-coding-system 'gbk-dos)
  (save-buffer arg))

(defun watcher-save-buffer-with-utf8 (&optional arg)
  (interactive)
  (set-buffer-file-coding-system 'utf-8-unix)
  (save-buffer arg))

(defun watcher-utf8-language-environment ()
  "设置utf-8语言环境"
  (interactive)
  (set-language-environment "UTF-8")
  (set-buffer-file-coding-system 'utf-8-unix)
  (set-clipboard-coding-system 'utf-8-unix)
  (set-file-name-coding-system 'utf-8-unix)
  (set-keyboard-coding-system 'utf-8-unix)
  (set-next-selection-coding-system 'utf-8-unix)
  (set-selection-coding-system 'utf-8-unix)
  (set-terminal-coding-system 'utf-8-unix))

(defun watcher-gbk-language-environment ()
  "设置gbk语言环境"
  (interactive)
  (set-language-environment "Chinese-GBK")
  (set-buffer-file-coding-system 'gbk-dos)
  (set-clipboard-coding-system 'gbk-dos)
  (set-file-name-coding-system 'gbk-dos)
  (set-keyboard-coding-system 'gbk-dos)
  (set-next-selection-coding-system 'gbk-dos)
  (set-selection-coding-system 'gbk-dos)
  (set-terminal-coding-system 'gbk-dos))

(provide 'init-functions)
