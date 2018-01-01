(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/pre-init.el")
(pre-init)

(add-to-list 'load-path "~/.emacs.d/plugins/")

(load-user-file "package_load.el")
(package-initialize)

(load-theme 'idea-darkula t)
(load-user-file "ergoemacs.el")
(load-user-file "requires.el")
(load-user-file "keyboard.el")
(load-user-file "user.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (idea-darkula)))
 '(custom-safe-themes
	 (quote
		("82b67c7e21c3b12be7b569af7c84ec0fb2d62105629a173e2479e1053cff94bd" default)))
 '(ergoemacs-theme "standard")
 '(package-selected-packages
	 (quote
		(rvm robe rainbow-mode web-mode rinari iedit expand-region avy multiple-cursors idea-darkula-theme man-commands ergoemacs-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
