(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 12)))

(use-package evil)
(evil-mode)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 12)))

(defun lu-funcion()
 (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
)

(setq indent-tabs-mode t)      

(require 'olivetti)
(use-package olivetti
  :ensure t
  :init (olivetti-mode))
(global-set-key (kbd "C-x w") 'olivetti-mode)
(olivetti-set-width 110)
(global-set-key (kbd "C-ä") 'olivetti-shrink)
(global-set-key (kbd "C-ö") 'olivetti-expand)

(global-set-key (kbd "Ä") 'olivetti-shrink)
(global-set-key (kbd "Ö") 'olivetti-expand)

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))

(global-set-key (kbd "C-x t") 'treemacs)
(global-set-key (kbd "C-x e") 'eval-buffer)

(put 'upcase-region 'disabled nil)
(set-frame-parameter (selected-frame) 'alpha '(83 .83))
(add-to-list 'default-frame-alist '(alpha . (83 .83)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(ivy-mode)
(display-line-numbers-mode)
(setq display-line-numbers 'relative)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(cherry-blossom))
 '(custom-safe-themes
   '("9ee253fcdb48535bf16df2700582b0a11fe99390b018755b941140f2fcdff219" "9ee253fcdb48335bf16df2700582b0a11fe99390b018755b941140f2fcdff219" default))
 '(display-time-mode t)
 '(doom-modeline-mode t)
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(theme-magic multiple-cursors exwm gnu-indent indent-tools eshell-vterm evil-better-visual-line vterm lispy org-bullets olivetti ivy doom-modeline evil use-package))
 '(treemacs-indent-guide-mode t)
 '(warning-suppress-types '((auto-save) (emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "mononoki NF" :foundry "DAMA" :slant normal :weight normal :height 160 :width normal)))))
