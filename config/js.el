;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'js2-mode)
(require 'tern)


(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)


(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
(setq js2-include-node-externs t)


;;;; JSON mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(add-hook 'js-mode-hook #'smartparens-mode)

(require 'js-align)
(add-hook 'js-mode 'js-align-mode)

;;;; Tern
;; Combine Tern and dumb-jump
(defun js-jump ()
  (interactive)
  (let ((current-file (buffer-file-name (current-buffer)))
        (current-line (what-line)))
    (tern-find-definition)
    (if (and (equal (buffer-file-name (current-buffer)) current-file)
             (equal (what-line) current-line))
        (dumb-jump-go)
      (message "Can't jump to definition"))))

(eval-after-load 'js (lambda ()
                       (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
                       (define-key js-mode-map (kbd "s-b") 'js-jump)))






(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
                           
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)


;;; js.el ends here
