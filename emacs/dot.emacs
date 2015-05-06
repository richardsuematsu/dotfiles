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
(load-library "package-install")
(load-library "app-config")
(load-library "mapserver")
(load-library "language-config")
(load-library "markup-config")
(load-library "keybinding-config")

(setq x-super-keysym 'meta)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(eclim-eclipse-dirs (quote ("~/apps/eclipse")))
 '(eclim-executable "~/apps/eclipse/eclim")
 '(egg-enable-tooltip t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
