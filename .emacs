(package-initialize)

(scroll-bar-mode -1)
(electric-pair-mode 1)
(add-to-list 'auto-mode-alist '("\.py\'" . python-mode))
(tool-bar-mode -1)



(custom-set-variables
 '(ansi-color-faces-vector
  [default default default italic underline success warning error])
'(ansi-color-names-vector
  ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
'(custom-enabled-themes (quote (wheatgrass)))
'(global-display-line-numbers-mode t)
'(tool-bar-mode nil))
(custom-set-faces
 )


(setq tabbar-buffer-groups-function
      (lambda ()
        (list "All")))
(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
  
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'org-agenda-list)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "<drag-mouse-9>") 'next-buffer)
(global-set-key (kbd "<drag-mouse-8>") 'previous-buffer)
(global-set-key (kbd "<Scroll_Lock>") 'windmove-lef)
(global-set-key (kbd "C-c #") 'comment-dwim)
 
