
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(cherry-blossom))
 '(custom-safe-themes
   '("3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "3a78cae35163bb71df460ebcfdebf811fd7bc74eaa15428c7e0bccfd4f858d30" "1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" default))
 '(doom-modeline-bar-width 4)
 '(exwm-input-global-keys
   '(([8388722]
      . exwm-reset)
     ([8388727]
      . exwm-workspace-switch)
     ([167]
      lambda
      (command)
      (interactive
       (list
	(read-shell-command "$ ")))
      (start-process-shell-command command nil command))
     ([8388656]
      V lambda nil
      (interactive)
      (exwm-workspace-switch-create 0))
     ([8388657]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 1))
     ([8388658]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 2))
     ([8388659]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 3))
     ([8388660]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 4))
     ([8388661]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 5))
     ([8388662]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 6))
     ([8388663]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 7))
     ([8388664]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 8))
     ([8388665]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 9))))
 '(exwm-workspace-number 4)
 '(inhibit-startup-buffer-menu t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(multiple-cursors yaml-mode yaml www-synonyms zzz-to-char omnisharp ivy treemacs vterm select-themes cherry-blossom-theme abyss-theme dracula-theme doom-modeline use-package org-tree-slide exwm org-remark org))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Roboto Mono" :foundry "GOOG" :slant normal :weight normal :height 127 :width normal))))
 '(doom-modeline-bar-inactive ((t nil)))
 '(tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width (1 . 1) :style released-button))))))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'exwm)
(require 'exwm-config)
(exwm-config-default)
(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(1 "HDMI-0")):
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output HDMI-0 --mode 1920x1080 --rate 239.76")))
 (exwm-randr-enable)

(defun efs/exwm-init-hook ()
  (exwm-workspace-switch-create 1))

(require 'use-package)
(setq use-package-always-ensure t)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))


(use-package doom-modeline
	     :ensure t
	     :init (doom-modeline-mode 1)
	     :custom ((doom-modeline-height 12)))

(set-frame-parameter (selected-frame) 'alpha '(85 . 85))
(add-to-list 'default-frame-alist '(alpha . (85 . 85)))

(display-time-mode 1)
(require 'ivy)
(use-package ivy)
  (ivy-mode 1)
  
(server-start)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)



(put 'upcase-region 'disabled nil)
