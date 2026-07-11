emacs-lisp-mode

;;; SYNTAX:
;;; Namespaces/prefixes:
;;; - use-package -> u

;;; Quirks:



;; COMMON ONES:
;; message
(mes "(message \"" p ": %s\" " r q ")")
;; message result
(mesr "(message \"Result: %s\" " r q ")")
;; message object
(meso "(message \"" (s object) ": %s\" " object ")")
;; point
(po "(point) ")
;;; Set globally in fundamental:
;; (kgs "(keymap-global-set \"" p "\"" " '" q ")")
;; ;; keymap global set decimal
;; (kgsd "(keymap-global-set \"<kp-decimal>\"" " '" q ")")
;; (ks "(keymap-set " p " \"" p "\"" " '" q ")")


;; VARIABLES:
;; set q
(sq "(setq " r q ")")
;; set q local
(sql "(setq-local " r q ")")
;; let
(lt "(let (" p ")" n> r> ")")
;; let t
(ltt "(let* (" p ")" n> r> ")")
;; def var
(dv "(defvar " p "\n  \"" r "\")")
;; def var local
(dlo "(defvar-local " p "\n  \"" r "\")")
;; add hook
(ah "(add-hook '" p "-hook " r q ")" >)
;; add hook lambda
(ahl "(add-hook '" p "-hook" n> "(lambda () " r q "))" >)
;; default
(rc "(letrec (" p ")" n> r> ")")
(cnst "(defconst " p "\n  \"" p "\")")
(cstom "(defcustom " p "\n  \"" p "\"" n> ":type '" p ")")
(fce "(defface " p " '((t :inherit " p "))\n  \"" p "\")")
(grp "(defgroup " p " nil\n  \"" p "\"" n> ":group '" p n> ":prefix \"" p "-\")")
(mcr "(defmacro " p " (" p ")\n  \"" p "\"" n> r> ")")
(als "(defalias '" p " '" p ")")


;; SPECIAL FORMS:
;; progn
(pr "(progn" n> r q ")" >)
;; save excursion
(sex "(save-excursion" n> r q ")" >)
;; save restriction
(sr "(save-restriction" n> r q ")" >)


;; CONDITIONALS:
;; if
(fi "(if " r q ")" >)
;; when
(wn "(when " r q ")" >)
;; un less
(ul "(unless " r q ")" >)
;; cond
(co "(cond (" p ")" n> r q ")" >)
;; default
(iflet "(if-let (" p ")" n> r> ")")
(whnlt "(when-let (" p ")" n> r> ")")
(ifltt "(if-let* (" p ")" n> r> ")")
(whnltt "(when-let* (" p ")" n> r> ")")
(andltt "(and-let* (" p ")" n> r> ")")
(whll "(while-let (" p ")" n> r> ")")
(pcase "(pcase " (p "scrutinee") n "(" q "))" >)


;; LOOPS AND RECURSION:
;; while
(wh "(while " r q ")" >)
;; do list
(dl "(dolist (" p ")" n> r> ")")
;; do times
(dt "(dotimes (" p ")" n> r> ")")
;; default
(lp "(cl-loop for " p " in " p " do" n> r> ")")


;; FUNCTIONS:
;; definition function
(df "(defun " p " (" p ")\n  \"" p "\"" n> r> ")")
;; definition function interactive
(dfi "(defun " p " (" p ")\n  \"" p "\"" n> "(interactive" p ")" n> r> ")")
;; lambda
(lam "(lambda (" p ")" n> r> ")")
;; interactive
(int "(interactive" p ")" >)
;; default
(advce "(defun " (p "adv" name) " (&rest app)" n> p n> "(apply app))" n>
        "(advice-add #'" (p "fun") " " (p ":around") " #'" (s name) ")")


;; FUNCTIONS-:
;; with current buffer
(wcb "(with-current-buffer" n> r q ")" >)
;; files
(ff "(find-file " r q ")" >)


;; PACKAGE:
;; use package
(upa "(use-package " p n> r q ")" >)
;; use binding
(ub "(\"" p "\" . " r q ")" >)
;; use bindings
(ubi ":bind (" r q ")")


;; MISC:
;; default
(lg "(message \"LOG %s " (s sexp) ": %S"
    "\" (format-time-string \"%X\") " sexp ")")


;; COMMENTS:
(comm ";;============================================================="
    n ";; " r q n
    ";;=============================================================")


;; EXAMPLES:
;; completing-read tempel
(crc "Choices:: " (p (completing-read
                     "Tell me:" '(("First"  . 'first-choice)
                                  ("Second" . 'second-choice)
                                  ("Third"  . 'third-choice)))) >)


;; BUILD PACKAGES:
;; default
(atload & ";;;###autoload")
(hdr ";;; " (file-name-nondirectory (or (buffer-file-name) (buffer-name)))
        " --- " p " -*- lexical-binding: t -*-" n
        ";;; Commentary:" n ";;; Code:" n n)
(prvide "(provide '" (file-name-base (or (buffer-file-name) (buffer-name))) ")" n
         ";;; " (file-name-nondirectory (or (buffer-file-name) (buffer-name))) " ends here" n)
(pck-header ";;; " (p (file-name-base (or (buffer-file-name) (buffer-name))) file) ".el --- " (p "summary" summary) " -*- lexical-binding: t -*-" n n

                ";; Author: " (p (user-full-name)) n
                ";; Version: " (p "version") n
                ";; Package-Requires: " (p "dependencies") n
                ";; Homepage: " (p "homepage") n
                ";; Keywords: " (p "keywords") n n

                ";; This file is not part of GNU Emacs" n n

                (p (concat
                    ";; This program is free software: you can redistribute it and/or modify\n"
                    ";; it under the terms of the GNU General Public License as published by\n"
                    ";; the Free Software Foundation, either version 3 of the License, or\n"
                    ";; (at your option) any later version.\n\n"

                    ";; This program is distributed in the hope that it will be useful,\n"
                    ";; but WITHOUT ANY WARRANTY; without even the implied warranty of\n"
                    ";; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"
                    ";; GNU General Public License for more details.\n\n"

                    ";; You should have received a copy of the GNU General Public License\n"
                    ";; along with this program.  If not, see <https://www.gnu.org/licenses/>."))

                n n

                ";;; Commentary:" n n

                ";; " (p "commentary") n n

                ";;; Code:" n n

                (p "(message \"Hello, World\")") n n

                "(provide '" (s file) ")" n
                ";;; " (s file) ".el ends here")
(pck (i hdr) r n n (i prvide))
