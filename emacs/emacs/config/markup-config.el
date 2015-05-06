;;asciidoc mode
(add-to-list 'auto-mode-alist '("\\.adoc$" . adoc-mode))
(autoload 'adoc-mode "adoc-mode")

;;haml
(require 'haml-mode)

;;markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
