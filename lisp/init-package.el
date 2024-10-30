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


(use-package 'ivy)
(use-package 'counsel)
(use-package 'all-the-icons)
(use-package 'centaur-tabs)
(use-package 'dash)
(use-package 'dashboard)

(use-package 'flycheck)
(use-package 'frame-local)
(use-package 'macrostep)
(use-package 'neotree)
(use-package 'org-bullets)
(use-package 'pkg-info)
(use-package 'powerline)
(use-package 'projectile)
(use-package 'rich-minority)
(use-package 'slime)
(use-package 'dirvish)
;;nano
(use-package 'nano-theme)
;(use-package 'nano-modeline)
;;LSP
(use-package 'yasnippet)
(use-package 'gradle-mode)
;(use-package 'lsp-mode)
;(use-package 'lsp-java)
;(use-package 'simple-modeline)

(use-package 'web-mode)
(use-package 'markdown-mode)

(provide 'init-package)
