(setq init-file-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "init-packages.org" init-file-dir))
