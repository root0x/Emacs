
					; Reduce the frequency of garbage collection by making it happen on
; each 100MB of allocated data (the default is on every 0.76MB). This reduces
					; the startup time.
;;; Code:
(setq gc-cons-threshold 100000000)

;; Allow hash to be entered  
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; Set Tab to 4
(setq tab-width 4) 
(setq-default c-basic-offset 4)


(setq c-default-style "linux" c-basic-offset 4)

(tool-bar-mode -1)

;remove startup page
(setq inhibit-startup-screen t)

;show paring braces and brackets
(show-paren-mode 1)


(setq ring-bell-function 'ignore)
	
;replace text that is hilighted
(delete-selection-mode 1)

;remove scroll accel
(setq mouse-wheel-progressive-speed nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1160f5fc215738551fce39a67b2bcf312ed07ef3568d15d53c87baa4fd1f4d4e" default)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(custom-enabled-themes (quote (wombat)))
 ;'(inhibit-startup-screen t))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(load-theme 'wombat)
		 

(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;start auto-complete with emacs
(require 'auto-complete)
;do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default) 


;start yasnipper with emacs
(require 'yasnippet)
(yas-global-mode 1)

;initialize autocomplete-c-headers
(defun my:ac-c-header-init()
  (require 'autocomplete-c-headers)
  (add-to-list 'ac-sources 'ac-sources-c-headers)
  (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1
 /usr/local/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.3.0/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
 /usr/include"))
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


;semantic
(semantic-mode 1)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete) 

;initialize flycheck
(package-install 'flycheck)
(global-flycheck-mode)

;fix iedit bug
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;use powerline
(require 'powerline)
(powerline-default-theme)

;show line numbers
(global-linum-mode t)

;add test padding to left
(set-window-margins nil 1)

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

;change cursor to bar
(setq-default cursor-type 'bar) 
(set-cursor-color "#ffffff") 


;cool org-mode bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;add rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


 (add-to-list 'load-path "~/.emacs.d/plugins/neotree/")
  (require 'neotree)
  (global-set-key [f8] 'neotree-toggle)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))



(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))`


(use-package smooth-scroll
  :config
  (smooth-scroll-mode 1)
  (setq smooth-scroll/vscroll-step-size 5)
  )


(require 'ac-math)
(add-to-list 'ac-modes 'LaTeX-mode)
(add-to-list 'ac-modes 'latex-mode)

;; AucTeX
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin/"))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'text-mode-hook 'adaptive-wrap-prefix-mode)
(setq reftex-plug-into-AUCTeX t)
(setq-default TeX-PDF-mode t)
(setq LaTeX-item-indent -2 LaTeX-indent-level 4)
(require 'auto-complete-auctex)

;enable flyspell for auctex
(add-hook 'LaTeX-mode-hook 'flyspell-mode)


(add-to-list
 'TeX-expand-list
 (list "%(extraopts)"
       (lambda nil TeX-command-extra-options)))

;; Use Skim as viewer, enable source <-> PDF sync
;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))


(eval-after-load "tex" 
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")
    )
  )


 (defun TeX-run-Biber (name command file)
    "Create a process for NAME using COMMAND to format FILE with Biber." 
   (let ((process (TeX-run-command name command file)))
      (setq TeX-sentinel-function 'TeX-Biber-sentinel)
      (if TeX-process-asynchronous
          process
        (TeX-synchronous-sentinel name file process))))
  
  (defun TeX-Biber-sentinel (process name)
    "Cleanup TeX output buffer after running Biber."
    (goto-char (point-max))
    (cond
     ;; Check whether Biber reports any warnings or errors.
     ((re-search-backward (concat
                           "^(There \\(?:was\\|were\\) \\([0-9]+\\) "
                           "\\(warnings?\\|error messages?\\))") nil t)
      ;; Tell the user their number so that she sees whether the
      ;; situation is getting better or worse.
      (message (concat "Biber finished with %s %s. "
                       "Type `%s' to display output.")
               (match-string 1) (match-string 2)
               (substitute-command-keys
                "\\\\[TeX-recenter-output-buffer]")))
     (t
      (message (concat "Biber finished successfully. "
                       "Run LaTeX again to get citations right."))))
    (setq TeX-command-next TeX-command-default))

(eval-after-load "tex"
  '(add-to-list 'TeX-command-list '("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber"))
  ) 

;; use Skim as default pdf viewer
;; Skim's displayline is used for forward search (from .tex to .pdf)
;; option -b highlights the current line; option -g opens Skim in the background  
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
     '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

