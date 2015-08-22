
(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("melpa"       . "http://melpa.org/packages/")))

(package-initialize)

(defvar my-packages
    '(better-defaults ;; starter-kit
      company ;; auto complete
      company-go ;; auto complete golang
      dropdown-list
      evil ;;emacs vim mode
      evil-leader ;; bind keys
      go-eldoc ;; provide eldco for golang
      go-mode ;; golang mode
      key-chord
      magit ;; git for emacs
      solarized-theme ;;theme
      ssh-agency ;; ssh agency
      yasnippet ;; template system for emacs
      window-numbering ;; Numbered window shortcuts for Emacs
      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(add-hook 'after-init-hook 'global-company-mode)

(dolist (file (directory-files (expand-file-name "elisp" init-file-dir) t ".+\\.org?$"))
(org-babel-load-file  file))
