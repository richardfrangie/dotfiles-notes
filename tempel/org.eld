org-mode

;;; SYNTAX:
;;; Namespaces/prefixes:
;;; - blocks -> b
;;; Sufixes:
;;; - export -> e
;;; - post -> p
;;; Quirks:
;;;



;; COMMON ONES:
;; link
(lk "[[" r p "][" q "]] ")


;; BLOCKS SRC:
;; block source line
(bsl   & "src_" p "{ " r " }")
;; block source empty
(bse   & "#+begin_src" n n "  " r n n "#+end_src")

;; block source fill
(br  & "#+begin_src " p n n "  " r n n "#+end_src")
;; block shell
(bs  & "#+begin_src sh" n n "  " r n n "#+end_src")
;; block lisp
(bl  & "#+begin_src emacs-lisp" n n "  " r n n "#+end_src")
;; block javascript
(bj  & "#+begin_src javascript" n n "  " r n n "#+end_src")
;; block css
(bc  & "#+begin_src css" n n "  " r n n "#+end_src")
;; block html
(bh  & "#+begin_src html" n n "  " r n n "#+end_src")
;; block markdown
(bm  & "#+begin_src markdown" n n r n n "#+end_src")
;; block mermaid
(bi  & "#+begin_src mermaid" n n r n n "#+end_src")
;; block conf
(bco & "#+begin_src conf" n n "  " r n n "#+end_src")
;; block artist
(bart & "#+begin_src artist" n n "  " r n n "#+end_src")

;; BLOCKS:
;; block fill
(bf   & "#+begin_" (s name) n r n "#+end_" name)
;; block example
(bex   & "#+begin_example" n> r> n> "#+end_example")
(bcom   & "#+begin_comment" n> r> n> "#+end_comment")
(bce   & "#+begin_center" n> r> n> "#+end_center")
(bqu   & "#+begin_quote" n> r> n> "#+end_quote")
;; default
(vrs      & "#+begin_verse" n> r> n> "#+end_verse")
(sdnt     & "#+begin_sidenote" n> r> n "#+end_sidenote")
(mrginnte & "#+begin_marginnote" n> r> n "#+end_marginnote")

;; BLOCKS EXPORTS:
;; block html export
(bhe   & "#+begin_export html" n> r> n "#+end_export")
(blae   & "#+begin_export latex" n> r> n "#+end_export")
(bae   & "#+begin_export ascii" n> r> n "#+end_export")

;; BLOCKS EDIT CODE:
;; block source fill post
(bsfp   & "#+begin_src " p n r n "#+end_src"
       :post (org-edit-src-code))
;; block shell post
(bsp   & "#+begin_src sh" n r n "#+end_src"
       :post (org-edit-src-code))
(blp   & "#+begin_src emacs-lisp" n r n "#+end_src"
       :post (org-edit-src-code))
(bjp   & "#+begin_src javascript" n r n "#+end_src"
       :post (org-edit-src-code))
(bcp   & "#+begin_src css" n r n "#+end_src"
       :post (org-edit-src-code))
(bhp   & "#+begin_src html" n r n "#+end_src"
       :post (org-edit-src-code))
;; default
(rste     & "#+begin_src restclient" p n r n "#+end_src"
          :post (org-edit-src-code))
(gnplte   & "#+begin_src gnuplot :var data=" (p "table") " :file " (p "plot.png") n r n "#+end_src"
          :post (org-edit-src-code))
(py_e     & "#+begin_src python" n r n "#+end_src"
          :post (org-edit-src-code))
(py_vle   & "#+begin_src python :results value" n r n "#+end_src"
          :post (org-edit-src-code))
(py_otpte & "#+begin_src python :results output" n r n "#+end_src"
          :post (org-edit-src-code))


;; ELISP FUNCTIONS:
;; set q
(sq "(setq " r q ")")
;; set q local
(sql "(setq-local " r q ")")
;; hooks
(ah "(add-hook '" p "-hook " r q ")" >)
;; add hook lambda
(ahl "(add-hook '" p "-hook" n> "(lambda () " r q "))" >)

;; USE-PACKAGE:
;; use package
(upa "(use-package " p n> r q ")" >)
;; use binding
(ub "(\"" p "\" . " r q ")" >)
;; use bindings
(ubi ":bind (" r q ")")


;; METADATA:
;; title
(tit  & "#+title: " r n "#+date: " p n n)
;; default
(nm   & "#+name: " r n)
(cptn & "#+caption: ")
(drwr & ":" p ":" n r ":end:")


;; README:
;; read me template
(readmet "#+title: " p n
         "#+date: " p n
         "#+author: Richard Frangie" n
         "#+language: en" n q)


;; MISC:
;; default
(rdnly ":tangle yes :tangle-mode (identity #o444) :mkdirp yes" n)
(oxhugo & ":PROPERTIES:"  n ":EXPORT_FILE_NAME: " (p "Simple Filename") n ":EXPORT_DATE: "
        (format-time-string "%Y-%m-%d") n ":EXPORT_HUGO_DRAFT: false" n ":END:")
(rdmecollapse  "*** " (p "Heading") n "#+HTML: <details> <summary> " (p "sub-heading")  " </summary>" n
               (r> "link or any comments") n n "#+HTML: </details>" n)
