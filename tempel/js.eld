js-ts-mode js-base-mode typescript-ts-base-mode

;;; SYNTAX:
;;; NAMESPACES/PREFIXES:
;;; - function -> f

;;; - class -> cl
;;; - import -> im
;;; - console -> co
;;; - this -> ti

;;; - promise -> p (only in some cases)

;;; QUIRKS:
;;; - this -> ti
;;; - constructor -> cn
;;; - if -> fi
;;; - screenY -> syy
;;; - screenX -> syx
;;; - screenTop -> scto
;;; - screenLeft -> scle
;;; - scrollTop -> stoo

;;; COMMON (HTML, CSS, JS):
;;; - container -> con
;;; - class -> cl
;;; - button -> bu
;;; - link -> lk
;;; - comments -> com



;; TRICKS:
;; template literal
(tl "${" r q "}")
;; template literal literal
(tll "`${" r q "}`")


;; WORDS:
;; container
(con "container")
;; typeof
(ty "typeof ")
;; undefined
(und "undefined")
;; length
(len "length")
;; use strict
(ust "\'use strict\';")
;; function
(fu "function ")
;; static
(sta "static ")
;; this
(ti "this.")
(tii "this")
;; this inner html
(tih "this.innerHTML")
;; this styles
(tis "this.style.")
;; this property or this instance property (tiip)
(tip "this." (s property) " = " property ";" q >)


;; TEST:
;; object test
(ot "const objt = {a: 'one', b: 2, c: { t:1, f: 'two'}, d: 4};")
;; array test
(ate "const arrt = ['a',2,'c',4,'e'];")
;; array test number
(atn "const arrtn = [1,2,3,4,5];")


;; VARIABLES:
;; const
(c "const " p " = " r)
;; let
(l "let " p " = " r)


;; CONDITIONALS:
;; if
(fi "if (" p ") {" n> r q n> "}" >)
;; if else
(ie "if (" p ") {" n> r p n> "} else { " > n> q n> "}" >)
;; else
(els "else {" n> r q n> "}" >)
;; else if
(ei "else if (" p ") {" n> r q n> "}" >)
;; ternary
(ter "(" r p ") ? " p " : " q";")
;; switch
(sw "switch (" r p ") {" n> "case " p ":" n> q n>
     "break;" n> "default:" n> "}" >)
;; case
(ca "case " p ":" n> r q n> "break;" >)


;; ITERATIONS:
;; while
(wh "while (" p ") {" n> r q n> "}" >)
;; do while
(dw "do {" n> r p n> "} while (" q ");")
;; for
(fo "for (" p "; " p "; " p ") {" n> r q n> "}" >)
;; for line
(fol "for (" p "; " p "; " p ") " r q >)
;; for of
(fof "for (" p " of " p ") {" n> r q n "}" >)
;; for in
(fin "for (" p " in " p ") {" n> r q n "}" >)


;; CLASS:
;; class
(cl "class " p " {" n> r q n> "}" >)
;; class line
(clli "class " p " {" r q "}")
;; class extends
(cle "class " p " extends " p " {" n> r q n> "}" >)
;; class extends HTMLElement
(cleh "class " p " extends HTMLElement {" n> r q n> "}" >)
;; class line extends
(clle "class " p " extends " p " {" r q "}")
;; class line extends HTMLElement
(clleh "class " p " extends HTMLElement {" r q "}")
;; constructor
(cn "constructor(" p ") {" n> r q n> "}" >)
;; (ctt "constructor(" p ") {" n> r q n> "}" >)
;; super
(su "super(" r q ");")
;; super function
(suf "super." p "(" r q ");")
;; class constructor
(clc "class " p " {" n> "constructor(" p ") {" n> r p n> "}" n> q n> "}" >)
;; class constructor super
(clcs "class " p " {" n> "constructor(" p ") {" n>
      "super(" p ")" n> r p n>"}" n> q n> "}" >)
;; class extends constructor
(clec "class " p " extends " p " {" n> "constructor(" p ") {" n>
      p n> "}" n> r q n> "}" >)
;; class extends constructor super
(clecs "class " p " extends " p " {" n> "constructor(" p ") {" n>
      "super(" p ")" n> p n>"}" n> r q n> "}" >)
;; class component
(clco "class " (s name) " extends HTMLElement {" n> "constructor() {" n>
       "super();" n> "this.attachShadow({ mode: \"open\" });" n> "}" n> n>
       "static get styles() {" n> "return /* css */`" n>
       ":host {" n> n> "}" n> "`;" n> "}" n> n>
       "connectedCallback() {" n> "this.render();" n> "}" n> n>
       "render() {" n> "this.shadowRoot.innerHTML = /* html */`" n>
       "<style>${" name ".styles}</style>" n>
       "<div>" n> q n> "</div>`;" n> "}" n> "}" n> n>
       "customElements.define(\"" (rf-camelcase-to-kebabcase name)
       "\", " name ");" >)
;; class component setHTMLUnsafe
(clcos "class " (s name) " extends HTMLElement {" n> "constructor() {" n>
       "super();" n> "}" n> n>
       "connectedCallback() {" n> "this.render();" n> "}" n> n>
       "render() {" n> "this.setHTMLUnsafe(/* html */`" n>
       "<div class=\"container\">" n> q n> "</div>`" n>
       ");" n> "}" n> "}" n> n>
       "customElements.define(\"" (rf-camelcase-to-kebabcase name)
       "\", " name ");" >)
;; static field
(sf "static " p " = " r q ":" >)
;; static method
(sm "static " p"(" p ") {" n> r q n> "}" >)
;; static block
(sbl "static {" n> r q n> "}" >)
;; private static field
(psf "#static " p " = " r q ":" >)
;; private static method
(psm "#static " p"(" p ") {" n> r q n> "}" >)
;; private method
(pm "#" p "(" p ") {" n> r q n> "}" >)


;; FUNCTION:
;; function declaration
(fd "function " p "(" p ") {" n> r q n> "}" >)

;; function expression
(fe "function(" p ") {" n> r q >n "};" >)
;; function expression line
(fel "function(" p ") {" r q "};" >)

;; function arrow
(fa "(" p ") => {" n> r q n> "}" >)
;; function arrow line
(fal "(" p ") => " r q)
;; function arrow one argument
(fao p" => " r q)
;; function arrow one argument block
(faob p" => {" n> r q n> "}" >)

;; function method
(fm p"(" p ") {" n> r q n> "}" >)
;; function method line
(fml p"(" p ") {" r q "}")


;; IMPORTS, EXPORTS:
;; import
(im "import \"" r q "\";")
;; import from
(imf "import " p " from \"" r q "\";")
;; import destructuring
(imd "import {" p "} from \"" r q "\";")
;; import as
(ima "import {" p " as " p "} from \"" r q "\";")
;; import everything
(ime "import * as " p " from \"" r q "\";")
;; export
(ex "export " p " from \"" r q "\";")
;; export destructuring
(ed "export {" p "} from \"" r q "\";")
;; export as
(ea "export {" p " as " p "} from \"" r q "\";")
;; export default
(ede "export default " r)
;; export only
(exo "export " r)


;; CONSOLES:
;; console log
(co "console.log(" r q ")")
;; console dir
(cod "console.dir(" r q ");")
;; console count
(coc "console.count(" r q ");")
;; console assert
(coa "console.assert(" p ", " r q ");")
;; console time
(cot "console.time('MyTimer ');")
;; console time end
(cote "console.timeEnd('MyTimer ');")


;; CONTROL FLOW:
;; try catch
(tc "try {" n> r p n> "} catch (" p ") {" n> q n> "}">)
;; try finally
(tcf "try {" n> r p n> "} catch (" p ") {" n> p n> "} finally {" n> q n> "}" >)


;; PROPERTIES:
;; property get
(ge "get " p "() {" n> r q n> "}" >)
;; property get return
(ger "get " p "() {" n> "return " r q n> "}" >)
;; property get return this
(gert "get " p "() {" n> "return this." r q n> "}" >)
;; property set
(see "set " p "(" p ") {" n> r q n> "}" >)


;; CONSTRUCTORS:
;; new error
(ne "new Error(" r q ");")


;; FUNCTION COMPOSITION BY NAME:
;; random number
(rn "Math.floor(Math.random() * " r q ")")
;; (crn "Math.floor(Math.random() * " r q ")")
;; (mfmr "Math.floor(Math.random() * " r q ")")


;; COMMENTS:
;; comment block
(comb "/**" n> "|--------------------------------------------------" n>
     "| "
     r q n> "|--------------------------------------------------" n> "*/" >)
;; comment line
(coml "//============================================================="
    n "// " r q n
    "//=============================================================")


;;=============================================================
;; API'S
;;=============================================================

;; ARRAYS:
;; for each
(fea "forEach(" r q ")")
;; for each expression
(fee "forEach(function(" p ") {" n> r q n> "});" >)
;; for each arrow
(fear "forEach((" p ") => {" n> r p n> "}" q ");" >)
;; push
(pu "push(" r q ")")
;; pop
(po "pop()")
;; shift
(shi "shift()")
;; unshift
(uns "unshift(" r q ")")
;; fill
(fil "fill(" r q ")")
;; join
(jo "join(" r q ")")
;; con cat
(cca "concat(" r q ")")
;; find
;; (fin "find(" r q ")")
;; find index
(finx "findIndex(" r q ")")
;; index of
(io "indexOf(" r q ")")
;; includes
(inc "includes(" r q ")")
;; some
(so "some(" r q ")")
;; filter
(filt "filter(" r q ")")
;; map
(ma "map(" r q ")")
;; reduce
(red "reduce(" r q ")")
;; last index of
(lio "lastIndexOf(" r q ")")
;; slice
(sl "slice(" r q ")")
;; splice
(spl "splice(" r q ")")
;; array from
(af "Array.from(" r q ")")


;;=============================================================
;; DOM
;;=============================================================

;; WINDOWS. :
;; scroll
(sc "scroll(" r q ")")
;; scroll y
(sy "scrollY")
;; scroll x
(sx "scrollX")
;; inner height
(ihe "innerHeight")
;; outer height
(ohe "outerHeight")
;; screen top
(scto "screenTop")
;; screen left
(scle "screenLeft")
;; screen y y
(syy "screenY")
;; screen x x
(sxx "screenX")
;; page y offset
(pyo "pageYOffset")
;; page x offset
(pxo "pageXOffset")

;; prompt
(pr "prompt(" r q ");")
;; scroll to
(sto "scrollTo(" r q ");")
;; scroll by
(sb "scrollBy(" r q ");")
;; request animation frame
(raf "requestAnimationFrame(" r q ");")
;; clear timeout
(ct "clearTimeout(" r q ");")
;; clear interval
(ci "clearInterval(" r q ");")
;; get computed style
(gcs "getComputedStyle(" r q ");")
;; set timeout
(st "setTimeout(() => {" n> r p n> "}, " q ");" >)
;; set timeout line
(stl "setTimeout(" r p ", " q ");")
;; set interval
(si "setInterval(() => {" n> r p n> "}, " q ");" >)
;; set interval line
(sil "setInterval(" r p ", " q ");")

;; DOCUMENTS:
;; document document element
(dde "document.documentElement")
;; document body
(db "document.body")
;; document query selector
(dqs "document.querySelector('" r q "');")
;; document query selector all
(dqsa "document.querySelectorAll('" r q "');")
;; document get elements by tag name
(dgebt "document.getElementsByTagName('" r q "');")
;; document get elements by id
(dgebi "document.getElementById('" r q "');")
;; document get elements by class name
(dgebc "document.getElementsByClassName('" r q "');")
;; document create element
(dce "document.createElement('" r q "');")
;; document create text node
(dct "document.createTextNode('" r q "');")
;; element from point
(efp "elementFromPoint(" r q ")")

;; ELEMENTS:
;; inner html
(ih "innerHTML")
;; outer  html
(oh "outerHTML")
;; childrem
(ch "childrem")
;; previous element sibling
(pes "previousElementSibling")
;; next element sibling
(nes "nextElementSibling")
;; client height
(che "clientHeight")
;; client width
(cwi "clientWidth")
;; scroll height
(shei "scrollHeight")
;; scroll width
(swi "scrollWidth")
;; scroll top
(stoo "scrollTop")
;; scroll left
(sle "scrollLeft")
;; client top
(cto "clientTop")
;; client left
(clef "clientLeft")
;; class name
(cln "className")
;; class list
(cll "classList")

;; class list add
(clla "classList.add(" r q ");")
;; class list remove
(cllr "classList.remove(" r q ");")
;; class list replace
(cllre "classList.replace(" r q ");")
;; class list toggle
(cllt "classList.toggle(" r q ");")
;; class list contains
(cllc "classList.contains(" r q ");")

;; remove
(rem "remove();")
;; set attribute
(sa "setAttribute('" p "', " r q ");")
;; get attribute
(ga "getAttribute('" r q "');")
;; has attribute
(ha "hasAttribute('" r q "')")
;; has attributes
(hat "hasAttributes('" r q "')")
;; get attribute names
(gan "getAttributeNames(" r q ");")
;; remove attribute
(ra "removeAttribute('" r q "');")
;; toggle attribute
(ta "toggleAttribute('" r q "');")
;; append
(ap "append(" r q ")")
;; insert adjacent html
(iah "insertAdjacentHTML('" p "', " r q ");")
;; insert adjacent element
(iae "insertAdjacentElement('" p "', " r q ");")
;; get bounding client rect
(gbcr "getBoundingClientRect('" r q "');")
;; scroll into view
(siv "scrollIntoView('" r q "');")

;; COMPONENTS:
;; attach shadow
(ash "attachShadow(" r q ");")
(aso "attachShadow({mode: 'open'});")
(asc "attachShadow({mode: 'close'});")
;; shadow root
(sr "shadowRoot")
(srih "shadowRoot.innerHTML")

;; connected call back
(ccb "connectedCallback() {" n> r q n> "}")
;; disconnected call back
(dcb "disconnectedCallback() {" n> r q n> "}")
;; attribute changed call back
(accb "attributeChangedCallback(name, oldValue, newValue) {" n> r q n> "}")
;; adopted call back
(acb "adoptedCallback() {" n> r q n> "}")
;; static observed attributes
(soa "static observedAttributes = [" r q "];")
;; static get observed attributes
(sgoa "static get observedAttributes() {" n> "return [" r q "];" n> "}")

;; HTMLSLOTELEMENT
;; assigned nodes
(ano "assignedNodes(" q r ")")
;; assigned elements
(ae "assignedElements(" q r ")")
;; assigned slot
(asl "assignedSlot")

;; adopted style sheets
(ass "adoptedStyleSheets")
;; replace sync
(rs "replaceSync(" r q ")")
;; insert rule
(ir "insertRule(" r q ")")
;; delete rule
(dr "deleteRule(" r q ")")


;; NODES:
;; text content
(tco "textContent")
;; node type
(nt "nodeType")
;; node name
(nn "nodeName")
;; parent node
(pn "parentNode")
;; child nodes
(cns "childNodes")
;; previous sibling
(psi "previousSibling")
;; first child
(fc "firstChild")
;; next sibling
(ns "nextSibling")

;; append child
(ac "appendChild(" r q ");")
;; insert before
(ib "insertBefore(" p ", " r q ");")
;; replace child
(rc "replaceChild(" p ", " r q ");")
;; has child nodes
(hcn "hasChildNodes(" r q ")")
;; clone node
(cno "cloneNode(" r q ");")

;; HTMLELEMENTS:
;; inner text
(ite "innerText")
;; style
(sty "style")
;; data set
(ds "dataset")
;; offset height
(osh "offsetHeight")
;; offset width
(osw "offsetWidth")
;; offset top
(ost "offsetTop")
;; offset left
(osl "offsetLeft")
;; offset parent
(osp "offsetParent")

;; EVENTS:
;; new event
(nev "new Event(" r q ");")
;; new custom event
(nce "new CustomEvent(" r q ");")
;; event stop propagation
(spr "stopPropagation(" r q ");")
;; event prevent default
(pd "preventDefault(" r q ");")
;; composed path
(cp "composedPath(" r q ")")

;; EVENTSTARGETS:
;; add event listener
(ael "addEventListener('" p "', " r q ");")
;; remove event listener
(rel "removeEventListener('" p "', " r q ");")
;; dispatch event
(deve "dispatchEvent(" r q ");")

;; KEYEVENT:
;; key down
(kd "keydown")
;; key up
(ku "keyup")
;;  focus
(foc "focus")
;; blur
(bl "blur")
;; input
(inp "input")

;; POINTER:
;; click
(cli "click")
;; doble click
(dc "dblclick")
;; mouse down
(md "mousedown")
;; mouse up
(mu "mouseup")
;; mouse move
(mm "mousemove")
;; touch start
(tstar "touchstart")
;; touch move
(tm "touchmove")
;; touch end
(te "touchend")
;; touches
(tou "touches")
;; touch list
(tli "TouchList")

;; MISCELLANEOUS:
;; scroll
(scr "scroll")
;; load
(lo "load")
;; before un load
(bul "beforeunload")
;; movement x
(mx "movementX")
;; movement y
(my "movementY")

;; EVENTS PROPERTIES:
;; type
(ty "type")
;; target
(tar "target")
;; time stamp
(tsta "timeStamp")
;; bubbles
(bub "bubbles")
;; cancelable
(canc "cancelable")
;; composed
(comp "composed")
;; is trusted
(itr "isTrusted")

;; KEY PROPERTIES:
;; ctrl key
(ck "ctrlKey")
;; alt key
(ak "altKey")
;; shift key
(sk "shiftKey")
;; meta key
(mk "metaKey")
;; tab index
(tin "tabindex")
;; arrow up
(au "ArrowUp")
;; arrow down
(ad "ArrowDown")

;; MOUSEEVENT:
;; client y
(cy "clientY")
;; client x
(cx "clientX")
;; page y
(py "pageY")
;; page x
(px "pageX")
;; off set y
(osy "offsetY")
;; off set x
(osx "offsetX")
;; button
(bu "button")
;; buttons
(bs "buttons")
;; wheel
(whe "wheel")

;; HTMLIMPUTELEMENTS:
;; name
(na "name")
;; value
(va "value")
;; checked
(chec "checked")

;; CUSTOMELEMENTREGISTRYS:
;; custom elements define
(ced "customElements.define('" p "', " r q ");")
;; custom elements define extends
(cede "customElements.define('" p "', class extends " p " {"
     n> r q n> "});")
;; custom elements define extends html
(cedeh "customElements.define('" p "', class extends HTMLElement {"
       n> r q n> "});")
;; custom elements define extends button
(cedeb "customElements.define('" p "', " p ", {extends: 'button'});")
;; custom elements get
(ceg "customElements.get('" r q "')")
;; custom elements when defined
(cewd "customElements.whenDefined('" r q "')")
;; custom elements upgrade
(ceu "customElements.upgrade(" r q ")")

;; CSSSTYLEDECLARATIONS:
;; set property
(sp "setProperty('" p "', " r q ");")
;; style set property
(ssp "style.setProperty('" p "', " r q ");")

;; MISCELLANEOUS:
;; performance now
(pno "performance.now()")


;; STRINGS:
;; pad start
(ps "padStart(" r p ", '" q "')")
;; trim
(tri "trim(" r q ")")
;; repeat
(repe "repeat(" r q ")")
;; split
;; (split "split(" r q ")")
;; sub string
(ss "substring(" r q ")")
;; match
(mat "match(" r q ")")
;; search
(sea "search(" r q ")")
;; replace
(rep "replace(" r q ")")
;; to upper case
(tuc "toUpperCase()")
;; to lower case
(tlc "toLowerCase()")
;; string raw
(sra "String.raw`" r q "`")

;; OBJECTS:
;; object keys
(oks "Object.keys(" r q ")")
;; object get own property names
(ogopn "Object.getOwnPropertyNames(" r q ")")
;; object create
(oc "Object.create(" p ", " r q ")")
;; object assign
(oa "Object.assign(" p ", " r q ")")
;; object get prototype of
(ogp "Object.getPrototypeOf(" r q ")")
;; object set prototype of
(osp "Object.setPrototypeOf(" p ", " r q ")")
;; object freeze
(ofr "Object.freeze(" r q ")")
;; object is frozen
(oif "Object.isFrozen(" r q ")")
;; object values
(ov "Object.values(" r q ")")

;; has own property
(hop ".hasOwnProperty(" r q ")")

;; to string
(tst "toString()")
;; value of
(vo "valueOf()")

;; object prevent extensions
(ope "Object.preventExtensions(" r q ")")
;; object is extensible
(oie "Object.isExtensible(" r q ")")
;; object seal
(os "Object.seal(" r q ")")
;; object is sealed
(ois "Object.isSealed(" r q ")")
;; object define property
(odp "Object.defineProperty(" r p ", '" p "', {" n> q n> "});")
;; object define properties
(odps "Object.defineProperties(" r p ", {" n> q n> "});")
;; object get own property descriptor
(ogopd "Object.getOwnPropertyDescriptor(" r p ", " q ")")

;; MATHS:
;; math random
(mr "Math.random() ")
;; math max
(mma "Math.max(" r q ")")
;; math min
(mmi "Math.min(" r q ")")
;; math pow
(mp "Math.pow(" r p ", " q ")")
;; math sqrt
(ms "Math.sqrt(" r q ")")
;; math cos
(mco "Math.cos(" r q ")")
;; math sin
(msi "Math.sin(" r q ")")
;; math round
(mro "Math.round(" r q ")")
;; math floor
(mf "Math.floor(" r q ")")
;; math ceil
(mc "Math.ceil(" r q ")")
;; math abs
(mab "Math.abs(" r q ")")
;; math pi
(mpi "Math.PI")

;;NUMBERS:
;; to fixed
(tf "toFixed()")
(nin "Number.isNaN(" r q ")")

;; PROMISES:
;; new promise
(np "new Promise(" r q ");")
;; new promise resolve reject
(nprr "new Promise((resolve, reject) => {" n> r q n> "});" >)
;; promise then
(pt "then(" r q ")")
;; promise catch
(pc "catch(" r q ")")
;; promise finally
(pf "finally(" r q ")")
;; promise all
(pa "Promise.all(" r q ")")
;; promise race
(pra "Promise.race(" r q ")")
;; promise re solve
(prs "Promise.resolve(" r q ")")
;; promise re ject
(prj "Promise.reject(" r q ")")

;; REGEXPS:
;; last index
(lin "lastIndex")
;; regexp test
(tes "test(" r q ")")
;; regexp exec
(exe "exec(" r q ")")

;; FUNCTIONS:
;; call
(cal "call(" r q ")")
;; bind
(bi "bind(" r q ")")
;; apply
(appl "apply(" r q ")")
;; new function
(nf "new Function(" r q ")")

;; CLASSES:
;; new dat
(nd "new Date(" r q ")")
;; date now
(dno "Date.now()")
;; new map
(nm "new Map(" r q ")")

;; MISCELLANEOUS:
;; json stringify
(jst "JSON.stringify(" r q ")")
;; json parse
(jp "JSON.parse(" r q ")")
;; parse int
(pint "parseInt('" r q "')")
;; encode uri component
(euc "encodeURIComponent(" r q ")")
;; read as text
(rat "readAsText(" r q ")")
