
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'tiny)
(tiny-setup-default)
(require 'ox)
(require 'impatient-mode)
(require 'aggressive-indent)
(require 'yasnippet)
(require 'undo-tree)
(require 'electric-spacing)


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
    (electric-spacing tiny auto-complete whitespace-cleanup-mode aggressive-indent browse-kill-ring simpleclip magit org-bullets helm vhdl-tools 4clojure assemblage-theme impatient-mode skewer-mode yasnippet undo-tree ## minimap org exwm)))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(let ((spec '((t (:family "Arimo for Powerline" :height 100)))))
 ; (mapc (lambda (face)
;	  (face-spec-set face spec)
;	  (put face 'face-defface-spec spec))
;	'(default menu)))

;;disable menu and tool bars
(menu-bar-mode 0)
(tool-bar-mode 0)

;; electric pair mode
(electric-pair-mode 1)


(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(defun my-org-mode-hook ()
  (org-bullets-mode))

(add-hook 'org-mode-hook 'my-org-mode-hook)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;;(package-refresh-contents)		;;uncomment and eval if needed
(add-to-list 'load-path "~/.emacs.d/lisp/*")

;; enable commands here
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(yas-global-mode 1)
;;(yas-load-directory "~/.emacs.d/snippets/")
(setq yas-snippet-dirs "~/.emacs.d/snippets/")

(ac-config-default)
;; C-mode configuration
(defun my-c-mode-hook () 
  (linum-mode 1)
  (undo-tree-mode 1)
  (c-toggle-hungry-state 1)
  (aggressive-indent-mode 1)
  (whitespace-cleanup-mode 1)
  (auto-complete-mode 1)
  (electric-spacing-mode 1)
  (local-set-key ( kbd "DEL" ) 'c-hungry-delete)
  (c-toggle-auto-newline 1)
  (setq c-basic-offset 4))

(add-hook 'c-mode-hook 'my-c-mode-hook)



;; configuration for org-mode latex rendering
(org-export-define-backend 'xetex
   :export-options '((subtree body-only visible-only))
   :options-alist '((:date "DATE" nil "\\today" t)
                    (:date-format nil nil org-latex-date-timestamp-format)
                    (:latex-class "LATEX_CLASS" nil org-latex-default-class t)
                    (:latex-class-options "LATEX_CLASS_OPTIONS" nil nil t)
                    (:latex-header-extra "LATEX_HEADER" nil nil newline)
 		   (:latex-hyperref-p nil "texht" org-latex-with-hyperref t)
		   ))

;; make rendered font readable
(plist-put org-format-latex-options :scale 1.4)

(defun my-org-mode-hook()
  (linum-mode 1)
  (undo-tree-mode 1)
  (org-bullets-mode 1)
  )

(add-hook 'org-mode-hook 'my-org-mode-hook)
