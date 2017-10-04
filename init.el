
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'org)
(org-babel-load-file
 (expand-file-name "conf.org"
		   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (assemblage)))
 '(custom-safe-themes
   (quote
    ("1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" default)))
 '(package-selected-packages
   (quote
    (multiple-cursors ace-jump-mode ac-clang ac-helm ac-c-headers graphviz-dot-mode cider clojure-mode electric-operator web-mode icicles slime nlinum yasnippet whitespace-cleanup-mode use-package undo-tree tiny skewer-mode simpleclip org-bullets org minimap magit impatient-mode helm-core exwm electric-spacing browse-kill-ring auto-complete assemblage-theme aggressive-indent 4clojure))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
