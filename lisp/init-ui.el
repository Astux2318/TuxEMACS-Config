; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
;(scroll-bar-mode -1)

;;Time
(display-time-mode 1) 
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

 (menu-bar-mode 0) 
(setq make-backup-files nil)
(when (display-graphic-p) (toggle-scroll-bar -1)) ;;滚动条
(column-number-mode t)  
;; 显示行号
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(setq linum-format "%d> ")
;(global-linum-mode 1)
;(require 'linum-relative)
;(linum-relative-on)
;(linum-on)
;(linum-relative-toggle)
;(setq linum-relative-backend 'display-line-numbers-mode)
;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)
(icomplete-mode 1)
(setq auto-save-default nil)
(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)


;;Fonts
;(set-face-attribute 'default nil :font "hack 16")
;(set-face-attribute 'default nil :font "IBM Plex Sans   16")
(set-face-attribute 'default nil :font "Jet Brains Mono Nerd Font Bold 18")
;; 快速打开配置文件
(defun open-init-file()
 (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;启动
(require 'dashboard)

(dashboard-setup-startup-hook)
(setq dashboard-display-icons-p t)     ; display icons on both GUI and terminal
(setq dashboard-icon-type 'nerd-icons) ; use `nerd-icons' package
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(setq dashboard-banner-logo-title "TuxEmacs")
(setq dashboard-startup-banner 'official)

(setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)
(setq dashboard-items '((recents  . 8)))
(dashboard-modify-heading-icons '((recents   . "nf-oct-file_text")
                                  (bookmarks . "nf-oct-book")))


;;Projectie
(projectile-mode +1)
;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;;Mode
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-support-imenu t)
(setq doom-modeline-height 25)
(setq doom-modeline-bar-width 4)
(setq doom-modeline-hud nil)
(setq doom-modeline-window-width-limit 85)
(setq doom-modeline-project-detection 'auto)
(setq doom-modeline-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-buffer-modification-icon t)






;;顶部TAB
(require 'centaur-tabs)
(centaur-tabs-mode t)
(setq centaur-tabs-style "bar")
(setq centaur-tabs-plain-icons t)
(setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-set-bar 'over)
(setq centaur-tabs-height 32)
(setq centaur-tabs-set-icons t)
(global-set-key (kbd "C-h") 'centaur-tabs-backward)
(global-set-key (kbd "C-g") 'centaur-tabs-forward)
;;Theme

(load-theme 'nano-dark t)



;;NeoTREE
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;;helm


;;透明
(set-frame-parameter nil 'alpha '(97 . 100))
;;icons
(require 'all-the-icons)
(display-graphic-p)
(insert (all-the-icons-icon-for-file "foo.js"))



(provide 'init-ui)
