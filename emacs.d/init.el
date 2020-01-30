
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp")

;; path from shell
(exec-path-from-shell-initialize)

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
;;        `((".*" ,"~/.emacs.d/backups/")))
;;(setq auto-save-file-transforms
;;        `((".*" ,"~/.emacs.d/backups/" t)))
;;(setq backup-directory-alist
;;        `((".*" ,temporary-file-directory)))
;;(setq auto-save-file-transforms
;;        `((".*" ,temporary-file-directory t)))

;; tab space
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; line prefs
(global-linum-mode t)
(global-hl-line-mode t)
(setq show-paren-delay 0)
(show-paren-mode t)

;; font face
;; ascii
(set-face-attribute 'default nil
                                        :family "MyricaM M"
                                        :height 120)
;; japanese
(set-fontset-font
  nil 'japanese-jisx0208
  (font-spec :family "MyricaM M"))

;; define key
(keyboard-translate ?\C-h ?\C-?)
(define-key global-map (kbd "C-x ?") 'help-command)
(define-key global-map (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-t") 'other-window)

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

;; visual-regexp
(global-set-key (kbd "M-%") 'vr/query-replace)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (visual-regexp exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
