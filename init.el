;;; Package -- Summary
;;; Code:
;;; Commentary:

(setq package-list '(company doom-themes powerline company-c-headers helm
			     irony company-irony company-irony-c-headers auctex
			     rtags flycheck flycheck-irony rainbow-delimiters
			     flycheck-color-mode-line company-auctex yasnippet
			     indium js2-refactor xref-js2 company-tern
			     exec-path-from-shell web-mode
		       	     ))



(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t) 
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
	(setq package-enable-at-startup nil)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-verbose nil)

(load "~/.emacs.d/config/cpp.el")	
;(load "~/.emacs.d/config/elisp.el")
;(load "~/.emacs.d/config/latex.el")
(load "~/.emacs.d/config/js.el")
;;;Editor					

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


(setq warning-minimum-level :emergency)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)


;; Theme
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)


;; Powerline

(require 'powerline)
(powerline-default-theme)


;;Yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


;; MISC
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

(setq tab-width 4)
(setq-default c-basic-offset 4)



(setq c-default-style "bsd" c-basic-offset 4)



(tool-bar-mode -1)
(global-linum-mode 1)
(toggle-scroll-bar -1)


;removes line wrap symbol from left side
(define-fringe-bitmap 'left-curly-arrow
  [#b00000000
   #b00001000
   #b00001000
   #b00001110
   #b00000000
   #b00000000
   #b00000000
   #b00000000])

(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-mode js2-refactor indium matlab-mode helm-bibtex org-bullets company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
