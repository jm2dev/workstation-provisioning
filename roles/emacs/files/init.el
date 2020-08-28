;; http://pages.sachachua.com/.emacs.d/Sacha.html
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(prefer-coding-system 'utf-8)

;; UI
;(set-default-font "Iosevka Light 19")
(tool-bar-mode -1)
(display-time-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;;(toggle-scroll-bar -1)
(global-visual-line-mode 1); Proper line wrapping
(set-fringe-mode '(0 . 0)); Disable fringe because I use visual-line-mode
(show-paren-mode 1) ; turn on paren match highlighting
(setq show-paren-style 'expression) ; highlight entire bracket expression
;; Enable highlighting of current line.
(global-hl-line-mode 1)

(use-package modus-operandi-theme
  :ensure t) 
(use-package modus-vivendi-theme
  :ensure t) 
(load-theme 'modus-operandi t)          ; Light theme
;(load-theme 'modus-vivendi t)           ; Dark theme

(require 'golden-ratio)
(golden-ratio-mode 1)

;; https://ogbe.net/emacsconfig.html
(load "server")
(unless (server-running-p) (server-start))

