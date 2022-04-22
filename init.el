(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar


;; Make ESC quit prompts
					;(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
(require 'package)


(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(straight-use-package 'use-package)

(setq make-backup-files nil)
;; Initialize use-package on non-Linux platforms
					;(unless (package-installed-p 'use-package)
					; (package-install 'use-package))


(require 'use-package)
(setq use-package-always-ensure t)

(use-package exec-path-from-shell)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
		treemacs-mode-hook))
					; shell-mode-hook
					; eshell-mode-hook
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package command-log-mode)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package doom-themes
  :init (load-theme 'doom-one t))

(with-eval-after-load 'doom-themes
  (doom-themes-treemacs-config))

(use-package all-the-icons)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
	 ("C-x b" . 'counsel-switch-buffer)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))


(use-package org-superstar
  :init
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
  (setq org-hide-leading-stars nil)
  (setq org-superstar-leading-bullet ?\s))


(setq garbage-collection-messages t)

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  ;; NOTE: Set this to the folder where you keep your Git repos!
  )

(use-package counsel-projectile
  :config (counsel-projectile-mode))


(use-package php-mode
  :ensure t)

(use-package vue-mode
  :init
  (setq indent-tabs-mode nil
	js-indent-level 4)
  :ensure t)


(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :config
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\node_modules\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\vendor\\'")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (typescript-mode . lsp)
	 (php-mode . lsp)
	 (vue-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :bind (("s-<down>" . lsp-find-definition))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list
  :config
  (lsp-treemacs-sync-mode 1))

(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))



(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 4)
  )

(use-package tsi
  :straight (tsi
	     :type git
       	     :host github
	     :repo "orzechowskid/tsi.el")
  )


(use-package tsx-mode
  :mode "\\.tsx\\'"
  :straight (tsx-mode
	     :type git
	     :host github
	     :repo "orzechowskid/tsx-mode.el")  )

(with-eval-after-load 'tree-sitter-langs
  (tree-sitter-require 'tsx)
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescript-mode . tsx)))



;; (use-package company
;;   :after lsp-mode
;;   :hook (lsp-mode . company-mode)
;;   :bind (:map company-active-map
;;               ("<tab>" . company-complete-selection))
;;   (:map lsp-mode-map
;;         ("<tab>" . company-indent-or-complete-common))
;;   :custom
;;   (company-minimum-prefix-length 1)
;;   (company-idle-delay 0.0))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "db3e80842b48f9decb532a1d74e7575716821ee631f30267e4991f4ba2ddf56e" default))
 '(doom-themes-treemacs-theme "doom-colors")
 '(package-selected-packages
   '(rjsx-mode web-mode emms-info-mediainfo php-mode org-superstar which-key use-package rainbow-delimiters ivy-rich helpful doom-themes doom-modeline counsel command-log-mode))
 '(tsi-typescript-indent-offset 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
