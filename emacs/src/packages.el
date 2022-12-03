;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:

;;; Load Melpa(Package Manager)
(require 'use-package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;;;(package-refresh-contents) ; This slows downs the startup


(use-package multiple-cursors
  :ensure t)
(global-set-key (kbd "C->") 'mc/mark-next-lines)
(global-set-key (kbd "C-.") 'mc/edit-lines)

;;For Syntax checking
(use-package flycheck
  :ensure t)
(global-flycheck-mode)

;;Switch window with alt+s
(global-set-key "\M-s" #'other-window)

;;; Change variable name all at once
(use-package iedit
  :ensure t)

;;Alt+n , ALt+p to switch buffer
(use-package iflipb
  :ensure t)
(global-set-key "\M-n" 'iflipb-next-buffer)
(global-set-key "\M-p" 'iflipb-previous-buffer)

(provide 'packages)
;;; packages.el ends here
