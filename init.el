
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(add-to-list 'load-path "~/.emacs.d/modules/")
(load-library "m-editor")
(load-library "m-org")
(load-library "m-latex")
(load-library "m-matlab")
(load-library "m-cpp")
(load-library "m-web")
(load-library "m-helm")
;(load-library "m-gtags")

;(setq load-path (cons "/opt/local/bin/gtags/" load-path))
;(autoload 'gtags-mode "gtags" "" t)



;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-tern company-math cmake-ide php-extras php-mode company-php ac-php helm-dash magit gtags helm-gtags helm dumb-jump company-web web-mode move-text matlab-mode flycheck-irony company-irony-c-headers paredit hlinum smartparens nlinum all-the-icons-dired flycheck xcscope use-package smooth-scrolling smooth-scroll rtags rainbow-delimiters powerline org-bullets material-theme latex-preview-pane langtool iedit haskell-mode flycheck-color-mode-line exec-path-from-shell drag-stuff doom-themes dash-functional company-c-headers company-auctex bug-hunter auto-complete-c-headers auto-complete-auctex auctex-lua auctex-latexmk atom-one-dark-theme ace-flyspell ac-math)))
 '(sp-highlight-pair-overlay nil)
 '(sp-highlight-wrap-overlay nil)
 '(sp-highlight-wrap-tag-overlay nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
