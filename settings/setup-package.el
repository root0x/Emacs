(require 'package)

;; Add melpa to package repos

;(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-pinned-packages '())

(if (eq system-type 'gnu/linux)
    (setq package-check-signature nil)
  )

(package-initialize)
					;
;(unless package--initialized (package-initialize t))



(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))


(unless (package-installed-p 'use-package)
 (package-install 'dash))
(require 'dash)

(defun packages-install (packages)
  (--each packages
    (when (not (package-installed-p it))
      (package-install it)))
  (delete-other-windows))

;;; On-demand installation of packages

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(provide 'setup-package)
