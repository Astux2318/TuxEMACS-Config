(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-package)
(require 'init-ui)
(require 'init-code)
(require 'init-org)
;(require 'init-exwm)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(centaur-tabs dap-mode dashboard dirvish flycheck frame-local
		  gradle-mode helm kaolin-themes leuven-theme
		  markdown-mode neotree org-bullets pkg-info
		  projectile request rich-minority slime
		  spaceline-all-the-icons spinner srcery-theme
		  treemacs web-mode yaml yasnippet zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
