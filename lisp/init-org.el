
;;代码块高亮
(setq org-src-fontify-natively t)
;;快速输入
(global-set-key (kbd "M-o") 'org-insert-structure-template)
;; (use-package org-roam
;;   :ensure t
;;   :custom
;;   (org-roam-directory (file-truename "~/org_note"))
;;   )
(provide 'init-org)
