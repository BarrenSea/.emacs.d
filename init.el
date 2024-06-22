;;官方包配置
(add-to-list 'load-path "~/.emacs.d/lisp/")
;;自定义配置
(add-to-list 'load-path "~/.emacs.d/site-lisp/")


;;镜像设置
(require 'repo)
;;use-package初始化
(require 'use-package)
;;ibuffer配置
(require 'init-ibuffer)
;;emacs自带默认模式设置
(require 'default-set)
;;org设置
(require 'init-org)
;; theme
(require 'init-theme)
(require 'init-markdown)
;;包设置
;;;;company
(require 'init-company)
;;;;magit
(require 'init-git)
;;;;flycheck语法检查
(require 'init-flycheck)
;;;;rainbow-delimiters括号颜色
(require 'init-rainbow-delimiters)
;;;;window管理
(require 'init-ace-window)
;;;;dashboard
(require 'init-dashboard)
;;;;games
(require 'init-games)
;;;;circe
(require 'init-circe)
;;;;rust
(require 'init-rust)
;;;;matrix
(require 'init-matrix)
;;;;whichkey
(require 'init-whichkey)
;;;;pyim输入
;(require 'init-pyim)
;;;;lsp-mode
(require 'init-lsp)
;;;;kotlin
(require 'init-kotlin)
;;;;nginx
(require 'init-nginx)
;;;;yaml
(require 'init-yaml)
;;;;docker
(require 'init-docker)
;;;;popup
(require 'init-popup)
;;;;tex
(require 'init-tex)
;;;;haskell
(require 'init-haskell)
;;;;tsinghua-pyim
;(add-to-list 'load-path "~/.emacs.d/site-lisp/pyim-tsinghua-dict/")
;(require 'pyim-tsinghua-dict)
;(pyim-tsinghua-dict-enable)
;;;;treemacs
(require 'init-treemacs)
(require 'init-window)
(require 'init-polymode)
(require 'init-websocket)
(require 'init-rime)
;;自定义设置
;;;;sdcv纯lisp实现

(require 'stardict)
(require 'init-dictionary)
(require 'init-typst)
(require 'init-json)

(require 'init-pomidor)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("74e2ed63173b47d6dc9a82a9a8a6a9048d89760df18bc7033c5f91ff4d083e37" "2ce76d65a813fae8cfee5c207f46f2a256bac69dacbb096051a7a8651aa252b0" default))
 '(package-selected-packages
   '(pomidor blamer git-gutter all-the-icons kaolin-themes websocket polymode rime haskell-mode windresize auctex lsp-treemacs treemacs-projectile treemacs pyim-cregexp-utils which-key rust-mode rainbow-delimiters pyim-basedict pyim popup nginx-mode magit lsp-ui kotlin-mode gameoflife flycheck-rust ement dockerfile-mode docker-compose-mode dashboard company-nginx circe-notifications ace-window 2048-game)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
