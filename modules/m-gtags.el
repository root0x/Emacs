;;; init-gtags.el -- Configuration for GNU Global
;;; Commentary:
;;; Code:
    (setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin/global"))
    (setq exec-path (append exec-path '("/opt/local/bin/global")))


(defun gtags-root-dir ()
  "Returns GTAGS root directory or nil if doesn't exist."
  (with-temp-buffer
    (if (zerop (call-process "global" nil t nil "-pr"))
	(buffer-substring (point-min) (1- (point-max)))
      nil)))


(defun gtags-update ()
  "Make GTAGS incremental update"
  (call-process "global" nil nil nil "-u"))

(defun gtags-update-hook ()
(when (gtags-root-dir)
  (gtags-update)))


(add-hook 'after-save-hook #'gtags-update-hook)


;;; init-gtags.el ends here
