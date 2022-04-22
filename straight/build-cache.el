
:tanat

"28.1"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2022-04-22 10:29:29" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2022-04-22 10:29:29" nil (:type git :host github :repo "melpa/melpa" :build nil :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2022-04-22 10:29:29" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :build nil :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "el-get" ("2022-04-22 10:29:29" nil (:type git :host github :repo "dimitri/el-get" :build nil :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :flavor melpa :package "el-get" :local-repo "el-get")) "emacsmirror-mirror" ("2022-04-22 10:29:29" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :build nil :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2022-04-22 10:29:29" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "use-package" ("2022-04-22 10:29:29" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2022-04-22 10:29:29" nil (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "tsi" ("2022-04-22 10:29:30" ("tree-sitter") (:type git :host github :repo "orzechowskid/tsi.el" :package "tsi" :local-repo "tsi.el")) "tree-sitter" ("2022-04-22 10:29:30" ("emacs" "tsc") (:type git :flavor melpa :files ("lisp/*.el" (:exclude "lisp/tree-sitter-tests.el") "tree-sitter-pkg.el") :branch "release" :host github :repo "emacs-tree-sitter/elisp-tree-sitter" :package "tree-sitter" :local-repo "elisp-tree-sitter")) "tsc" ("2022-04-22 10:29:30" ("emacs") (:flavor melpa :files ("core/*.el" "core/Cargo.toml" "core/Cargo.lock" "core/src" "tsc-pkg.el") :package "tsc" :local-repo "elisp-tree-sitter" :type git :repo "emacs-tree-sitter/elisp-tree-sitter" :host github :branch "release")) "tsx-mode" ("2022-04-22 10:29:30" ("emacs" "tsi" "tree-sitter-langs" "lsp-mode" "origami") (:type git :host github :repo "orzechowskid/tsx-mode.el" :package "tsx-mode" :local-repo "tsx-mode.el")) "tree-sitter-langs" ("2022-04-22 10:29:30" ("emacs" "tree-sitter") (:type git :flavor melpa :files (:defaults "queries" "tree-sitter-langs-pkg.el") :branch "release" :host github :repo "emacs-tree-sitter/tree-sitter-langs" :package "tree-sitter-langs" :local-repo "tree-sitter-langs")) "lsp-mode" ("2022-04-22 10:29:30" ("emacs" "dash" "f" "ht" "spinner" "markdown-mode" "lv") (:type git :flavor melpa :files (:defaults "clients/*.el" "lsp-mode-pkg.el") :host github :repo "emacs-lsp/lsp-mode" :package "lsp-mode" :local-repo "lsp-mode")) "dash" ("2022-04-22 10:29:30" ("emacs") (:type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el" :package "dash" :local-repo "dash.el")) "f" ("2022-04-22 10:29:30" ("s" "dash") (:type git :flavor melpa :files ("f.el" "f-pkg.el") :host github :repo "rejeep/f.el" :package "f" :local-repo "f.el")) "s" ("2022-04-22 10:29:30" nil (:type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el" :package "s" :local-repo "s.el")) "ht" ("2022-04-22 10:29:30" ("dash") (:type git :flavor melpa :files ("ht.el" "ht-pkg.el") :host github :repo "Wilfred/ht.el" :package "ht" :local-repo "ht.el")) "spinner" ("2022-04-22 10:29:30" ("emacs") (:type git :host github :repo "emacs-straight/spinner" :files ("*" (:exclude ".git")) :package "spinner" :local-repo "spinner")) "markdown-mode" ("2022-04-22 10:29:30" ("emacs") (:type git :flavor melpa :host github :repo "jrblevin/markdown-mode" :package "markdown-mode" :local-repo "markdown-mode")) "lv" ("2022-04-22 10:29:30" nil (:type git :flavor melpa :files ("lv.el" "lv-pkg.el") :host github :repo "abo-abo/hydra" :package "lv" :local-repo "hydra")) "origami" ("2022-04-22 10:29:30" ("s" "dash" "emacs" "cl-lib") (:type git :flavor melpa :host github :repo "gregsexton/origami.el" :package "origami" :local-repo "origami.el"))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight-x straight-autoloads straight) (autoload 'straight-remove-unused-repos "straight" "Remove unused repositories from the repos directory.
A repo is considered \"unused\" if it was not explicitly requested via
`straight-use-package' during the current Emacs session.
If FORCE is non-nil do not prompt before deleting repos.

(fn &optional FORCE)" t nil) (autoload 'straight-get-recipe "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload 'straight-visit-package-website "straight" "Interactively select a recipe, and visit the package's website." t nil) (autoload 'straight-use-package "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a nil `:build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload 'straight-register-package "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-package-no-build "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-package-lazy "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-recipes "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a nil `:build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-override-recipe "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-check-package "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload 'straight-check-all "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init." t nil) (autoload 'straight-rebuild-package "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload 'straight-rebuild-all "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'." t nil) (autoload 'straight-prune-build-cache "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded." nil nil) (autoload 'straight-prune-build-directory "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted." nil nil) (autoload 'straight-prune-build "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted." t nil) (autoload 'straight-normalize-package "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload 'straight-normalize-all "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload 'straight-fetch-package "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-fetch-package-and-deps "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-fetch-all "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-merge-package "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-merge-package-and-deps "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-merge-all "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-pull-package "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-pull-package-and-deps "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-pull-all "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-push-package "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload 'straight-push-all "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload 'straight-freeze-versions "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload 'straight-thaw-versions "straight" "Read version lockfiles and restore package versions to those listed." t nil) (autoload 'straight-bug-report "straight" "Test straight.el in a clean environment.
ARGS may be any of the following keywords and their respective values:
  - :pre-bootstrap (Form)...
      Forms evaluated before bootstrapping straight.el
      e.g. (setq straight-repository-branch \"develop\")
      Note this example is already in the default bootstrapping code.

  - :post-bootstrap (Form)...
      Forms evaluated in the testing environment after boostrapping.
      e.g. (straight-use-package '(example :type git :host github))

  - :interactive Boolean
      If nil, the subprocess will immediately exit after the test.
      Output will be printed to `straight-bug-report--process-buffer'
      Otherwise, the subprocess will be interactive.

  - :preserve Boolean
      If non-nil, the test directory is left in the directory stored in the
      variable `temporary-file-directory'. Otherwise, it is
      immediately removed after the test is run.

  - :executable String
      Indicate the Emacs executable to launch.
      Defaults to the path of the current Emacs executable.

  - :raw Boolean
      If non-nil, the raw process output is sent to
      `straight-bug-report--process-buffer'. Otherwise, it is
      formatted as markdown for submitting as an issue.

  - :user-dir String
      If non-nil, the test is run with `user-emacs-directory' set to STRING.
      Otherwise, a temporary directory is created and used.
      Unless absolute, paths are expanded relative to the variable
      `temporary-file-directory'.

ARGS are accessible within the :pre/:post-bootsrap phases via the
locally bound plist, straight-bug-report-args.

(fn &rest ARGS)" nil t) (function-put 'straight-bug-report 'lisp-indent-function '0) (autoload 'straight-dependencies "straight" "Return a list of PACKAGE's dependencies.

(fn &optional PACKAGE)" t nil) (autoload 'straight-dependents "straight" "Return a list PACKAGE's dependents.

(fn &optional PACKAGE)" t nil) (register-definition-prefixes "straight" '("straight-")) (defvar straight-x-pinned-packages nil "List of pinned packages.") (register-definition-prefixes "straight-x" '("straight-x-")) (provide 'straight-autoloads)) "bind-key" ((bind-key-autoloads bind-key) (autoload 'bind-key "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

  (bind-key \"M-h\" #'some-interactive-function 'my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload 'unbind-key "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload 'bind-key* "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload 'bind-keys "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload 'bind-keys* "bind-key" "

(fn &rest ARGS)" nil t) (autoload 'describe-personal-keybindings "bind-key" "Display all the personal keybindings defined by `bind-key'." t nil) (register-definition-prefixes "bind-key" '("bind-key" "compare-keybindings" "get-binding-description" "override-global-m" "personal-keybindings")) (provide 'bind-key-autoloads)) "use-package" ((use-package-diminish use-package use-package-lint use-package-delight use-package-jump use-package-autoloads use-package-core use-package-ensure use-package-bind-key) (autoload 'use-package-autoload-keymap "use-package-bind-key" "Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil) (autoload 'use-package-normalize-binder "use-package-bind-key" "

(fn NAME KEYWORD ARGS)" nil nil) (defalias 'use-package-normalize/:bind 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind* 'use-package-normalize-binder) (defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode) (defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode) (autoload 'use-package-handler/:bind "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil) (defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder) (autoload 'use-package-handler/:bind-keymap "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil) (autoload 'use-package-handler/:bind-keymap* "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (register-definition-prefixes "use-package-bind-key" '("use-package-handler/:bind*")) (autoload 'use-package "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Delay the use-package declaration until after the named modules
                 have loaded. Once load, it will be as though the use-package
                 declaration (without `:after') had been seen at that moment.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put 'use-package 'lisp-indent-function '1) (register-definition-prefixes "use-package-core" '("use-package-")) (autoload 'use-package-normalize/:delight "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:delight "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)" nil nil) (register-definition-prefixes "use-package-delight" '("use-package-normalize-delight")) (autoload 'use-package-normalize/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (register-definition-prefixes "use-package-diminish" '("use-package-normalize-diminish")) (autoload 'use-package-normalize/:ensure "use-package-ensure" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:ensure "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)" nil nil) (register-definition-prefixes "use-package-ensure" '("use-package-")) (autoload 'use-package-jump-to-package-form "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

(fn PACKAGE)" t nil) (register-definition-prefixes "use-package-jump" '("use-package-find-require")) (autoload 'use-package-lint "use-package-lint" "Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found." t nil) (register-definition-prefixes "use-package-lint" '("use-package-lint-declaration")) (provide 'use-package-autoloads)) "tsc" ((tsc-obsolete tsc-dyn-get tsc tsc-autoloads) (register-definition-prefixes "tsc" '("tsc-")) (register-definition-prefixes "tsc-dyn-get" '("tsc-")) (provide 'tsc-autoloads)) "tree-sitter" ((tree-sitter-cli tree-sitter-hl tree-sitter-extras tree-sitter-debug tree-sitter-autoloads tree-sitter tree-sitter-load tree-sitter-query) (autoload 'tree-sitter-mode "tree-sitter" "Minor mode that keeps an up-to-date syntax tree using incremental parsing.

This is a minor mode.  If called interactively, toggle the
`tree-sitter mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tree-sitter-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (autoload 'turn-on-tree-sitter-mode "tree-sitter" "Turn on `tree-sitter-mode' in a buffer, if possible." nil nil) (put 'global-tree-sitter-mode 'globalized-minor-mode t) (defvar global-tree-sitter-mode nil "Non-nil if Global Tree-Sitter mode is enabled.
See the `global-tree-sitter-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-tree-sitter-mode'.") (custom-autoload 'global-tree-sitter-mode "tree-sitter" nil) (autoload 'global-tree-sitter-mode "tree-sitter" "Toggle Tree-Sitter mode in all buffers.
With prefix ARG, enable Global Tree-Sitter mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Tree-Sitter mode is enabled in all buffers where
`turn-on-tree-sitter-mode' would do it.

See `tree-sitter-mode' for more information on Tree-Sitter mode.

(fn &optional ARG)" t nil) (define-obsolete-function-alias 'tree-sitter-node-at-point 'tree-sitter-node-at-pos "2021-08-30") (autoload 'tree-sitter-node-at-pos "tree-sitter" "Return the smallest syntax node of type NODE-TYPE at POS.
NODE-TYPE may be a symbol, corresponding to a named syntax node; a string,
corresponding to an anonymous node, or a keyword, holding a special value. For
the special value `:named', return the smallest named node at POS. For the
special value `:anonymous', return the smallest anonymous node at POS. IF POS is
nil, POS defaults to the point. Unless IGNORE-INVALID-TYPE is non-nil, signal an
error when a specified named NODE-TYPE does not exist in the current grammar.
Whenever NODE-TYPE is non-nil (other than `:named'), it is possible for the
function to return nil.

(fn &optional NODE-TYPE POS IGNORE-INVALID-TYPE)" nil nil) (register-definition-prefixes "tree-sitter" '("tree-sitter-")) (register-definition-prefixes "tree-sitter-cli" '("tree-sitter-cli-")) (autoload 'tree-sitter-debug-mode "tree-sitter-debug" "Toggle syntax tree debugging for the current buffer.
This mode displays the syntax tree in another buffer, and keeps it up-to-date.

This is a minor mode.  If called interactively, toggle the
`Tree-Sitter-Debug mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tree-sitter-debug-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (autoload 'tree-sitter-debug-query "tree-sitter-debug" "Execute query PATTERNS against the current syntax tree and return captures.

If the optional arg MATCHES is non-nil, matches (from `tsc-query-matches') are
returned instead of captures (from `tsc-query-captures').

If the optional arg TAG-ASSIGNER is non-nil, it is passed to `tsc-make-query' to
assign custom tags to capture names.

This function is primarily useful for debugging purpose. Other packages should
build queries and cursors once, then reuse them.

(fn PATTERNS &optional MATCHES TAG-ASSIGNER)" nil nil) (register-definition-prefixes "tree-sitter-debug" '("tree-sitter-debug-")) (autoload 'tree-sitter-save-excursion "tree-sitter-extras" "Save the current location within the syntax tree; execute BODY; restore it.

If the original location cannot be restored due to the syntax tree changing too
much, this macro behaves like `save-excursion', unless
`tree-sitter-save-excursion-try-hard' is non-nil, in which case it tries to get
as close as possible to the original location.

After the location is restored, the buffer text is scrolled so that point stays
at roughly the same vertical screen position. If `pixel-scroll' is available and
`tree-sitter-save-excursion-pixelwise' is non-nil, pixelwise scrolling is used
instead, to make this restoration exact.

(fn &rest BODY)" nil t) (function-put 'tree-sitter-save-excursion 'lisp-indent-function '0) (register-definition-prefixes "tree-sitter-extras" '("tree-sitter-")) (autoload 'tree-sitter-hl-add-patterns "tree-sitter-hl" "Add custom syntax highlighting PATTERNS.
If LANG-SYMBOL is non-nil, it identifies the language that PATTERNS should be
applied to. If LANG-SYMBOL is nil, PATTERNS are applied to the current buffer,
and are prioritized over language-specific patterns. Either way, PATTERNS are
prioritized over `tree-sitter-hl-default-patterns'.

This function should be used by minor modes and configuration code. Major modes
should set `tree-sitter-hl-default-patterns' instead.

(fn LANG-SYMBOL PATTERNS)" nil nil) (function-put 'tree-sitter-hl-add-patterns 'lisp-indent-function '1) (autoload 'tree-sitter-hl-mode "tree-sitter-hl" "Toggle syntax highlighting based on Tree-sitter's syntax tree.
If `tree-sitter-hl-default-patterns' is nil, turning on this mode does nothing,
and does not interfere with `font-lock-mode'.

This is a minor mode.  If called interactively, toggle the
`Tree-Sitter-Hl mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tree-sitter-hl-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Enabling this automatically enables `tree-sitter-mode' in the buffer.

To enable this automatically whenever `tree-sitter-mode' is enabled:

 (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(fn &optional ARG)" t nil) (register-definition-prefixes "tree-sitter-hl" '("tree-sitter-hl-")) (autoload 'tree-sitter-require "tree-sitter-load" "Return the language object loaded and registered under the name LANG-SYMBOL.
If the language has not been loaded yet, load it with `tree-sitter-load'.

FILE should be the base name (without extension) of the native shared library
that exports the language as the native symbol NATIVE-SYMBOL-NAME.

If FILE is nil, the base name is assumed to be LANG-SYMBOL's name.

If NATIVE-SYMBOL-NAME is nil, the name of the exported native symbol is assumed
to be LANG-SYMBOL's name, prefixed with \"tree_sitter_\".

(fn LANG-SYMBOL &optional FILE NATIVE-SYMBOL-NAME)" nil nil) (register-definition-prefixes "tree-sitter-load" '("tree-sitter-l")) (autoload 'tree-sitter-query-builder "tree-sitter-query" "Provide means for developers to write and test tree-sitter queries.

The buffer on focus when the command is called is set as the target buffer." t nil) (register-definition-prefixes "tree-sitter-query" '("tree-sitter-")) (provide 'tree-sitter-autoloads)) "tsi" ((tsi\.test tsi-css tsi tsi-json tsi-typescript\.test tsi-json\.test tsi-typescript tsi-autoloads tsi-css\.test) (autoload 'tsi--walk "tsi" "Indents the current line using information provided by INDENT-INFO-FN.

INDENT-INFO-FN is a function taking two arguments: (current-node parent-node).

(fn INDENT-INFO-FN)" nil nil) (register-definition-prefixes "tsi" '("tsi-")) (autoload 'tsi-css--indent-line "tsi-css" "Internal function.

  Calculate indentation for the current line." nil nil) (autoload 'tsi-css-mode "tsi-css" "Use tree-sitter to calculate indentation for CSS buffers.

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

(fn &optional ARG)" t nil) (register-definition-prefixes "tsi-css" '("tsi-css-")) (autoload 'tsi-json--indent-line "tsi-json" "Internal function.

  Calculate indentation for the current line." nil nil) (autoload 'tsi-json-mode "tsi-json" "Use tree-sitter to calculate indentation for JSON buffers.

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

(fn &optional ARG)" t nil) (register-definition-prefixes "tsi-json" '("tsi-json-")) (autoload 'tsi-typescript--indent-line "tsi-typescript" "Internal function.

  Calculate indentation for the current line." nil nil) (autoload 'tsi-typescript-mode "tsi-typescript" "Use tree-sitter to calculate indentation for Typescript buffers.

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

(fn &optional ARG)" t nil) (register-definition-prefixes "tsi-typescript" '("tsi-")) (register-definition-prefixes "tsi.test" '("tsi--test-indent-fn")) (provide 'tsi-autoloads)) "tree-sitter-langs" ((tree-sitter-langs-autoloads tree-sitter-langs tree-sitter-langs-build) (autoload 'tree-sitter-langs--init-load-path "tree-sitter-langs" "Add the directory containing compiled grammars to `tree-sitter-load-path'.

(fn &rest ARGS)" nil nil) (advice-add 'tree-sitter-load :before #'tree-sitter-langs--init-load-path) (autoload 'tree-sitter-langs--init-major-mode-alist "tree-sitter-langs" "Link known major modes to languages provided by the bundle.

(fn &rest ARGS)" nil nil) (advice-add 'tree-sitter--setup :before #'tree-sitter-langs--init-major-mode-alist) (autoload 'tree-sitter-langs--set-hl-default-patterns "tree-sitter-langs" "Use syntax highlighting patterns provided by `tree-sitter-langs'.

(fn &rest ARGS)" nil nil) (advice-add 'tree-sitter-hl--setup :before #'tree-sitter-langs--set-hl-default-patterns) (register-definition-prefixes "tree-sitter-langs" '("tree-sitter-langs-")) (autoload 'tree-sitter-langs-install-grammars "tree-sitter-langs-build" "Download and install the specified VERSION of the language grammar bundle.
If VERSION or OS is not specified, use the default of
`tree-sitter-langs--bundle-version' and `tree-sitter-langs--os'.

This installs the grammar bundle even if the same version was already installed,
unless SKIP-IF-INSTALLED is non-nil.

The download bundle file is deleted after installation, unless KEEP-BUNDLE is
non-nil.

(fn &optional SKIP-IF-INSTALLED VERSION OS KEEP-BUNDLE)" t nil) (register-definition-prefixes "tree-sitter-langs-build" '("tree-sitter-langs-")) (provide 'tree-sitter-langs-autoloads)) "dash" ((dash dash-autoloads) (autoload 'dash-fontify-mode "dash" "Toggle fontification of Dash special variables.

This is a minor mode.  If called interactively, toggle the
`Dash-Fontify mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `dash-fontify-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Dash-Fontify mode is a buffer-local minor mode intended for Emacs
Lisp buffers.  Enabling it causes the special variables bound in
anaphoric Dash macros to be fontified.  These anaphoras include
`it', `it-index', `acc', and `other'.  In older Emacs versions
which do not dynamically detect macros, Dash-Fontify mode
additionally fontifies Dash macro calls.

See also `dash-fontify-mode-lighter' and
`global-dash-fontify-mode'.

(fn &optional ARG)" t nil) (put 'global-dash-fontify-mode 'globalized-minor-mode t) (defvar global-dash-fontify-mode nil "Non-nil if Global Dash-Fontify mode is enabled.
See the `global-dash-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-dash-fontify-mode'.") (custom-autoload 'global-dash-fontify-mode "dash" nil) (autoload 'global-dash-fontify-mode "dash" "Toggle Dash-Fontify mode in all buffers.
With prefix ARG, enable Global Dash-Fontify mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Dash-Fontify mode is enabled in all buffers where
`dash--turn-on-fontify-mode' would do it.

See `dash-fontify-mode' for more information on Dash-Fontify mode.

(fn &optional ARG)" t nil) (autoload 'dash-register-info-lookup "dash" "Register the Dash Info manual with `info-lookup-symbol'.
This allows Dash symbols to be looked up with \\[info-lookup-symbol]." t nil) (register-definition-prefixes "dash" '("!cdr" "!cons" "--" "->" "-a" "-butlast" "-c" "-d" "-e" "-f" "-gr" "-i" "-juxt" "-keep" "-l" "-m" "-no" "-o" "-p" "-r" "-s" "-t" "-u" "-value-to-list" "-when-let" "-zip" "dash-")) (provide 'dash-autoloads)) "s" ((s s-autoloads) (register-definition-prefixes "s" '("s-")) (provide 's-autoloads)) "f" ((f f-autoloads) (register-definition-prefixes "f" '("f-")) (provide 'f-autoloads)) "ht" ((ht ht-autoloads) (register-definition-prefixes "ht" 'nil) (provide 'ht-autoloads)) "spinner" ((spinner spinner-autoloads) (autoload 'spinner-create "spinner" "Create a spinner of the given TYPE.
The possible TYPEs are described in `spinner--type-to-frames'.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

If BUFFER-LOCAL is non-nil, the spinner will be automatically
deactivated if the buffer is killed.  If BUFFER-LOCAL is a
buffer, use that instead of current buffer.

When started, in order to function properly, the spinner runs a
timer which periodically calls `force-mode-line-update' in the
current buffer.  If BUFFER-LOCAL was set at creation time, then
`force-mode-line-update' is called in that buffer instead.  When
the spinner is stopped, the timer is deactivated.

DELAY, if given, is the number of seconds to wait after starting
the spinner before actually displaying it. It is safe to cancel
the spinner before this time, in which case it won't display at
all.

(fn &optional TYPE BUFFER-LOCAL FPS DELAY)" nil nil) (autoload 'spinner-start "spinner" "Start a mode-line spinner of given TYPE-OR-OBJECT.
If TYPE-OR-OBJECT is an object created with `make-spinner',
simply activate it.  This method is designed for minor modes, so
they can use the spinner as part of their lighter by doing:
    '(:eval (spinner-print THE-SPINNER))
To stop this spinner, call `spinner-stop' on it.

If TYPE-OR-OBJECT is anything else, a buffer-local spinner is
created with this type, and it is displayed in the
`mode-line-process' of the buffer it was created it.  Both
TYPE-OR-OBJECT and FPS are passed to `make-spinner' (which see).
To stop this spinner, call `spinner-stop' in the same buffer.

Either way, the return value is a function which can be called
anywhere to stop this spinner.  You can also call `spinner-stop'
in the same buffer where the spinner was created.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

DELAY, if given, is the number of seconds to wait until actually
displaying the spinner. It is safe to cancel the spinner before
this time, in which case it won't display at all.

(fn &optional TYPE-OR-OBJECT FPS DELAY)" nil nil) (register-definition-prefixes "spinner" '("spinner-")) (provide 'spinner-autoloads)) "markdown-mode" ((markdown-mode markdown-mode-autoloads) (autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files.

(fn)" t nil) (add-to-list 'auto-mode-alist '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode)) (autoload 'gfm-mode "markdown-mode" "Major mode for editing GitHub Flavored Markdown files.

(fn)" t nil) (autoload 'markdown-view-mode "markdown-mode" "Major mode for viewing Markdown content.

(fn)" t nil) (autoload 'gfm-view-mode "markdown-mode" "Major mode for viewing GitHub Flavored Markdown content.

(fn)" t nil) (autoload 'markdown-live-preview-mode "markdown-mode" "Toggle native previewing on save for a specific markdown file.

This is a minor mode.  If called interactively, toggle the
`Markdown-Live-Preview mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `markdown-live-preview-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (register-definition-prefixes "markdown-mode" '("defun-markdown-" "gfm-" "markdown")) (provide 'markdown-mode-autoloads)) "lv" ((lv-autoloads lv) (register-definition-prefixes "lv" '("lv-")) (provide 'lv-autoloads)) "lsp-mode" ((lsp-fortran lsp-xml lsp-erlang lsp-iedit lsp-terraform lsp-purescript lsp-pwsh lsp-sqls lsp lsp-mode-autoloads lsp-javascript lsp-steep lsp-clojure lsp-lens lsp-protocol lsp-gdscript lsp-fsharp lsp-nix lsp-tex lsp-idris lsp-magik lsp-nginx lsp-dockerfile lsp-rf lsp-hack lsp-vhdl lsp-lua lsp-prolog lsp-perl lsp-eslint lsp-ada lsp-modeline lsp-vetur lsp-html lsp-bash lsp-cmake lsp-openscad lsp-zig lsp-icons lsp-actionscript lsp-pylsp lsp-emmet lsp-kotlin lsp-volar lsp-clangd lsp-sorbet lsp-headerline lsp-verilog lsp-d lsp-yaml lsp-svelte lsp-php lsp-dhall lsp-mode lsp-vala lsp-csharp lsp-ido lsp-semantic-tokens lsp-elixir lsp-elm lsp-diagnostics lsp-graphql lsp-remark lsp-markdown lsp-crystal lsp-haxe lsp-ansible lsp-json lsp-toml lsp-beancount lsp-solargraph lsp-groovy lsp-typeprof lsp-rust lsp-completion lsp-ocaml lsp-go lsp-pyls lsp-v lsp-vimscript lsp-css lsp-racket lsp-nim lsp-angular lsp-dired lsp-r lsp-ttcn3 lsp-perlnavigator) (register-definition-prefixes "lsp-actionscript" '("lsp-actionscript-")) (register-definition-prefixes "lsp-ada" '("lsp-ada-")) (register-definition-prefixes "lsp-angular" '("lsp-client")) (register-definition-prefixes "lsp-ansible" '("lsp-ansible-")) (register-definition-prefixes "lsp-bash" '("lsp-bash-")) (register-definition-prefixes "lsp-beancount" '("lsp-beancount-")) (autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-clangd" "Explain a clang-tidy ERROR by scraping documentation from llvm.org.

(fn ERROR)" nil nil) (register-definition-prefixes "lsp-clangd" '("lsp-c")) (autoload 'lsp-clojure-show-test-tree "lsp-clojure" "Show a test tree and focus on it if IGNORE-FOCUS? is nil.

(fn IGNORE-FOCUS\\=\\?)" t nil) (register-definition-prefixes "lsp-clojure" '("lsp-clojure-")) (define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1") (define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "lsp-mode 7.0.1") (autoload 'lsp-completion-at-point "lsp-completion" "Get lsp completions." nil nil) (autoload 'lsp-completion--enable "lsp-completion" "Enable LSP completion support." nil nil) (autoload 'lsp-completion-mode "lsp-completion" "Toggle LSP completion support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Completion mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-completion-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable)))) (register-definition-prefixes "lsp-completion" '("lsp-")) (register-definition-prefixes "lsp-crystal" '("lsp-clients-crystal-executable")) (register-definition-prefixes "lsp-csharp" '("lsp-csharp-")) (register-definition-prefixes "lsp-css" '("lsp-css-")) (define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1") (define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1") (autoload 'lsp-diagnostics-lsp-checker-if-needed "lsp-diagnostics" nil nil nil) (autoload 'lsp-diagnostics--enable "lsp-diagnostics" "Enable LSP checker support." nil nil) (autoload 'lsp-diagnostics-mode "lsp-diagnostics" "Toggle LSP diagnostics integration.

This is a minor mode.  If called interactively, toggle the
`Lsp-Diagnostics mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable)))) (register-definition-prefixes "lsp-diagnostics" '("lsp-diagnostics-")) (defvar lsp-dired-mode nil "Non-nil if Lsp-Dired mode is enabled.
See the `lsp-dired-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lsp-dired-mode'.") (custom-autoload 'lsp-dired-mode "lsp-dired" nil) (autoload 'lsp-dired-mode "lsp-dired" "Display `lsp-mode' icons for each file in a dired buffer.

This is a minor mode.  If called interactively, toggle the
`Lsp-Dired mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='lsp-dired-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (register-definition-prefixes "lsp-dired" '("lsp-dired-")) (register-definition-prefixes "lsp-dockerfile" '("lsp-dockerfile-language-server-command")) (register-definition-prefixes "lsp-elixir" '("lsp-elixir-")) (register-definition-prefixes "lsp-elm" '("lsp-")) (register-definition-prefixes "lsp-emmet" '("lsp-emmet-ls-command")) (register-definition-prefixes "lsp-erlang" '("lsp-erlang-server-")) (register-definition-prefixes "lsp-eslint" '("lsp-")) (register-definition-prefixes "lsp-fortran" '("lsp-clients-")) (autoload 'lsp-fsharp--workspace-load "lsp-fsharp" "Load all of the provided PROJECTS.

(fn PROJECTS)" nil nil) (register-definition-prefixes "lsp-fsharp" '("lsp-fsharp-")) (register-definition-prefixes "lsp-gdscript" '("lsp-gdscript-")) (register-definition-prefixes "lsp-go" '("lsp-go-")) (register-definition-prefixes "lsp-graphql" '("lsp-")) (register-definition-prefixes "lsp-groovy" '("lsp-groovy-")) (register-definition-prefixes "lsp-hack" '("lsp-clients-hack-command")) (register-definition-prefixes "lsp-haxe" '("lsp-")) (autoload 'lsp-headerline-breadcrumb-mode "lsp-headerline" "Toggle breadcrumb on headerline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Headerline-Breadcrumb mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-headerline-breadcrumb-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (autoload 'lsp-breadcrumb-go-to-symbol "lsp-headerline" "Go to the symbol on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t nil) (autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-headerline" "Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t nil) (register-definition-prefixes "lsp-headerline" '("lsp-headerline-")) (register-definition-prefixes "lsp-html" '("lsp-html-")) (register-definition-prefixes "lsp-icons" '("lsp-")) (autoload 'lsp-ido-workspace-symbol "lsp-ido" "`ido' for lsp workspace/symbol.
When called with prefix ARG the default selection will be symbol at point.

(fn ARG)" t nil) (register-definition-prefixes "lsp-ido" '("lsp-ido-")) (register-definition-prefixes "lsp-idris" '("lsp-idris2-lsp-")) (autoload 'lsp-iedit-highlights "lsp-iedit" "Start an `iedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t nil) (autoload 'lsp-iedit-linked-ranges "lsp-iedit" "Start an `iedit' for `textDocument/linkedEditingRange'" t nil) (autoload 'lsp-evil-multiedit-highlights "lsp-iedit" "Start an `evil-multiedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t nil) (autoload 'lsp-evil-multiedit-linked-ranges "lsp-iedit" "Start an `evil-multiedit' for `textDocument/linkedEditingRange'" t nil) (autoload 'lsp-evil-state-highlights "lsp-iedit" "Start `iedit-mode'. for `textDocument/documentHighlight'" t nil) (autoload 'lsp-evil-state-linked-ranges "lsp-iedit" "Start `iedit-mode'. for `textDocument/linkedEditingRange'" t nil) (register-definition-prefixes "lsp-iedit" '("lsp-iedit--on-ranges")) (register-definition-prefixes "lsp-javascript" '("lsp-")) (register-definition-prefixes "lsp-json" '("lsp-")) (register-definition-prefixes "lsp-kotlin" '("lsp-")) (autoload 'lsp-lens--enable "lsp-lens" "Enable lens mode." nil nil) (autoload 'lsp-lens-show "lsp-lens" "Display lenses in the buffer." t nil) (autoload 'lsp-lens-hide "lsp-lens" "Delete all lenses." t nil) (autoload 'lsp-lens-mode "lsp-lens" "Toggle code-lens overlays.

This is a minor mode.  If called interactively, toggle the
`Lsp-Lens mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-lens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (autoload 'lsp-avy-lens "lsp-lens" "Click lsp lens using `avy' package." t nil) (register-definition-prefixes "lsp-lens" '("lsp-")) (register-definition-prefixes "lsp-lua" '("lsp-")) (register-definition-prefixes "lsp-magik" '("lsp-magik-")) (register-definition-prefixes "lsp-markdown" '("lsp-markdown-")) (put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp) (put 'lsp-file-watch-ignored-directories 'safe-local-variable 'lsp--string-listp) (put 'lsp-file-watch-ignored-files 'safe-local-variable 'lsp--string-listp) (put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i)))) (autoload 'lsp--string-listp "lsp-mode" "Return t if all elements of SEQUENCE are strings, else nil.

(fn SEQUENCE)" nil nil) (autoload 'lsp-load-vscode-workspace "lsp-mode" "Load vscode workspace from FILE

(fn FILE)" t nil) (autoload 'lsp-save-vscode-workspace "lsp-mode" "Save vscode workspace to FILE

(fn FILE)" t nil) (autoload 'lsp-install-server "lsp-mode" "Interactively install or re-install server.
When prefix UPDATE? is t force installation even if the server is present.

(fn UPDATE\\=\\? &optional SERVER-ID)" t nil) (autoload 'lsp-update-server "lsp-mode" "Interactively update a server.

(fn &optional SERVER-ID)" t nil) (autoload 'lsp-ensure-server "lsp-mode" "Ensure server SERVER-ID

(fn SERVER-ID)" nil nil) (autoload 'lsp "lsp-mode" "Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

(fn &optional ARG)" t nil) (autoload 'lsp-deferred "lsp-mode" "Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs." nil nil) (autoload 'lsp-start-plain "lsp-mode" "Start `lsp-mode' using mininal configuration using the latest `melpa' version of the packages.

In case the major-mode that you are using for " t nil) (register-definition-prefixes "lsp-mode" '("defcustom-lsp" "lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")) (define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1") (autoload 'lsp-modeline-code-actions-mode "lsp-modeline" "Toggle code actions on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Code-Actions mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-code-actions-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1") (autoload 'lsp-modeline-diagnostics-mode "lsp-modeline" "Toggle diagnostics modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Diagnostics mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (autoload 'lsp-modeline-workspace-status-mode "lsp-modeline" "Toggle workspace status on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Workspace-Status mode' mode.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-workspace-status-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (register-definition-prefixes "lsp-modeline" '("lsp-")) (register-definition-prefixes "lsp-nginx" '("lsp-nginx-server-command")) (register-definition-prefixes "lsp-nim" '("lsp-nim-")) (register-definition-prefixes "lsp-nix" '("lsp-nix-server-path")) (register-definition-prefixes "lsp-ocaml" '("lsp-ocaml-l")) (register-definition-prefixes "lsp-openscad" '("lsp-openscad-server")) (register-definition-prefixes "lsp-perl" '("lsp-perl-")) (register-definition-prefixes "lsp-perlnavigator" '("lsp-perlnavigator-")) (register-definition-prefixes "lsp-php" '("lsp-")) (register-definition-prefixes "lsp-prolog" '("lsp-prolog-server-command")) (register-definition-prefixes "lsp-protocol" '("dash-expand:&RangeToPoint" "lsp")) (register-definition-prefixes "lsp-purescript" '("lsp-purescript-")) (register-definition-prefixes "lsp-pwsh" '("lsp-pwsh-")) (register-definition-prefixes "lsp-pyls" '("lsp-")) (register-definition-prefixes "lsp-pylsp" '("lsp-")) (register-definition-prefixes "lsp-r" '("lsp-clients-r-server-command")) (register-definition-prefixes "lsp-racket" '("lsp-racket-lang")) (register-definition-prefixes "lsp-remark" '("lsp-remark-server-command")) (register-definition-prefixes "lsp-rf" '("expand-start-command" "lsp-rf-language-server-" "parse-rf-language-server-")) (register-definition-prefixes "lsp-rust" '("lsp-")) (autoload 'lsp--semantic-tokens-initialize-buffer "lsp-semantic-tokens" "Initialize the buffer for semantic tokens.
IS-RANGE-PROVIDER is non-nil when server supports range requests." nil nil) (autoload 'lsp--semantic-tokens-initialize-workspace "lsp-semantic-tokens" "Initialize semantic tokens for WORKSPACE.

(fn WORKSPACE)" nil nil) (autoload 'lsp-semantic-tokens--warn-about-deprecated-setting "lsp-semantic-tokens" "Warn about deprecated semantic highlighting variable." nil nil) (autoload 'lsp-semantic-tokens--enable "lsp-semantic-tokens" "Enable semantic tokens mode." nil nil) (autoload 'lsp-semantic-tokens-mode "lsp-semantic-tokens" "Toggle semantic-tokens support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Semantic-Tokens mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-semantic-tokens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t nil) (register-definition-prefixes "lsp-semantic-tokens" '("lsp-")) (register-definition-prefixes "lsp-solargraph" '("lsp-solargraph-")) (register-definition-prefixes "lsp-sorbet" '("lsp-sorbet-")) (register-definition-prefixes "lsp-sqls" '("lsp-sql")) (register-definition-prefixes "lsp-steep" '("lsp-steep-")) (register-definition-prefixes "lsp-svelte" '("lsp-svelte-plugin-")) (register-definition-prefixes "lsp-terraform" '("lsp-terraform-")) (register-definition-prefixes "lsp-tex" '("lsp-")) (register-definition-prefixes "lsp-toml" '("lsp-toml-")) (register-definition-prefixes "lsp-ttcn3" '("lsp-ttcn3-lsp-server-command")) (register-definition-prefixes "lsp-typeprof" '("lsp-typeprof-")) (register-definition-prefixes "lsp-v" '("lsp-v-vls-executable")) (register-definition-prefixes "lsp-vala" '("lsp-clients-vala-ls-executable")) (register-definition-prefixes "lsp-verilog" '("lsp-clients-")) (register-definition-prefixes "lsp-vetur" '("lsp-vetur-")) (register-definition-prefixes "lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-")) (register-definition-prefixes "lsp-vimscript" '("lsp-clients-vim-")) (register-definition-prefixes "lsp-volar" '("lsp-volar-")) (register-definition-prefixes "lsp-xml" '("lsp-xml-")) (register-definition-prefixes "lsp-yaml" '("lsp-yaml-")) (register-definition-prefixes "lsp-zig" '("lsp-zig-zls-executable")) (provide 'lsp-mode-autoloads)) "origami" ((origami-parsers origami origami-autoloads) (autoload 'origami-mode "origami" "Minor mode to selectively hide/show text in the current buffer.
With a prefix argument ARG, enable the mode if ARG is positive,
and disable it otherwise.  If called from Lisp, enable the mode
if ARG is omitted or nil.

Lastly, the normal hook `origami-mode-hook' is run using
`run-hooks'.

Key bindings:
\\{origami-mode-map}

(fn &optional ARG)" t nil) (put 'global-origami-mode 'globalized-minor-mode t) (defvar global-origami-mode nil "Non-nil if Global Origami mode is enabled.
See the `global-origami-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-origami-mode'.") (custom-autoload 'global-origami-mode "origami" nil) (autoload 'global-origami-mode "origami" "Toggle Origami mode in all buffers.
With prefix ARG, enable Global Origami mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Origami mode is enabled in all buffers where `(lambda nil
(origami-mode 1))' would do it.

See `origami-mode' for more information on Origami mode.

(fn &optional ARG)" t nil) (register-definition-prefixes "origami" '("origami-")) (register-definition-prefixes "origami-parsers" '("origami-")) (provide 'origami-autoloads)) "tsx-mode" ((tsx-mode tsx-mode-autoloads) (autoload 'tsx-mode "tsx-mode" "A batteries-included major mode for JSX and friends.

(fn)" t nil) (register-definition-prefixes "tsx-mode" '("tsx-mode-")) (provide 'tsx-mode-autoloads))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 11 "melpa" nil "gnu-elpa-mirror" nil "el-get" nil "emacsmirror-mirror" nil "straight" nil "use-package" nil "bind-key" nil "tsi" nil "tree-sitter" nil "tsc" nil "tsx-mode" nil "tree-sitter-langs" nil "lsp-mode" nil "dash" nil "f" nil "s" nil "ht" nil "spinner" nil "markdown-mode" nil "lv" nil "origami" nil "cl-lib" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "el-get" (el-get :type git :flavor melpa :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :host github :repo "dimitri/el-get") "emacsmirror-mirror" nil "straight" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "tsi" nil "tree-sitter" (tree-sitter :type git :flavor melpa :files ("lisp/*.el" (:exclude "lisp/tree-sitter-tests.el") "tree-sitter-pkg.el") :branch "release" :host github :repo "emacs-tree-sitter/elisp-tree-sitter") "tsc" (tsc :type git :flavor melpa :files ("core/*.el" "core/Cargo.toml" "core/Cargo.lock" "core/src" "tsc-pkg.el") :branch "release" :host github :repo "emacs-tree-sitter/elisp-tree-sitter") "tsx-mode" nil "tree-sitter-langs" (tree-sitter-langs :type git :flavor melpa :files (:defaults "queries" "tree-sitter-langs-pkg.el") :branch "release" :host github :repo "emacs-tree-sitter/tree-sitter-langs") "lsp-mode" (lsp-mode :type git :flavor melpa :files (:defaults "clients/*.el" "lsp-mode-pkg.el") :host github :repo "emacs-lsp/lsp-mode") "dash" (dash :type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el") "f" (f :type git :flavor melpa :files ("f.el" "f-pkg.el") :host github :repo "rejeep/f.el") "s" (s :type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el") "ht" (ht :type git :flavor melpa :files ("ht.el" "ht-pkg.el") :host github :repo "Wilfred/ht.el") "spinner" nil "markdown-mode" (markdown-mode :type git :flavor melpa :host github :repo "jrblevin/markdown-mode") "lv" (lv :type git :flavor melpa :files ("lv.el" "lv-pkg.el") :host github :repo "abo-abo/hydra") "origami" (origami :type git :flavor melpa :host github :repo "gregsexton/origami.el") "cl-lib" nil)) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "emacsmirror-mirror" nil "straight" nil "tsi" nil "tsx-mode" nil "spinner" (spinner :type git :host github :repo "emacs-straight/spinner" :files ("*" (:exclude ".git"))) "cl-lib" nil)) el-get #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "emacsmirror-mirror" nil "straight" nil "tsi" nil "tsx-mode" nil "cl-lib" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "tsi" nil "tsx-mode" nil "cl-lib" nil))))

("org-elpa" "melpa" "gnu-elpa-mirror" "el-get" "emacsmirror-mirror" "straight" "emacs" "use-package" "bind-key" "tsi" "tree-sitter" "tsc" "tsx-mode" "tree-sitter-langs" "lsp-mode" "dash" "f" "s" "ht" "spinner" "markdown-mode" "lv" "origami" "cl-lib")

t
