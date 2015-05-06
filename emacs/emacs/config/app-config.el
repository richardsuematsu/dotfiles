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

(autoload 'wl "wl" "Wanderlust" t)

;;magit
(setq magit-last-seen-setup-instructions "1.4.0")

;;bbdb
;;(require 'bbdb-loaddefs "/usr/local/share/emacs/site-lisp/bbdb-loaddefs.el")

(require 'ido)
    (ido-mode t)

(projectile-global-mode)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
