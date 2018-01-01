(defun pre-init ()
  ;; Hide mouse display on loading
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
  (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8)
  (reverse-input-method 'russian-computer)
  ;; Change font
  (set-face-attribute 'default nil
          :family "Unifont"
          :foundry "PfEd"
          :slant 'normal
          :weight 'normal
          :height 120
          :width 'normal)
  (setq fancy-splash-image "/home/assisken/Pictures/Screenshot_2015-06-12-00-54-19_1.jpg")
  (setq package-selected-packages (quote
              (lua-mode helm projectile auto-complete sr-speedbar yasnippet smex expand-region avy multiple-cursors idea-darkula-theme man-commands ergoemacs-mode)
              )))
