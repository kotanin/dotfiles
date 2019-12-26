;; tab space
(setq-default indent-tabs-mode nil)
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
