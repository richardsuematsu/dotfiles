;;(global-font-lock-mode 1 t)

(defvar emacs-root (if (or (eq system-type 'gnu/linux)
			   (eq system-type 'linux))
		       "/home/rich"
		     "C:/Users/rich")
  "My home directory")

(defvar home-dir)
(setq home-dir (concat (expand-file-name "~") "/"))
(setq load-path (append (list (concat home-dir "")
			      (concat home-dir "emacs/config")
			      (concat home-dir "emacs/lisp")
			      (concat home-dir "emacs/site-lisp")
			      (concat home-dir "emacs/site-lisp/auto-complete-1.3.1")
			      (concat home-dir "emacs/site-lisp/company-mode")
			      (concat home-dir "emacs/site-lisp/emacs-eclim")
			      (concat home-dir "/usr/local/go/misc/emacs"))
                        load-path))

(load-library "screen-config")
(load-library "keybinding-config")
(load-library "language-config")
(load-library "markup-config")
(load-library "app-config")
(load-library "mapserver")

(setq x-super-keysym 'meta)

