(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/doom-themes-20220214.2356")


(set-face-attribute 'default nil :height 140)
;(set-face-attribute 'default (selected-frame) :height 100)

;(set-default-font "Monaco 14")


(setq-default left-fringe-width  1)

;(setq-default right-fringe-width  0)



;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
 ;;(set-frame-parameter (selected-frame) 'alpha '(0 . 0))
 ;;(add-to-list 'default-frame-alist '(alpha . (55 . 55)))


(load-theme 'spacemacs-light t)

;;(set-face-attribute 'default nil :font "Sans" )
;;(set-frame-font "Sans" nil t)

