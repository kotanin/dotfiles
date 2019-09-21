;; package
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))

(when (not package-archive-contents)
  (package-refresh-contents))

;;skk
(require 'skk-setup)

;;oniisama
(require 'oniisama)
(imouto)

;;Nyan Mode
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)

;;markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;magit
(require 'magit)

;; git-gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;; visual-regexp
(global-set-key (kbd "M-%") 'vr/query-replace)

