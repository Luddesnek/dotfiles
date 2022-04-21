4
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" default))
 '(inhibit-startup-buffer-menu t)
 '(package-selected-packages
   '(dmenu evil-visual-mark-mode dracula-theme doom-modeline use-package org-tree-slide evil exwm org-remark org)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Roboto Mono" :foundry "GOOG" :slant normal :weight normal :height 127 :width normal)))))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq org-support-shift-select t)
(require 'exwm)
(require 'exwm-config)
(exwm-config-default)

(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(1 "HDMI-0"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output HDMI-0 --mode 1920x1080 --rate 239.76")))
(exwm-randr-enable)

(require 'use-package)
(setq use-package-always-ensure t)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))



(use-package doom-modeline
	     :ensure t
	     :init (doom-modeline-mode 1)
	     :custom ((doom-modeline-height 15)))


(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(display-time-mode 1)
















