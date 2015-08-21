
;(require 'go-mode-autoloads)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/dougm/goflymake"))
(require 'go-flymake)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)
