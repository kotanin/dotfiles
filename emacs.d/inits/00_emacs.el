;; color-theme
(load-theme 'wombat t)

;; hidden tool-bar
(tool-bar-mode 0)

;; hidden menu-bar
(menu-bar-mode 0)

;; show column number
(column-number-mode t)

;; text code
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; filename text code when Mac OS X
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

;; filename text code when Windows
(when (eq window-system 'w32)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))

;; show path in title bar
(setq frame-title-format "%f")

;; backup files
(add-to-list 'backup-directory-alist
			 (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
	  `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))
;;(setq backup-directory-alist
;;	  `((".*" ,"~/.emacs.d/backups/")))
;;(setq auto-save-file-transforms
;;	  `((".*" ,"~/.emacs.d/backups/" t)))
;;(setq backup-directory-alist
;;	  `((".*" ,temporary-file-directory)))
;;(setq auto-save-file-transforms
;;	  `((".*" ,temporary-file-directory t)))

