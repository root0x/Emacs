;;; Code:
;;; Commentary:
;;; package --- Summary


(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))
(setq exec-path (append "/path/to/brew/bin" exec-path))

(setq ispell-program-name "/usr/local/bin/ispell")


;; AucTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
;(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)
(setq latex-run-command "pdflatex")

(setq LaTeX-item-indent -2 LaTeX-indent-level 4)




(company-auctex-init)


(defun latex-word-count ()
   (interactive)
   (shell-command (concat "texcount " ; my latex installation includes texcount.pl
                       ; "uncomment then options go here, such as "
                       "-unicode "
                       "-inc "
                       (buffer-file-name))) ; better than typing path to current file
)

;(define-key LaTeX-mode-map "C-c w" 'latex-word-count)



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
  '(progn
     (add-to-list
      'TeX-engine-alist
      '(default-shell-escape "Default with shell escape"
     "pdftex -shell-escape"
     "pdflatex -shell-escape"
     ConTeXt-engine))
     ;; (setq-default TeX-engine 'default-shell-escape)
     ))

;; use Skim as default pdf viewer
;; Skim's displayline is used for forward search (from .tex to .pdf)
;; option -b highlights the current line; option -g opens Skim in the background  
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
     '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
