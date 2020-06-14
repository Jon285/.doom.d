;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom
;; quickstart' will do this for you). The `doom!' block below controls what
;; modules are enabled and in what order they will be loaded. Remember to run
;; 'doom refresh' after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom! :input
       ;;chinese
       ;;japanese

       :completion
       (company +childframe)           ; the ultimate code completion backend
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       (ivy
        +childframe
        +icons
	      +fuzzy)               ; a search engine for love and life

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;;fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       indent-guides     ; highlighted indent columns
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       (pretty-code +fira)       ; replace bits of code with pretty symbols
       ;;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       tabs
       unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to

       :emacs
       (dired            ; making dired pretty [functional]
       ;;+ranger         ; bringing the goodness of ranger to dired
       +icons          ; colorful icons for dired-mode
        )
       electric          ; smarter, keyword-based electric-indent
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; a consistent, cross-platform shell (WIP)
       ;;shell             ; a terminal REPL for Emacs
       ;;term              ; terminals in Emacs
       vterm             ; another terminals in Emacs

       :checkers
       syntax
       spell

       :tools
       ;;ansible
       debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       eval              ; run code, run (also, repls)
       ;; flycheck          ; tasing you for every semicolon you forget
       ;;flyspell          ; tasing you for misspelling mispelling
       ;;gist              ; interacting with github gists
       (lookup           ; helps you navigate your code and documentation
        +docsets)        ; ...or in Dash docsets locally
       lsp
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp

       :lang
       ;;agda              ; types of types of types of types...
       cc                ; C/C++/Obj-C madness
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;;erlang            ; an elegant language for a more civilized age
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;ess               ; emacs speaks statistics
       ;;fsharp           ; ML stands for Microsoft's Language
       go                ; the hipster dialect
       (haskell +dante) ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;ledger            ; an accounting system in Emacs
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +dragndrop       ; file drag & drop support
        +ipython         ; ipython support for babel
        +pandoc          ; pandoc integration into org's exporter
        +present)        ; using Emacs for presentations
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;rest              ; Emacs as a REST client
       ;;ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       (rust +lsp)              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       scheme            ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       web               ; the tubes
       ;;vala              ; GObjective-C

       :email
       ;;(mu4e +gmail)       ; WIP
       ;;notmuch             ; WIP
       ;;(wanderlust +gmail) ; WIP

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       calendar
       ;;irc              ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :collab
       ;;floobits          ; peer programming for a price
       ;;impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1897b97f63e91a792e8540c06402f29d5edcbfb0aafd64b1b14270663d6868ee" "e7666261f46e2f4f42fd1f9aa1875bdb81d17cc7a121533cad3e0d724f12faf2" "1ca1f43ca32d30b05980e01fa60c107b02240226ac486f41f9b790899f6f6e67" "a4fa3280ffa1f2083c5d4dab44a7207f3f7bcb76e720d304bd3bd640f37b4bef" "c6b93ff250f8546c7ad0838534d46e616a374d5cb86663a9ad0807fd0aeb1d16" "15ba8081651869ec689c9004288bed79003de5b4ee9c51a9d4a208d9e3439706" "b60f08ddc98a95485ec19f046a81d5877b26ab80a67782ea5b91a00ea4f52170" "4b0b568d63b1c6f6dddb080b476cfba43a8bbc34187c3583165e8fb5bbfde3dc" "e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "a02836a5807a687c982d47728e54ff42a91bc9e6621f7fe7205b0225db677f07" "332e009a832c4d18d92b3a9440671873187ca5b73c2a42fbd4fc67ecf0379b8c" "423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "728eda145ad16686d4bbb8e50d540563573592013b10c3e2defc493f390f7d83" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "5e0b63e0373472b2e1cf1ebcc27058a683166ab544ef701a6e7f2a9f33a23726" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" "a2286409934b11f2f3b7d89b1eaebb965fd63bc1e0be1c159c02e396afb893c8" "428754d8f3ed6449c1078ed5b4335f4949dc2ad54ed9de43c56ea9b803375c23" "3952ef318c8cbccf09954ecf43250ac0cbd1f4ae66b4abe569491b260f6e054b" "b462d00de785490a0b6861807a360f5c1e05b48a159a99786145de7e3cce3afe" "f589e634c9ff738341823a5a58fc200341b440611aaa8e0189df85b44533692b" "f30aded97e67a487d30f38a1ac48eddb49fdb06ac01ebeaff39439997cbdd869" "2878517f049b28342d7a360fd3f4b227086c4be8f8409f32e0f234d129cee925" "1728dfd9560bff76a7dc6c3f61e9f4d3e6ef9d017a83a841c117bd9bebe18613" "868abc288f3afe212a70d24de2e156180e97c67ca2e86ba0f2bf9a18c9672f07" "ef4edbfc3ec509612f3cf82476beddd2aeb3da7bdc3a35726337a0cc838a4ef4" "34c99997eaa73d64b1aaa95caca9f0d64229871c200c5254526d0062f8074693" "155a5de9192c2f6d53efcc9c554892a0d87d87f99ad8cc14b330f4f4be204445" "2f0cbe053485bccbbbb582acdba7c7c9585ad808ee8ab32f0d727c3d39b42275" "8c847a5675ece40017de93045a28ebd9ede7b843469c5dec78988717f943952a" "b0fd04a1b4b614840073a82a53e88fe2abc3d731462d6fde4e541807825af342" "4e132458143b6bab453e812f03208075189deca7ad5954a4abb27d5afce10a9a" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "d0c943c37d6f5450c6823103544e06783204342430a36ac20f6beb5c2a48abe3" "427fa665823299f8258d8e27c80a1481edbb8f5463a6fb2665261e9076626710" "9c27124b3a653d43b3ffa088cd092c34f3f82296cf0d5d4f719c0c0817e1afa6" default)))
 '(package-selected-packages (quote (undo-tree xclip)))
 '(wakatime-api-key "dbc6620e-6ac9-4ff9-bb3d-e4b43ce76895")
 '(wakatime-cli-path "/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
