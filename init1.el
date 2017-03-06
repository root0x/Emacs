					; Reduce the frequency of garbage collection by making it happen on
; each 100MB of allocated data (the default is on every 0.76MB). This reduces
					; the startup time.
;;; Code:
(setq gc-cons-threshold 200000000)

;; Allow hash to be entered  
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; Set Tab to 4
(setq tab-width 4) 
(setq-default c-basic-offset 4)

;allow ede mode
(global-ede-mode t)


(setq c-default-style "bsd" c-basic-offset 4)

(tool-bar-mode -1)

;remove startup page
(setq inhibit-startup-screen t)

;show paring braces and brackets
(show-paren-mode 1)

;auto pair
(package-initialize)
(smartparens-global-mode t)
(sp-local-pair 'c++-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))
;(setq tramp-default-method "ssh")

;remove scrooll bar
(scroll-bar-mode -1)

;hilight line number
(add-to-list 'load-path "~/.emacs.d/plugins/")
;(linum-highlight-current-line)


(setq ring-bell-function 'ignore)
	
;replace text that is hilighted
(delete-selection-mode 1)

;remove scroll accel
(setq mouse-wheel-progressive-speed nil)

(add-to-list 'load-path "~/.emacs.d/themes/")
(require 'doom-themes)
(load-theme 'doom-one t) ;; or doom-dark, etc.

;;; Settings (defaults)
(setq doom-enable-bold t    ; if nil, bolding are universally disabled
      doom-enable-italic t  ; if nil, italics are universally disabled

      ;; doom-one specific settings
      doom-one-brighter-modeline nil
      doom-one-brighter-comments nil
      )

;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;; Enable custom neotree theme
(require 'doom-neotree)    ; all-the-icons fonts must be installed!
;; Enable nlinum line highlighting
(require 'doom-nlinum)     ; requires nlinum and hl-line-mode

(setq org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)


;(require 'flycheck-color-mode-line)
;(eval-after-load "flycheck"
;  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))


(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))


(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

; (setq company-backends (delete 'company-semantic company-backends))
; (define-key c-mode-map  [(tab)] 'company-complete)
; (define-key c++-mode-map  [(tab)] 'company-complete)
(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0.1)
(add-to-list 'company-backends 'company-c-headers)
;(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")

;start yasnipper with emacs
(require 'yasnippet)
(yas-global-mode 1)

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

(defun ergoemacs-status--sep (dir &rest args)
  "Separator with DIR.
The additional ARGS are the fonts applied.  This uses `powerline' functions."
  (let ((separator (and (fboundp #'powerline-current-separator)
            (intern (format "powerline-%s-%s"
                    (powerline-current-separator)
                    (or (and (eq dir 'left)
                         (car powerline-default-separator-dir))
                        (cdr powerline-default-separator-dir))))))
    (args (mapcar
           (lambda(f)
         (let ((fa (assoc f face-remapping-alist)))
           (if fa
               (car (cdr fa))
             f)))
           args)))
    (when (fboundp separator)
      (let ((img (apply separator args)))
    (when (and (listp img) (eq 'image (car img)))
      (propertize " " 'display img
              'face (plist-get (cdr img) :face)))))))

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
(setq neo-theme (if window-system 'icons 'arrow))

;(add-to-list 'load-path "~/.emacs.d/plugins/all-the-icons/")
;(require 'all-the-icons)

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))



(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(use-package smooth-scroll
  :config
  (smooth-scroll-mode 1)
  (setq smooth-scroll/vscroll-step-size 5)
  )

;; =============
;; irony-mode
;; =============
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
;; =============
;; company mode
;; =============
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
(define-key irony-mode-map [remap completion-at-point]
  'irony-completion-at-point-async)
(define-key irony-mode-map [remap complete-symbol]
  'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))
;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
;; =============
;; flycheck-mode
;; =============
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(eval-after-load 'flycheck
'(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
;; =============
;; eldoc-mode
;; =============
(add-hook 'irony-mode-hook 'irony-eldoc)
;; ==========================================
;; (optional) bind TAB for indent-or-complete
;; ==========================================
(with-eval-after-load 'company
  (define-key company-active-map (kbd "TAB") 'company-yasnippet-or-completion))


(require 'ac-math)
(add-to-list 'ac-modes 'LaTeX-mode)
(add-to-list 'ac-modes 'latex-mode)


;; =======
;; LATEX
;; =======
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin/"))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
;(setq-default TeX-master nil)
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
(company-auctex-init)


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


(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))


;;
;; MATLAB
;;
 (autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
 (add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
 (setq matlab-indent-function t)
 (setq matlab-shell-command "matlab")


;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-web web-mode move-text matlab-mode flycheck-irony company-irony-c-headers paredit hlinum smartparens nlinum all-the-icons-dired flycheck xcscope use-package smooth-scrolling smooth-scroll rtags rainbow-delimiters powerline org-bullets material-theme latex-preview-pane langtool iedit haskell-mode flycheck-color-mode-line exec-path-from-shell drag-stuff doom-themes dash-functional company-c-headers company-auctex bug-hunter auto-complete-c-headers auto-complete-auctex auctex-lua auctex-latexmk atom-one-dark-theme ace-flyspell ac-math)))
 '(sp-highlight-pair-overlay nil)
 '(sp-highlight-wrap-overlay nil)
 '(sp-highlight-wrap-tag-overlay nil))
