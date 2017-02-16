
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
    (helm vhdl-tools 4clojure assemblage-theme yasnippet-bundle impatient-mode skewer-mode yasnippet undo-tree ## minimap org exwm)))
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


(defun my-c-mode-hook () 
  (linum-mode 1))

;;key bindings
(global-set-key ( kbd "C-c { " )  'insert-pair)
(global-set-key ( kbd "C-c [ " )  'insert-pair)
(global-set-key ( kbd "C-c \' " )  'insert-pair)
(global-set-key ( kbd "C-c \"" )  'insert-pair)
(global-set-key ( kbd "C-c (" )  'insert-pair)


(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-refresh-contents)
(add-to-list 'load-path "~/.emacs.d/lisp/*")
;;(progn (cd "~/.emacs.d/lisp/")
;;       (normal-top-level-add-subdirs-to-load-path)) 
;(require 'package)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(put 'upcase-region 'disabled nil)
