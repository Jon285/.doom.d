;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! origami)
(package! company-quickhelp)
(package! company-irony)
(package! irony)
(package! cargo)
(package! elcord)
(package! flycheck-elixir :recipe (:host github :repo "lbolla/emacs-flycheck-elixir"))
