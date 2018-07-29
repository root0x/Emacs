;;; Package -- Summary
;;; Code:
;;; Commentary:


;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(package-initialize)


;; Remove security vulnerability
(eval-after-load "enriched"
  '(defun enriched-decode-display-prop (start end &optional param)
     (list start end)))


;; No splash screen please ... jeez
(setq inhibit-startup-message t)


(setq config-dir
      (expand-file-name "settings" user-emacs-directory))


(add-to-list 'load-path config-dir)


(require 'setup-package)


(setq is-mac (equal system-type 'darwin))


(defun init--install-packages ()
  (packages-install
   '(magit
     company
     doom-themes
     powerline
     company-c-headers
     helm
     irony
     company-irony
     company-irony-c-headers
     auctex
     rtags
     flycheck
     flycheck-irony
     rainbow-delimiters
     flycheck-color-mode-line
     company-auctex
     yasnippet
     indium js2-refactor
     xref-js2
     company-tern
     exec-path-from-shell
     web-mode
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

(when is-mac
  (require-package 'exec-path-from-shell)
  (setq exec-path-from-shell-arguments '("-l"))
  (exec-path-from-shell-initialize))


(load "~/.emacs.d/config/cpp.el")
;(load "~/.emacs.d/config/elisp.el")
;(load "~/.emacs.d/config/latex.el")
(load "~/.emacs.d/config/js.el")
;;;Editor

(setq warning-minimum-level :emergency)

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



(global-linum-mode 1)


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
