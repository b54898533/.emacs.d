
(require 'solarized)
(deftheme solarized-dark "The dark variant of the Solarized colour theme")
(create-solarized-theme 'dark 'solarized-dark)

(add-to-list 'default-frame-alist '(font . "Consolas-12"))

(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode 1) ;;line number

(window-numbering-mode 1)

(desktop-save-mode 1)
