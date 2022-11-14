(require 'use-package)
;;Minibuffer completion
(use-package vertico :init (vertico-mode))

(require 'multiple-cursors) 
(use-package multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-lines)
(global-set-key (kbd "C-.") 'mc/edit-lines)
;;For Syntax checking
(global-flycheck-mode)
;;Switch window with alt+s
(global-set-key "\M-s" #'other-window)


(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include/c++/11.2.0/") )
(add-hook 'c-mode-common-hook 'my:ac-c-header-init)

;;YasSnippet
(require 'yasnippet)
(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-tab>") #'yas-expand)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;;(define-key ac-mode-map (kbd "TAB") nil)
;;(define-key ac-completing-map (kbd "TAB") nil)
;;(define-key ac-completing-map [tab] nil)
;;(define-key ac-mode-map (kbd "SPC") 'auto-complete)

(require 'iedit)		;;Variable name change all at once

(semantic-mode 1)
;;(add-to-list 'ac-sources 'ac-sources-semantic)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

;;EDE mode
(global-ede-mode 1)

(fancy-battery-mode)
(setq fancy-battery-show-percentage t)


;;For shift+tab to switch buffer
(require 'iflipb)
(global-set-key "\M-n" 'iflipb-next-buffer)
(global-set-key "\M-p" 'iflipb-previous-buffer)
;;Now for html

;;(require 'simple-httpd)
;;(setq httpd-root "/var/www")

;;(add-to-list 'load-path "~/.emacs.d/impatient-mode")
;;(require 'impatient-mode)
;;(require 'py-autopep8)
;;(add-hook 'python-mode-hook 'py-autopep8-mode)


;;C++ Foramtter Clang Foramtter

(require 'clang-format)
(setq clang-format-style "file")
(defun clang-format-save-hook-for-this-buffer ()
  "Create a buffer local save hook."
  (add-hook 'before-save-hook
            (lambda ()
              (when (locate-dominating-file "." ".clang-format")
                (clang-format-buffer))
              ;; Continue to save.
              nil)
            nil
            ;; Buffer local hook.
            t))

(add-hook 'c-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))
(add-hook 'c++-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))
(add-hook 'glsl-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))


(defun set-python-keybindings ()
  (local-set-key (kbd "C-c i") 'python-insert-docstring-with-google-style-at-point)
  )
(add-hook 'python-mode-hook 'set-python-keybindings)(defun set-python-keybindings ()
  (local-set-key (kbd "C-c i") 'python-insert-docstring-with-google-style-at-point)
  )
(add-hook 'python-mode-hook 'set-python-keybindings)
