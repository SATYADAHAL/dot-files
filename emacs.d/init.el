;;; This_is_init_file --- .
;;; Commentary:
;;; Code:
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Disable tool bar, menu bar and  scroll bar.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;;Turn off startup message
;;(setq inhibit-startup-message t)

;;Show line numbers
;;(global-hl-line-mode t)
;;(display-time-mode 1)


;;No Beeping sound
(setq ring-bell-function 'ignore)

;;Auto brackets complete
(electric-pair-mode)
;;(setq electric-pair-preserve-balance t)

;;Enable Bracktes Highlighligting when cursor is near
(show-paren-mode 1)
(setq show-paren-delay 0)
;;(setq show-paren-style 'parenthesis)
;; Write backups to ~/.emacs.d/backup/
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      20 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old

;; newline-without-break-of-line
(defun newline-without-break-of-line ()
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))
(global-set-key (kbd "<C-return>") 'newline-without-break-of-line)

;; Shit+Enter to quickrun-shell
(global-set-key [S-return] #'quickrun-shell)



(load-file "~/.emacs.d/theme.el")
(load-file "~/.emacs.d/packages.el")
;;(load-file "~/.emacs.d/rtags.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "94a4bc930e78b5a76fd8855da47fe1f6200a06e82461b6f4031796cde64f454e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "aba75724c5d4d0ec0de949694bce5ce6416c132bb031d4e7ac1c4f2dbdd3d580" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "ed8e6f452855fc7338c8be77803666b34745c19c6667197db48952107fa6d983" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "3b050147ba211a3711c5421d8c98078b75e983261873548e36fe477d83443b56" default))
 '(ede-project-directories '("/home/spd/Programming/C++/Classes"))
 '(exwm-floating-border-color "#242530")
 '(fci-rule-color "#6272a4")
 '(highlight-tail-colors
   ((("#2c3e3c" "#55ff77" "green")
     . 0)
    (("#313d49" "#88eeff" "brightcyan")
     . 20)))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
 '(objed-cursor-color "#ff5555")
 '(package-selected-packages
   '(afternoon-theme python-insert-docstring clang-format+ py-autopep8 nord-theme iflipb magit xml-format skewer-mode impatient-mode simple-httpd multiple-cursors spacemacs-theme quickrun fancy-battery flycheck iedit vertico doom-themes))
 '(pdf-view-midnight-colors (cons "#f8f8f2" "#282a36"))
 '(rustic-ansi-faces
   ["#282a36" "#ff5555" "#50fa7b" "#f1fa8c" "#61bfff" "#ff79c6" "#8be9fd" "#f8f8f2"])
 '(vc-annotate-background "#282a36")
 '(vc-annotate-color-map
   (list
    (cons 20 "#50fa7b")
    (cons 40 "#85fa80")
    (cons 60 "#bbf986")
    (cons 80 "#f1fa8c")
    (cons 100 "#f5e381")
    (cons 120 "#face76")
    (cons 140 "#ffb86c")
    (cons 160 "#ffa38a")
    (cons 180 "#ff8ea8")
    (cons 200 "#ff79c6")
    (cons 220 "#ff6da0")
    (cons 240 "#ff617a")
    (cons 260 "#ff5555")
    (cons 280 "#d45558")
    (cons 300 "#aa565a")
    (cons 320 "#80565d")
    (cons 340 "#6272a4")
    (cons 360 "#6272a4")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Disable mouse hovering help_window_frame
(tooltip-mode nil)
(setq show-help-function nil)
