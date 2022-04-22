;;; tsi-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "tsi" "tsi.el" (0 0 0 0))
;;; Generated autoloads from tsi.el

(autoload 'tsi--walk "tsi" "\
Indents the current line using information provided by INDENT-INFO-FN.

INDENT-INFO-FN is a function taking two arguments: (current-node parent-node).

\(fn INDENT-INFO-FN)" nil nil)

(register-definition-prefixes "tsi" '("tsi-"))

;;;***

;;;### (autoloads nil "tsi-css" "tsi-css.el" (0 0 0 0))
;;; Generated autoloads from tsi-css.el

(autoload 'tsi-css--indent-line "tsi-css" "\
Internal function.

  Calculate indentation for the current line." nil nil)

(autoload 'tsi-css-mode "tsi-css" "\
Use tree-sitter to calculate indentation for CSS buffers.

This is a minor mode.  If called interactively, toggle the
`Tsi-Css mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tsi-css-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "tsi-css" '("tsi-css-"))

;;;***

;;;### (autoloads nil "tsi-json" "tsi-json.el" (0 0 0 0))
;;; Generated autoloads from tsi-json.el

(autoload 'tsi-json--indent-line "tsi-json" "\
Internal function.

  Calculate indentation for the current line." nil nil)

(autoload 'tsi-json-mode "tsi-json" "\
Use tree-sitter to calculate indentation for JSON buffers.

This is a minor mode.  If called interactively, toggle the
`Tsi-Json mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tsi-json-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "tsi-json" '("tsi-json-"))

;;;***

;;;### (autoloads nil "tsi-typescript" "tsi-typescript.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from tsi-typescript.el

(autoload 'tsi-typescript--indent-line "tsi-typescript" "\
Internal function.

  Calculate indentation for the current line." nil nil)

(autoload 'tsi-typescript-mode "tsi-typescript" "\
Use tree-sitter to calculate indentation for Typescript buffers.

This is a minor mode.  If called interactively, toggle the
`Tsi-Typescript mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tsi-typescript-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "tsi-typescript" '("tsi-"))

;;;***

;;;### (autoloads nil "tsi.test" "tsi.test.el" (0 0 0 0))
;;; Generated autoloads from tsi.test.el

(register-definition-prefixes "tsi.test" '("tsi--test-indent-fn"))

;;;***

;;;### (autoloads nil nil ("tsi-css.test.el" "tsi-json.test.el" "tsi-typescript.test.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'tsi-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tsi-autoloads.el ends here
