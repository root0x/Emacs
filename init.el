
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
;(browse-url-emacs "https://melpa.org/packages/archive-contents" t)


(setq package-list '(company doom-themes powerline company-c-headers helm
			     irony company-irony company-irony-c-headers auctex
			     rtags
			     ))


(require 'package)
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))


(add-to-list 'package-archives
          '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(load "~/.emacs.d/config/cpp.el")
(load "~/.emacs.d/config/elisp.el")

;;;; Editor

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



;; MISC
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

(setq tab-width 4) 
(setq-default c-basic-offset 4)



(setq c-default-style "bsd" c-basic-offset 4)



(tool-bar-mode -1) 
;(menu-bar-mode -1) 
(toggle-scroll-bar -1) 




(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
