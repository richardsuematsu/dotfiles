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


(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; activate installed packages
(package-initialize)

(ensure-package-installed 'magit 'deft 'egg 'elfeed 'flx-ido 'projectile 'yasnippet) ;  --> (nil nil) if iedit and magit are already installed

(ensure-package-installed 'clojure-mode 'd-mode 'go-mode 'js2-mode)

(ensure-package-installed 'adoc-mode 'haml-mode 'lua-mode 'markdown-mode 'web-mode 'yaml-mode)

(ensure-package-installed 'auto-complete 'company 'emacs-eclim 'smart-mode-line)

(ensure-package-installed 'zenburn-theme)
