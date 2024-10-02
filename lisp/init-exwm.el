(require 'exwm)
(require 'exwm-config)
(exwm-config-default)

(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(1 "eDP-1"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output eDP-1 --right-of eDP-2 --auto")))
(exwm-randr-enable)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(provide 'init-exwm)
