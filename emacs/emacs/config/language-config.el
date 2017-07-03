;; d-mode
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

;;ruby
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
				     interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-keys)
			 ))
(add-hook 'ruby-mode-hook 'projectile-mode)


;; autoload
;;golang
;; (add-to-list 'load-path "go-mode-load.el" t)
;; (require 'go-mode-load)

;;clojure
(require 'clojure-mode)

;;common lisp
;;(add-to-list 'load-path "~/emacs/site-lisp")
;;(require 'cl-lib)

;;java
(require 'eclim)
(global-eclim-mode)

(custom-set-variables
  '(eclim-eclipse-dirs '("~/apps/eclipse"))
  '(eclim-executable "~/apps/eclipse/eclim"))

;;(setq help-at-pt-display-when-idle t)
;;(setq help-at-pt-timer-delay 0.1)
;;(help-at-pt-set-timer)

;; regular auto-complete initialization
;;(require 'auto-complete-config)
;;(ac-config-default)
;;(add-to-list 'ac-dictionary-directories "~/emacs/site-lisp/auto-complete-1.3.1/dict")
;;(set-cursor-color "#ffffff")

(add-to-list 'load-path "~/emacs/site-list/company-mode")
(autoload 'company-mode "company" nil t)

(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;; add the emacs-eclim source
;;(require 'ac-emacs-eclim-source)
;;(ac-emacs-eclim-config)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
