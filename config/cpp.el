(require 'ede)
(global-ede-mode)



(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0.1)


(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))


(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))


(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))


(require 'srefactor)
(semantic-mode 1)
(define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
