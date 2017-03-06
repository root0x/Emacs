;;; package --- Summary
;;; Comentary:
;;; Code:

(add-to-list 'load-path "~/.emacs.d/plugins/helm")
(add-to-list 'load-path "~/.emacs.d/plugins/async")

(require 'helm-config)
(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-x b")'helm-buffers-list)
(global-set-key (kbd "C-x C-f")'helm-find-files)



(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally
