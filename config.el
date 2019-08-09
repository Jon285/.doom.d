;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(load-theme 'doom-city-lights t)
(require 'origami)
(global-origami-mode)

;; Keybindings
(with-eval-after-load 'evil-maps
  (defun move-line-up ()
    "Move up the current line."
    (interactive)
    (transpose-lines 1)
    (forward-line -2)
    (indent-according-to-mode))

  (defun move-line-down ()
    "Move down the current line."
    (interactive)
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (indent-according-to-mode))

  (defun previous-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-previous-visual-line)))

  (defun next-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-next-visual-line)))
  (map!
   :ni "<f12>" #'treemacs
   :ni "<f2>"  #'evil-save
   :ni "<f4>"  #'comment-line
   :niv "C-k"  #'move-line-up
   :niv "C-j"  #'move-line-down
   :nv "H"     #'evil-first-non-blank-of-visual-line
   :nv "J"     #'next-5-lines
   :nv "K"     #'previous-5-lines
   :nv "L"     #'evil-end-of-visual-line
   :n "O"      #'origami-open-node-recursively
   :n "C"      #'origami-close-node-recursively
   :n "o"      #'origami-toggle-node))

;; General config
(setq
 doom-font (font-spec :family "Source Code Pro" :size 13)
 doom-big-font (font-spec :family "Source Code Pro" :size 36)
 projectile-project-search-path '("~/Projetos/" "~/Documentos/Rust/engine/" "~/Documentos/Rust/math/"))
