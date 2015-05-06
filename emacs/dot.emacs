;;(global-font-lock-mode 1 t)

(setq default-frame-alist
      '(
	(background-color . "black")
	(foreground-color . "wheat")
))

(defvar home-dir)
(setq home-dir (concat (expand-file-name "~") "/"))
(setq load-path (append (list (concat home-dir "")
			      (concat home-dir "site-lisp"))
                        load-path))

;; bind them
(global-set-key [(control kp-add)] 'previous-buffer)
(global-set-key [(control kp-subtract)] 'next-buffer)
(global-set-key [f2] 'other-window)       ;convenient shortcuts.
(global-set-key [f3] 'kill-this-buffer)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)


;;mapserver
(defvar mapserver-keywords
  '("NAME" "STATUS" "SIZE" "TRANSPARENT" "SYMBOLSET" "FONTSET" "DEBUG" "MAXSIZE" "IMAGETYPE" "DATAPATTERN" "OUTPUTFORMAT" "DRIVER" "IMAGEMODE" "PROJECTION" "UNITS" "EXTENT" "WEB" "LAYER" "END" "CLASS" "STYLE" "METADATA" "SYMBOL" "WIDTH" "COLOR" "CONNECTIONTYPE" "DATA" "PROCESSING")
  "MAPSERVER keywords.")

(defvar mapserver-keywords-regexp (regexp-opt mapserver-keywords 'words))

;;(setq mapserver-keywords nil)

(setq mapserver-font-lock-keywords
  `(
    (,mapserver-keywords-regexp . font-lock-function-name-face)
))

(define-derived-mode mapserver-mode fundamental-mode
  (setq font-lock-defaults '((mapserver-font-lock-keywords)))
)

(setq auto-mode-alist (cons '("\.map\\'" . mapserver-mode) auto-mode-alist))

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

;; drag and drop os x
(define-key global-map [ns-drag-file] 'my-ns-open-files)
(defun my-ns-open-files ()
  "Open files in the list `ns-input-file'."
  (interactive)
  (mapc 'find-file ns-input-file)
  (setq ns-input-file nil))

;;org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;asciidoc mode
(add-to-list 'auto-mode-alist '("\\.adoc$" . doc-mode))
(autoload 'doc-mode "doc-mode")

(setq x-super-keysym 'meta)

(require 'haml-mode)

(load-file "site-lisp/graphviz-dot-mode.el") 

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

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'deft)
(setq deft-extension "md")
(setq deft-directory "~/Dropbox/notes")
(setq deft-text-mode 'markdown-mode)


