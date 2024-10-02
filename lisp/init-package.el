(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")))


(package-initialize)

(defun use-package (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package))
  (package-installed-p package))



(use-package 'kaolin-themes)
(use-package 'helm)
(use-package 'all-the-icons)
(use-package 'centaur-tabs)
(use-package 'dash)
(use-package 'dashboard)

(use-package 'flycheck)
(use-package 'frame-local)
(use-package 'leuven-theme)
(use-package 'macrostep)
(use-package 'neotree)
(use-package 'org-bullets)
(use-package 'pkg-info)
(use-package 'powerline)
(use-package 'projectile)
(use-package 'rich-minority)
(use-package 'slime)
(use-package 'zenburn-theme)
(use-package 'dirvish)
;;nano
;(use-package 'nano-theme)

;;LSP
(use-package 'yasnippet)
(use-package 'gradle-mode)
;(use-package 'lsp-mode)
;(use-package 'lsp-java)
;(use-package 'simple-modeline)
(use-package 'spaceline-all-the-icons)
(use-package 'web-mode)


(provide 'init-package)
