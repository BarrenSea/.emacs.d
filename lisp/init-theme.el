(use-package all-the-icons
  :ensure t)
(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-dark t)
  (kaolin-treemacs-theme))
(provide 'init-theme)
