;; org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(require 'taskjuggler-mode)

(load-file "emacs/site-lisp/graphviz-dot-mode.el") 

(require 'epa)
(epa-file-enable)
(setq epg-gpg-program "/usr/local/bin/gpg")

(require 'egg)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(egg-enable-tooltip t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'deft)
(setq deft-extension "md")
(setq deft-directory "~/Dropbox/notes")
(setq deft-text-mode 'markdown-mode)

(require 'tramp)
(setq tramp-default-method "ssh")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(autoload 'wl "wl" "Wanderlust" t)

;;bbdb
(require 'bbdb-loaddefs "/usr/local/share/emacs/site-lisp/bbdb-loaddefs.el")
