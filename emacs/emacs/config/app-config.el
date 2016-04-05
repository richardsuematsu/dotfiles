;; org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(require 'taskjuggler-mode)

(load-file "emacs/site-lisp/graphviz-dot-mode.el") 

(require 'epa)
(epa-file-enable)
(setq epg-gpg-program "/usr/local/bin/gpg")

(require 'deft)
(setq deft-extensions '("txt" "adoc" "org"))
(setq deft-directory "~/Dropbox/notes")
(setq deft-text-mode 'adoc-mode)
(setq deft-recursive t)

(require 'tramp)
(setq tramp-default-method "ssh")

(autoload 'wl "wl" "Wanderlust" t)

;;magit
(setq magit-last-seen-setup-instructions "1.4.0")

;;bbdb
;;(require 'bbdb-loaddefs "/usr/local/share/emacs/site-lisp/bbdb-loaddefs.el")

(require 'ido)
    (ido-mode t)

;;(projectile-global-mode)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(require 'yasnippet)
(yas-global-mode 1)

(setq elfeed-db-directory "~/Dropbox/emacs/elfeed")
(setq elfeed-feeds '("http://blog.8thlight.com/feed/atom.xml"
		     "http://developer.apple.com/news/rss/news.rss"
		     "http://images.apple.com/main/rss/hotnews/hotnews.rss"
		     "http://blogs.esri.com/esri/arcgis/feed/"
		     "http://feeds.feedburner.com/typepad/zeissg/geospatial"
		     "http://daringfireball.net/index.xml"
		     "http://freecode.com/articles.atom"
		     "http://googleresearch.blogspot.com/feeds/posts/default"
		     "http://inconsolation.wordpress.com/feed/"
		     "http://feeds.feedburner.com/JamesWeaversJavafxBlog"
		     "http://feeds2.feedburner.com/JoGiles"
		     "http://feeds.feedburner.com/LinuxHatersBlog?format=xml"
		     "http://martinfowler.com/feed.atom"
		     "http://feeds.nbcnews.com/feeds/photoblog"
		     "http://feeds.cyberciti.biz/Nixcraft-LinuxFreebsdSolarisTipsTricks"
		     "http://www.mikeash.com/pyblog/rss.py?mode=fulltext"
		     "http://www.randsinrepose.com/index.xml"
		     "http://schneide.wordpress.com/feed/"
		     "http://spatiallyadjusted.com/atom.xml"
		     "http://thechangelog.com/feed/"
		     "http://blog.golang.org/feed.atom"
		     "http://feeds.feedburner.com/javaposse"
		     "http://googleblog.blogspot.com/feeds/posts/default"
		     "http://feeds.feedburner.com/TheOneWithD"
		     "http://ergoemacs.org/emacs/blog.xml"))
