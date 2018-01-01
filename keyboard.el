;; ErgoEmacs Keys
(ergoemacs-component move-bracket ()
  "Move By Bracket"
  (global-set-key (kbd "M-u") 'ergoemacs-backward-open-bracket)
  (global-set-key (kbd "M-o") 'ergoemacs-forward-close-bracket))
  
(ergoemacs-component move-word ()
  "Moving around and deleting words"
  (global-set-key (kbd "M-J") 'backward-word)
  (global-set-key (kbd "M-L") 'forward-word))

(global-set-key (kbd "C-M-c") 'ergoemacs-copy-line-or-region)
(global-set-key (kbd "M-D") 'set-mark-command)
;; ——————————————————————————————————————————————————————————————— ;;

;; Splitters
(global-set-key (kbd "M-2") 'split-window-right)
(global-set-key (kbd "M-@") 'split-window-below)
(global-set-key (kbd "M-1") 'delete-window)
(global-set-key (kbd "M-!") 'delete-other-windows)

;; Undo-Redo
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

;; YASnippet keys
;(define-key yas-minor-mode-map (kbd "<tab>") nil)
;(define-key yas-minor-mode-map (kbd "TAB") nil)
;(global-set-key (kbd "C-e") 'yas-expand)

;; Fast navigation window
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

;; Buffers fast overview
(global-set-key (kbd "<f2>") 'bs-show)

(global-set-key (kbd "C-S-f") 'isearch-backward)
(global-set-key (kbd "C-f") 'isearch-forward)

;; Toggle whitespace mode
(global-set-key (kbd "C-c SPC") 'whitespace-mode)

;; Wrap Lines
(global-set-key (kbd "C-c w") 'visual-line-mode)

;; Iedit mode
(global-set-key (kbd "C-c ;") 'iedit-mode)

;; Multiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-d") 'set-rectangular-region-anchor)
