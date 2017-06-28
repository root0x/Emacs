; Reduce the frequency of garbage collection by making it happen on
; each 100MB of allocated data (the default is on every 0.76MB). This reduces
					; the startup time.
;;; Code:
(setq gc-cons-threshold 400000000)

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

;(linum-highligth-current-line-number)

;change cursor to bar
(setq-default cursor-type 'bar) 
(set-cursor-color "#ffffff") 

;add rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(use-package smooth-scroll
  :config
  (smooth-scroll-mode 1)
  (setq smooth-scroll/vscroll-step-size 5)
  )

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)


(add-to-list 'load-path "~/.emacs.d/plugins/neotree/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if window-system 'icons 'arrow))

;(add-to-list 'load-path "~/.emacs.d/plugins/all-the-icons/")
;(require 'all-the-icons)

(require 'linum)

(defvar linum-current-line 1 "Current line number.")
(defvar linum-border-width 1 "Border width for linum.")

(defface linum-current-line
  `((t :inherit linum
       :foreground "LightSlateGrey"
       :weight bold
       ))
  "Face for displaying the current line number."
  :group 'linum)

(defadvice linum-update (before advice-linum-update activate)
  "Set the current line."
  (setq linum-current-line (line-number-at-pos)
        ;; It's the same algorithm that linum dynamic. I only had added one
        ;; space in front of the first digit.
        linum-border-width (number-to-string
                            (+ 1 (length
                                  (number-to-string
                                   (count-lines (point-min) (point-max))))))))

(defun linum-highlight-current-line (line-number)
  "Highlight the current line number using `linum-current-line' face."
  (let ((face (if (= line-number linum-current-line)
                  'linum-current-line
                'linum)))
    (propertize (format (concat "%" linum-border-width "d") line-number)
                'face face)))

(setq linum-format 'linum-highlight-current-line)

(setq backup-directory-alist `(("." . "~/.saves")))

(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)
