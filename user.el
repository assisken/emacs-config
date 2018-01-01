;;; This file contains user-specific preferences

;; Auto refresh files
(global-auto-revert-mode t)

;; Bracket highlight
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Auto paste/delete pairs of brackets
(electric-pair-mode t)

;; Current line highlight
(global-hl-line-mode t)
(set-face-background 'hl-line "#151515")

(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'python-mode-hook 'whitespace-mode)

;; Stop wrap lines
(global-visual-line-mode 0)

(setq make-backup-files         nil)
(setq auto-save-list-file-name  nil)
(setq auto-save-default         nil)

;; "yes" and "no" to "y" and "n"
(defalias 'yes-or-no-p 'y-or-n-p)

;; Show line number
(setq linum-format " %d")
(global-linum-mode t)

;; Tab
(setq-default tab-width 2)

;; Whitespaces
(setq visible-whitespace-mode 1)

;; Autocomplete for opening files
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Always see *scratch* + see all buffers on f2
(setq bs-configurations
      '(("files" "*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(ac-config-default)

;; Modifications for YASnippet
(add-to-list 'load-path "~/EmacsCasts/episode03/yasnippet")
(yas-global-mode 1)

(setq projectile-mode t)

;; This snippet enables lua-mode
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; Whitespace mode setup
(setq whitespace-style '(face spaces tabs newline space-mark tab-mark newline-mark))
(setq whitespace-display-mappings '(
																		(space-mark ?\  [?·] [?.])
																		(newline-mark ?\n [?\ ?← ?\n])
																		(tab-mark ?\t [?\  ?\ ] [92 ?t])
																		))
(set-face-attribute 'whitespace-tab nil
										:background "#222266" :foreground nil)
(set-face-attribute 'whitespace-newline nil
										:background "#005500" :foreground nil)
(set-face-attribute 'whitespace-space nil
										:background nil :foreground "#666")

;; Rinari mode
(global-rinari-mode)

;; Web mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Rainbow-mode
(rainbow-mode t)

;; Use rvm as default
(rvm-use-default)

;; Robe for ruby
(add-hook 'ruby-mode-hook 'robe-mode)

;; Undo-tree-mode
(global-undo-tree-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
