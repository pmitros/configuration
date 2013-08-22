(modify-frame-parameters nil '((wait-for-wm . nil)))
(menu-bar-mode -1)
(tool-bar-mode -1)
(set-default-font "-adobe-courier-medium-r-normal--10-100-75-75-m-60-iso8859-1")
; (set-default-font "-adobe-courier-medium-r-normal--12-120-75-75-m-70-iso8859-1")

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))

(put 'downcase-region 'disabled nil)
(setq inhibit-splash-screen t)

;(add-to-list 'load-path "~/.emacs.d/vendor/pymacs-0.24-beta2")
;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)

(add-to-list 'load-path "/home/pmitros/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/pmitros/.emacs.d//ac-dict")
(ac-config-default)

