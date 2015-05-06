;;mapserver
(defvar mapserver-keywords
  '("ANGLE" "ANTIALIAS" "CHARACTER" "CLASS" "CONFIG" "COLOR" "CONNECTION" "CONNECTIONTYPE" "DATA" "DATAPATTERN" "DEBUG" "DRIVER" "DUMP" "END" "EXTENT" "EXTENSION" "FORMATOPTION" "FONT" "FONTSET" "MAXSIZE" "METADATA" "IMAGECOLOR" "IMAGEURL" "IMAGETYPE" "IMAGEMODE" "LABEL" "LABELITEM" "LABELMAXSCALE" "LAYER" "LOG" "LEGEND" "LINEJOIN" "LINEJOINMAXSIZE" "MAP" "MIMETYPE" "MINDISTANCE" "MINSCALEDOM" "MINSIZE" "NAME" "OUTLINECOLOR" "OUTPUTFORMAT" "PROCESSING" "PROJECTION" "POSITION" "SYMBOLSET" "STYLE" "SYMBOL" "STATUS" "SIZE" "SHAPEPATH" "TEMPLATE" "TRANSPARENT" "TYPE" "UNITS" "WEB" "WIDTH")
  "MAPSERVER keywords.")

(defvar mapserver-keywords-regexp (regexp-opt mapserver-keywords 'words))

(defvar mapserver-constant
  '("AGG/PNG" "METERS" "miter" "ON" "PNG" "POLYGON" "RGB" "simple" "true" "truetype")
  "MAPSERVER constants.")

(defvar mapserver-constant-regexp (regexp-opt mapserver-constant 'words))

;;(setq mapserver-keywords nil)

(setq mapserver-font-lock-keywords
  `(
    (,mapserver-keywords-regexp . font-lock-function-name-face)
    (,mapserver-constant-regexp . font-lock-constant-face)
))

(defvar sample-font-lock-keywords
   '(("function \\(\\sw+\\)" (1 font-lock-function-name-face)))
   "Keyword highlighting specification for `sample-mode'.")

(define-derived-mode mapserver-mode fundamental-mode "MapServer"
  (setq font-lock-defaults '(mapserver-font-lock-keywords))
  (setq comment-start "#")
)

(setq auto-mode-alist (cons '("\.map\\'" . mapserver-mode) auto-mode-alist))
