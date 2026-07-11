css-base-mode

;;; SYNTAX:
;;; NAMESPACES/PREFIXES (STRUCTURES):
;;; - function var 'var(--size)' -> vs
;;; - custom property '--size'-> cs
;;; - value -> v (some cases (top, left,...))

;;; NAMESPACES/PREFIXES (WORDS):
;;; - max -> ma
;;; - min -> mi
;;; - background -> bg
;;; - fonts -> fo
;;; - text -> te
;;; - import -> im
;;; - color -> col (function)
;&; - cursor -> cu

;;; SUFFIXES:
;;; - % -> p
;;; - pixel -> pi/p
;;; - viewport height -> vh
;;; - viewport width -> vw
;;; - zero -> z
;;; - element list -> l

;;; QUIRKS:
;;; - top -> too (property)
;;; - transparent -> tp
;;; - transform -> tf
;;; - transition -> ti
;;; - translate -> tl
;;; - overflow -> off
;;; - 256px -> tfsp

;;; COMMON (HTML, CSS, JS):
;;; - container -> con
;;; - class -> cl
;;; - button -> bu
;;; - link -> lk



;; FUNCTIONS:
;; calc
(c "calc(" r q ")")

;; VAR:
;; var
(v "var(--" r q ")")
;; var size
(vs "var(--size)")
(vc "var(--color)")

;; CUSTOM PROPERTIES:
;; custom property size
(cs "--size: " r q ";")
(cc "--color: " r q ";")


;; GRADIENTS:
;; linear gradient
(lg "linear-gradient(" r q ")")
(rg "radial-gradient(" r q ")")
(cg "conic-gradient(" r q ")")
;; repeating linear gradient
(rlg "repeating-linear-gradient(" r q ")")
(rrg "repeating-radial-gradient(" r q ")")
(rcg "repeating-conic-gradient(" r q ")")


;; BASIC-SHAPE
;; inset
(inse "inset(" r q ")")
(ci "circle(" r q ")")
(ell "ellipse(" r q ")")
(po "polygon(" r q ")")
(pat "path(" r q ")")
(rec "rect(" r q ")")
(sh "shape(" r q ")")
(xy "xywh(" r q ")")


;; trans late
(tl "translate(" r q ")")
(tlx "translateX(" r q ")")
(tly "translateY(" r q ")")
;; color
(co "color(" r q ")")
;; color mix
(cm "color-mix(" r q ")")
;; drop shadow
(ds "drop-shadow(" r q ")")
;; min max
(mmax "minmax(" p ", " r q ")")
;; scale
(sca "scale(" r q ")")
(scax "scaleX(" r q ")")
(scay "scaleY(" r q ")")
(att "attr(" r q ")")
(rep "repeat(" p ", " r q ")")
(ur "url(" r q ")")
(ro "rotate(" r q ")")
(rx "rotateX(" r q ")")
(ry "rotateY(" r q ")")
(bl "blur(" r q ")")
(cou "counter(" r q ")")
(form "format(" r q ")")


;; NUMBERS:
;; onehundred percentage
(op "100%")
(fp "50%")
(tpe "10%")
(zp "0%")
;; onehundred viewport height
(ovh"100vh")
(fvh"50vh")
(tvh"10vh")
(zvh"0vh")
;; onehundred viewport width
(ovw"100vw")
(fvw"50vw")
(tvw"10vw")
(zvw"0vw")
;; onehundred pixels
(opi"100px")
(fpi"50px")
(tpi"10px")
;; two five six pixels
(tfsp "256px")
(otep "128px")
(sfp "64px")
(ttp "32px")
(osp "16px")


;; WORDS:
(con "container")
(cl "class")
(bu "button")
(tp "transparent")


;; VALUES:
;; GLOBAL VALUES
(ini "initial")
(inh "inherit")
(rev "revert")
(rl "revert-layer")
(uns "unset")

;; VALUE DIRECTION
;; value top
(vt "top")
(vl "left")
(vr "right")
(vb "bottom")

;; BOX
;; content box
(cb "content-box")
;; border box
(bbo "border-box")

;; ALIGNMENT
(st "start")
(ce "center")
(bas "baseline")
(sa "space-around")
(sb "space-between")
(sev "space-evenly")
;; ROWS
(rr "row-reverse")
;; COLUMNS
(colu "column")
(cr "column-reverse")
;; GAPS
(rga "row-gap")
(cga "column-gap")
;; WRAP
(wr "wrap-reverse")


;; PROPERTIES:
;; WIDTH - HEIGHT:
;; width
(wi "width: " r q ";")
(he "height: " r q ";")
(wh "width: " r p ";" n> "height: " q ";")
;; width 100%
(wio "width: 100%;")
(heo "height: 100%;")
;; width max-content
(wimac "width: max-content;")
(hemac "height: max-content;")
;; width min-content
(wimic "width: min-content;")
(hemic "height: min-content;")
;; width fit-content
(wifc "width: fit-content;")
(hefc "height: fit-content;")
;; width var
(wv "width: var(--" r q ");")
(hv "height: var(--" r q ");")
(whv "width: var(--" r p ");" n> "height: var(--" q ");")
;; width var size
(wvs "width: var(--size);")
(hvs "height: var(--size);")
(whvs (i wvs) n> (i hvs) n>)
(who (i wio) n> (i heo) >)
;; max width
(maw "max-width: " r q ";")
(mah "max-height: " r q ";")
(miw "min-width: " r q ";")
(mih "min-height: " r q ";")
;; max width onehundred
(mawo "max-width: 100%;")
(maho "max-height: 100%;")
(miwo "min-width: 100%;")
(miho "min-height: 100%;")

;; box
(bx "{" n> "width: " p ";" n> "height: " p ";" n>
    "background: " r q ";" n> "}" >)

;; aspect ratio
(ar "aspect-ratio: " r q ";")

;; inline size
(isi "inline-size: " r q ";")
(mais "max-inline-size: " r q ";")
(miis "min-inline-size: " r q ";")
;; block size
(bsi "block-size: " r q ";")
(mabs "max-block-size: " r q ";")
(mibs "min-block-size: " r q ";")

;; box sizing box
(bsb "box-sizing: border-box;")
;; (bsc "box-sizing: content-box;")


;; border
(bo "border: " r q ";")
(boo "border: 1px solid orange;")
;; border radius
(br "border-radius: " r q ";")
(brf "border-radius: 50%;")
;; border top
(boto "border-top: " r q ";")
(bor "border-right: " r q ";")
(bol "border-left: " r q ";")
(bob "border-bottom: " r q ";")
;; border top color
(botc "border-top-color: " r q ";")
(borc "border-right-color: " r q ";")
(bolc "border-left-color: " r q ";")
(bobc "border-bottom-color: " r q ";")
;; border top width
(botw "border-top-width: " r q ";")
(borw "border-right-width: " r q ";")
(bolw "border-left-width: " r q ";")
(bobw "border-bottom-width: " r q ";")

;; padding
(pad "padding: " r q ";")
(padl "padding-left: " r q ";")
(padr "padding-right: " r q ";")
(padt "padding-top: " r q ";")
(padbt "padding-bottom: " r q ";")
;; margin
(ma "margin: " r q ";")
(maa "margin: auto;")
(ml "margin-left: " r q ";")
(mr "margin-right: " r q ";")
(mt "margin-top: " r q ";")
(mb "margin-bottom: " r q ";")


;; POSITIONS:
;; top
(too "top: " r q ";")
(le "left: " r q ";")
(ri "right: " r q ";")
(bot "bottom: " r q ";")
;; top zero
(toz "top: 0;")
(lez "left: 0;")
(boz "bottom: 0;")
(riz "right: 0;")
(inz "inset: 0;")
(tlz "top: 0;" n> "left: 0;" >)
;; inset
(ins "inset: " r q ";")


;; object
(ofc "object-fit: contain;")
(ofco "object-fit: cover;")
(off "object-fit: fill;")
(ofn "object-fit: none;")
(ofs "object-fit: scale-down;")
;; object position
(opo "object-position: " r q ";")
(opt "object-position: top;")
(opb "object-position: bottom;")
(opl "object-position: left;")
(opr "object-position: right;")
(opc "object-position: center;")


;; POSITION PROPERTY:
;; position relative
(ps "position: static;")
(pr "position: relative;")
(pa "position: absolute;")
(pf "position: fixed;")
(pst "position: sticky;")
;; z-index
(zi "z-index: " r q ";")
(zio "z-index: 1;")
(zim "z-index: -1;")


;; DISPLAY
;; display
(dis "display: " r q ";")
;; display none
(dn "display: none;")
(dc "display: contents;")
;; display box
(db "display: block;")
(di "display: inline;")
(dib "display: inline-block;")
;; display flex
(df "display: flex;")
(dif "display: inline-flex;")
;; display grid
(dg "display: grid;")
(dig "display: inline-grid;")
;; display table
(dt "display: table;")
(dit "display: inline-table;")
(dtc "display: table-cell;")


;; FLEX
(fl "flex: " r q ";")
;; flex direction
(fd "flex-direction: " r q ";")
(fdr "flex-direction: row;")
(fdrr "flex-direction: row-reverse;")
(fdc "flex-direction: column;")
(fdcr "flex-direction: column-reverse;")
;; flex wrap
(fw "flex-wrap: " r q ";")
(fww "flex-wrap: wrap;")
(fwwr "flex-wrap: wrap-reverse;")
(fwnw "flex-wrap: nowrap;")
;; flex flow
(ff "flex-flow: " r q ";")
(ffr "flex-flow: row;")
(ffrr "flex-flow: row-reverse;")
(ffc "flex-flow: column;")
(ffcr "flex-flow: column-reverse;")
(ffw "flex-flow: wrap;")
(ffwr "flex-flow: wrap-reverse;")
(ffnw "flex-flow: nowrap;")
(ffrnw "flex-flow: row nowrap;")
(ffcw "flex-flow: column wrap;")
(ffcrwr "flex-flow: column-reverse wrap-reverse;")
;; flex basis
(fb "flex-basis: " r q ";")
(fbc "flex-basis: content;")
(fbmac "flex-basis: max-content;")
(fbmic "flex-basis: min-content;")
(fbfc "flex-basis: fit-content;")
(fg "flex-grow: " r q ";")
(fs "flex-shrink: " r q ";")


;; GRID
(gr "grid: " r q ";")
;; grid auto columns
(gac "grid-auto-columns: " r q ";")
(gacmic "grid-auto-columns: min-content;")
(gacmac "grid-auto-columns: max-content;")
(gacmi "grid-auto-columns: minmax(" r q ");")
(gacf "grid-auto-columns: fit-content(" r q ");")
;; grid auto rows
(gar "grid-auto-rows: " r q ";")
(garmic "grid-auto-rows: min-content;")
(garmac "grid-auto-rows: max-content;")
(garmi "grid-auto-rows: minmax(" r q ");")
(garf "grid-auto-rows: fit-content(" r q ");")
;; grid auto flow
(gaf "grid-auto-flow: " r q ";")
(gafr "grid-auto-flow: row;")
(gafc "grid-auto-flow: column;")
(gafd "grid-auto-flow: dense;")
(gafrd "grid-auto-flow: row dense;")
(gafcd "grid-auto-flow: column dense;")

;; grid template
(gt "grid-template: " r q ";")
(gta "grid-template-areas: " r q ";")
;; grid template columns
(gtc "grid-template-columns: " r q ";")
(gtcmi "grid-template-columns: minmax(" r q ");")
(gtcfc "grid-template-columns: fit-content(" r q ");")
(gtcr "grid-template-columns: repeat(" r q ");")
;; grid template rows
(gtr "grid-template-rows: " r q ";")
(gtrmi "grid-template-rows: minmax(" r q ");")
(gtrfc "grid-template-rows: fit-content(" r q ");")
(gtrr "grid-template-rows: repeat(" r q ");")

;; grid area
(ga "grid-area: " r q ";")
(gcs "grid-column-start: " r q ";")
(gce "grid-column-end: " r q ";")
(gc "grid-column: " r q ";")
(grs "grid-row-start: " r q ";")
(gre "grid-row-end: " r q ";")
(gr "grid-row: " r q ";")

(gaa "gap: " r q ";")


;; MULTI COLUMN
(colp "columns: " r q ";")
(cco "column-count: " r q ";")
(cw "column-width: " r q ";")
(cgp "column-gap: " r q ";")
;; column rule
(cru "column-rule: " r q ";")
(crc "column-rule-color: " r q ";")
(crs "column-rule-style: " r q ";")
(crw "column-rule-width: " r q ";")


;; FLOAT
(flo "float: " r q ";")
(flol "float: left;")
(flor "float: right;")
(flon "float: none;")
(flois "float: inline-start;")
(floie "float: inline-end;")


;; JUSTIFY CONTENT
;; Positional
(jcc "justify-content: center;")
(jcs "justify-content: start;")
(jce "justify-content: end;")
(jcfs "justify-content: flex-start;")
(jcfe "justify-content: flex-end;")
(jcl "justify-content: left;")
(jcr "justify-content: right;")
;; Normal
(jcn "justify-content: normal;")
;; Distributed
(jcsb "justify-content: space-between;")
(jcsa "justify-content: space-around;")
(jcse "justify-content: space-evenly;")
(jcst "justify-content: stretch;")
;; Overflow
(jcsc "justify-content: safe center;")
(jcuc "justify-content: unsafe center;")

;; JUSTIFY ITEMS
;; Basic
(jin "justify-items: normal;")
(jist "justify-items: stretch;")
;; Positional
(jic "justify-items: center;")
(jis "justify-items: start;")
(jie "justify-items: end;")
(jiss "justify-items: self-start;")
(jise "justify-items: self-end;")
(jil "justify-items: left;")
(jir "justify-items: right;")
(jiac "justify-items: anchor-center;")
;; Baseline
(jib "justify-items: baseline;")
(jifb "justify-items: first baseline;")
(jilb "justify-items: last baseline;")
;; Overflow
(jisc "justify-items: safe center;")
(jiuc "justify-items: unsafe center;")

;; JUSTIFY SELF
;; Basic
(jsa "justify-self: auto;")
(jsn "justify-self: normal;")
(jsst "justify-self: stretch;")
;; Positional
(jsc "justify-self: center;")
(jss "justify-self: start;")
(jse "justify-self: end;")
(jsss "justify-self: self-start;")
(jsse "justify-self: self-end;")
(jsl "justify-self: left;")
(jsr "justify-self: right;")
(jsac "justify-self: anchor-center;")
;; Baseline
(jsb "justify-self: baseline;")
(jsfb "justify-self: first baseline;")
(jslb "justify-self: last baseline;")
;; Overflow
(jssc "justify-self: safe center;")
(jsuc "justify-self: unsafe center;")


;; ALIGN CONTENT
;; Positional
(acc "align-content: center;")
(acs "align-content: start;")
(ace "align-content: end;")
(acfs "align-content: flex-start;")
(acfe "align-content: flex-end;")
;; Normal
(acn "align-content: normal;")
;; Baseline
(acb "align-content: baseline;")
(acfb "align-content: first baseline;")
(aclb "align-content: last baseline;")
;; Distributed
(acsb "align-content: space-between;")
(acsa "align-content: space-around;")
(acse "align-content: space-evenly;")
(acst "align-content: stretch;")
;; Overflow
(acsc "align-content: safe center;")
(acuc "align-content: unsafe center;")

;; ALIGN ITEMS
;; Basic
(ain "align-items: normal;")
(aist "align-items: stretch;")
;; Positional
(aic "align-items: center;")
(ais "align-items: start;")
(aie "align-items: end;")
(aifs "align-items: flex-start;")
(aife "align-items: flex-end;")
(aiss "align-items: self-start;")
(aise "align-items: self-end;")
(aiac "align-items: anchor-center;")
;; Baseline
(aib "align-items: baseline;")
(aifb "align-items: first baseline;")
(ailb "align-items: last baseline;")
;; Overflow
(aisc "align-items: safe center;")
(aiuc "align-items: unsafe center;")

;; ALIGN SELF
;; Basic
(asa "align-self: auto;")
(asn "align-self: normal;")
;; Positional
(asc "align-self: center;")
(ass "align-self: start;")
(ase "align-self: end;")
(asss "align-self: self-start;")
(asfe "align-self: self-end;")
(asfs "align-self: flex-start;")
(asse "align-self: flex-end;")
(asac "align-self: anchor-center;")
;; Baseline
(asb "align-self: baseline;")
(asfb "align-self: first baseline;")
(aslb "align-self: last baseline;")
(asst "align-self: stretch;")
;; Overflow
(assc "align-self: safe center;")
(asuc "align-self: unsafe center;")


;; PLACE CONTENT
;; Positional
(pcc "place-content: center;")
(pcs "place-content: start;")
(pce "place-content: end;")
(pcfs "place-content: flex-start;")
(pcfe "place-content: flex-end;")
;; two values
(pccs "place-content: center start;")
(pcsc "place-content: start center;")
(pcel "place-content: end left;")
(pcfsc "place-content: flex-start center;")
(pcfec "place-content: flex-end center;")
;; Baseline
(pcb "place-content: baseline;")
(pcfb "place-content: first baseline;")
(pclb "place-content: last baseline;")
;; two values
(pcbc "place-content: baseline center;")
(pcfbee "place-content: first baseline space-evenly;")
(pclbr "place-content: last baseline right;")
;; Distributed
(pcsb "place-content: space-between;")
(pcsa "place-content: space-around;")
(pcse "place-content: space-evenly;")
(pcst "place-content: stretch;")
;; two values
(pcsbse "place-content: space-between space-evenly;")
(pcsase "place-content: space-around space-evenly;")
(pcses "place-content: space-evenly stretch;")
(pcstse "place-content: stretch space-evenly;")

;; PLACE ITEMS
;; Positional
(pic "place-items: center;")
(pin "place-items: normal;")
(pis "place-items: start;")
(pie "place-items: end;")
(piss "place-items: self-start;")
(pise "place-items: self-end;")
(pifs "place-items: flex-start;")
(pife "place-items: flex-end;")
;; two values
(pins "place-items: normal start;")
(picn "place-items: center normal;")
(pisl "place-items: start legacy;")
(pien "place-items: end normal;")
(pissl "place-items: self-start legacy;")
(pisen "place-items: self-end normal;")
(pifsl "place-items: flex-start legacy;")
(pifen "place-items: flex-end normal;")
(piac "place-items: anchor-center;")
;; Baseline
(pib "place-items: baseline;")
(pifb "place-items: first baseline;")
(pilb "place-items: last baseline;")
(pist "place-items: stretch;")
;; two values
(pibn "place-items: baseline normal;")
(pifbl "place-items: first baseline legacy;")
(pilbn "place-items: last baseline normal;")
(pistl "place-items: stretch legacy;")

;; PLACE SELF
;; Positional
(psa "place-self: auto;")
(psn "place-self: normal;")
(psc "place-self: center;")
(pss "place-self: start;")
(pse "place-self: end;")
(psss "place-self: self-start;")
(psfe "place-self: self-end;")
(psfs "place-self: flex-start;")
(psse "place-self: flex-end;")
;; two values
(psac "place-self: auto center;")
(psns "place-self: normal start;")
(pscn "place-self: center normal;")
(pssa "place-self: start auto;")
(psen "place-self: end normal;")
(psssa "place-self: self-start auto;")
(psfen "place-self: self-end normal;")
(psfsa "place-self: flex-start auto;")
(pssen "place-self: flex-end normal;")
(psace "place-self: anchor-center;")
;; Baseline
(psbn "place-self: baseline normal;")
(psfba "place-self: first baseline auto;")
(pslbn "place-self: last baseline normal;")
(pssta "place-self: stretch auto;")
;; two values
(psb "place-self: baseline;")
(psfb "place-self: first baseline;")
(pslb "place-self: last baseline;")
(psst "place-self: stretch;")


;; BACKGROUNDS
(bg "background: " r q ";")
;; background red
(bgr "background: red;")
(bgg "background: green;")
(bgb "background: blue;")
(bgbl "background: black;")
(bgw "background: white;")
(bgy "background: yellow;")
;; background color
(bgc "background-color: " r q ";")
(bgp "background-position: " r q ";")
(bgre "background-repeat: " r q ";")
(bgi "background-image: " r q ";")
(bga "background-attachment: " r q ";")
(bgo "background-origin: " r q ";")
(bgs "background-size: " r q ";")
(bgcl "background-clip: " r q ";")
(bgbm "background-blend-mode: " r q ";")
(mbm "mix-blend-mode: " r q ";")


;; shadows
(bs "box-shadow: " r q ";")
(opa "opacity: " r q ";")
(tfo "transform: " r q ";")

;; visibility
(vv "visibility: visible;")
(vh "visibility: hidden;")
(vco "visibility: collapse;")
;; outline
(ou "outline: " r q ";")

(tr "translate: " r q ";")
(sc "scale: " r q ";")


;; color function
(col "color: " r q ";")
(colw "color: white;")
(colb "color: black;")
(colg "color: grey;")
(colr "color: red;")
(coly "color: yellow;")

;; clip path
(cp "clip-path: " r q ";")
(cpmb "clip-path: margin-box;")
(cpbb "clip-path: border-box;")
(cppb "clip-path: padding-box;")
(cpcb "clip-path: content-box;")
(cpfb "clip-path: fill-box;")
(cpsb "clip-path: stroke-box;")
(cpvb "clip-path: view-box;")
;; clip path rect
(cpur "clip-path: url(" r q ");")
(cpre "clip-path: rect(" r q ");")
(cpci "clip-path: circle(" r q ");")
(cpel "clip-path: ellipse(" r q ");")
(cppo "clip-path: polygon(" r q ");")
(cppa "clip-path: path(" r q ");")
(cpsh "clip-path: shape(" r q ");")
(cpxy "clip-path: xywh(" r q ");")

;; mask
(mas "mask: " r q ";")
(mu "mask: url(" r q ");")
;; mask clip
(mc "mask-clip: " r q ";")
(mcpb "mask-clip: padding-box;")
(mcbb "mask-clip: border-box;")
(mcfb "mask-clip: fill-box;")
(mcsb "mask-clip: stroke-box;")
(mcvb "mask-clip: view-box;")
;; mask composite
(mco "mask-composite: " r q ";")
(mcs "mask-composite: subtract;")
(mci "mask-composite: intersect;")
(mce "mask-composite: exclude;")
;; mask image
(mim "mask-image: " r q ";")
(miu "mask-image: url(" r q ");")
;; mask mode
(mm "mask-mode: " r q ";")
(mma "mask-mode: alpha;")
(mml "mask-mode: luminance;")
;; mask origin
(mo "mask-origin: " r q ";")
(mopb "mask-origin: padding-box;")
(mobb "mask-origin: border-box;")
(mofb "mask-origin: fill-box;")
(mosb "mask-origin: stroke-box;")
(movb "mask-origin: view-box;")
;; mask position
(mp "mask-position: " r q ";")
(mpl "mask-position: left;")
(mpc "mask-position: center;")
(mpr "mask-position: right;")
(mpt "mask-position: top;")
(mpb "mask-position: bottom;")
;; mask repeat
(mr "mask-repeat: " r q ";")
(mrre "mask-repeat: repeat;")
(mrrx "mask-repeat: repeat-x;")
(mrry "mask-repeat: repeat-y;")
(mrnr "mask-repeat: no-repeat;")
(mrs "mask-repeat: space;")
(mrr "mask-repeat: round;")
;; mask size
(ms "mask-size: " r q ";")
(msc "mask-size: contain;")
(msco "mask-size: cover;")
(msa "mask-size: auto;")

;; filter
(fi "filter: " r q ";")
(fiu "filter: url(" r q ");")
(fib "filter: blur(" r q ");")
(fibr "filter: brightness(" r q ");")
(fic "filter: contrast(" r q ");")
(fids "filter: drop-shadow(" r q ");")
(fig "filter: grayscale(" r q ");")
(fihr "filter: hue-rotate(" r q ");")
(fii "filter: invert(" r q ");")
(fio "filter: opacity(" r q ");")
(fis "filter: saturate(" r q ");")
(fise "filter: sepia(" r q ");")


;; ANIMATION:
;; animation
(ani "animation: " r q ";")
(ana "animation-name: " r q ";")
(adu "animation-duration: " r q ";")
;; animation timing function
(atf "animation-timing-function: " r q ";")
(atfei "animation-timing-function: ease-in;")
(atfeo "animation-timing-function: ease-out;")
(atfeio "animation-timing-function: ease-in-out;")
(atfl "animation-timing-function: linear;")
(atfst "animation-timing-function: step-start;")
(atfse "animation-timing-function: step-end;")
(ade "animation-delay: " r q ";")
;; animation direction
(adi "animation-direction: " r q ";")
(adir "animation-direction: reverse;")
(adia "animation-direction: alternate;")
(adiar "animation-direction: alternate-reverse;")
;; animation iteration count
(aico "animation-iteration-count: " r q ";")
(aicoi "animation-iteration-count: infinite;")
;; animation fill mode
(afm "animation-fill-mode: " r q ";")
(afmf "animation-fill-mode: forwards;")
(afmb "animation-fill-mode: backwards;")
(afmbo "animation-fill-mode: both;")
;; animation play state
(aps "animation-play-state: " r q ";")
(apsp "animation-play-state: paused;")
(ati "animation-timeline: " r q ";")


;; TRANSITION
(ti "transition: ")
;; transition behavior
(tibn "transition-behavior: normal;")
(tibd "transition-behavior: alow-discrete;")
;; transition  delay
(tid "transition-delay: " r q ";")
(tidu "transition-duration: " r q ";")
(tip "transition-property: " r q ";")
;; transition timing function
(titf "transition-timing-function: " r q ";")
(titfe "transition-timing-function: ease;")
(titfei "transition-timing-function: ease-in;")
(titfeo "transition-timing-function: ease-out;")
(titfeio "transition-timing-function: ease-in-out;")
(titfl "transition-timing-function: linear;")
(titfss "transition-timing-function: setp-start;")
(titfse "transition-timing-function: setp-end;")


;; cursor
(cu "cursor: " r q ";")
(cud "cursor: default;")
(cup "cursor: pointer;")
(cun "cursor: none;")
(cuh "cursor: help;")
(cupr "cursor: progress;")
(cuw "cursor: wait;")
(cut "cursor: text;")
(cum "cursor: move;")
(cun "cursor: no-allowed;")
(cug "cursor: grab;")
(cugg "cursor: grabbing;")


;; FONTS
;; font
(fo "font: " r q ";")
(fof "font-family: " r q ";")
(fos "font-size: " r q ";")
(fow "font-weight: " r q ";")
(fost "font-style: " r q ";")
(foh "font-height: " r q ";")
(fod "font-display: " r q ";")
(fov "font-variant: " r q ";")
(fostr "font-stretch: " r q ";")
;; text
(tea "text-align: " r q ";")
(teo "text-overflow: " r q ";")
(ted "text-decoration: " r q ";")
(tet "text-transform: " r q ";")
(tes "text-shadow: " r q ";")
(tew "text-wrap: " r q ";")
;; vertical align
(va "vertical-align: " r q ";")
(lh "line-height: " r q ";")
(lsp "letter-spacing: " r q ";")
(ws "word-spacing: " r q ";")
;; over flow
(ofl "overflow: " r q ";")
(ofh "overflow: hidden;")
(ofs "overflow: scroll;")

;; LIST STYLE
;; list style
(ls "list-style: " r q ";")
(lsi "list-style-image: " r q ";")
;; list style position
(lspi "list-style-position: inside;")
(lspo "list-style-position: outside;")
;; list style type
(lst "list-style-type: " r q ";")
(lstd "list-style-type: disc")
(lstc "list-style-type: circle")
(lsts "list-style-type: square")
(lstde "list-style-type: decimal")

;; content
(cont "content: " r q ";")


;; MISCELLANEOUS:
(usn "user-select: none;")
(usa "user-select: auto;")
(ust "user-select: text;")
(usal "user-select: all;")


;; SELECTORS:
;; structure
(ht "html {" n> r q n> "}" >)
(bod "body {" n> r q n> "}" >)
(sp "span {" n> r q n> "}" >)
;; (di "div {" n> r q n> "}" >)
;; section
(hea "header {" n> r q n> "}" >)
(mai "main {" n> r q n> "}" >)
(art "article {" n> r q n> "}" >)
(sec "section {" n> r q n> "}" >)
(hg "hgroup {" n> r q n> "}" >)
(asi "aside {" n> r q n> "}" >)
(addr "address {" n> r q n> "}" >)
;; header one
(hon "h1 {" n> r q n> "}" >)
(htw "h2 {" n> r q n> "}" >)
(hth "h3 {" n> r q n> "}" >)
(hfr "h4 {" n> r q n> "}" >)
(hfi "h5 {" n> r q n> "}" >)
(hsi "h6 {" n> r q n> "}" >)
;; list
(ull "ul {" n> r q n> "}" >)
(oll "ol {" n> r q n> "}" >)
(lil "li {" n> r q n> "}" >)
(dll "dl {" n> r q n> "}" >)
;; media
;; (lin "link {" n> r q n> "}" >)
(ifr "iframe {" n> r q n> "}" >)
(vid "video {" n> r q n> "}" >)
(au "audio {" n> r q n> "}" >)
;; form and input
;; (form "form {" n> r q n> "}" >)
(la "label {" n> r q n> "}" >)
(inp "input {" n> r q n> "}" >)
(sele "select {" n> r q n> "}" >)
(opti "option {" n> r q n> "}" >)
(butt "button {" n> r q n> "}" >)
;; opt group
(og "optgroup {" n> r q n> "}" >)
(fie "fieldset {" n> r q n> "}" >)
(tex "texarea {" n> r q n> "}" >)
;; table
(tab "table {" n> r q n> "}" >)
;; component
(te "template {" n> r q n> "}" >)
(slo "slot {" n> r q n> "}" >)
;; misc
(det "details {" n> r q n> "}" >)
(sum "summary {" n> r q n> "}" >)
(dia "dialog {" n> r q n> "}" >)


;; FUNCTIONAL PSEUDO-CLASS:
;; interaction:
(hov "hover ")
(ac "active ")
(foc "focus ")
(fwi "focus-within ")
(fv "focus-visible ")
;; location:
(vi "visited ")
(lk "link ")
(ta "target ")
(al "any-link ")
;;
(em "empty ")
(fc "first-child ")
(lc "last-child ")
(oc "only-child ")
(nc "nth-child(" r q ") ")
(ft "first-type ")
(lot "last-of-type ")
(oot "only-of-type ")
(noty "nth-of-type(" r q ") ")
(defi "defined ")
;; form:
(roo "root ")
;; form
(ch "cheked ")
(ind "indeterminate ")
(ena "enable ")
(disa "disable ")
(ron "read-only ")
(rw "read-write ")
(psh "placeholder-shown ")
(defa "default ")
;; estate:
(fu "fullscreen ")
(mod "modal ")
;; paginado:
(fir "first ")
(lef "left ")
(rig "right ")
(bla "blank ")
;; specials:
(ha "has(" r q ")")
;; (is "is(" r q ")")
(whe "where(" r q ")")
;; component:
(ho "host(" r q ")")
(hoo "host ")
(hc "host-context(" r q ")")

;; PSEUDO-ELEMENTS:
;; element before
(be ":before {" n> "content: \"" r q "\";" n> "}" >)
(af ":after {" n> "content: \"" r q "\";" n> "}" >)
;; element before empty
(bee ":before ")
(afe ":after ")
;; TIPOGRÁFICO
(fle ":first-letter ")
(fli ":first-line ")
;; destacar
(sel ":selection ")
(tt ":target-text ")
(ser ":spelling-err ")
(ge ":grammar-erro ")
;; webcomponent
(par ":part ")
(sl ":slotted(" r q ")")
;; misc
(mar ":marker ")
(pl ":placeholder ")
(fsb ":file-selector-button ")
(ba ":backdrop ")
;; view trans api
(vtr ":view-transit ")


;; @RULES:
;; key frames
(kf "@keyframes " p " {" n> r q n> "}" >)
;; key frames from
(kff "@keyframes " p " {" n> "from { " r p " }"  n> "to { " q " }" n> "}" >)
;; key frames percentage
(kfp "@keyframes " p " {" n> "0% { " r p " }"  n> "100% { " q " }" n> "}" >)

;; media
(me "@media " p "(" r q ")")
;; supports
(su "@supports (" r q ")")
;; property
(pro "@property " q)
;; font face
(fofa "@font-face {" n> r q n> "}" >)

;; import
;; rule import
(rim "@import \"" r q "\";")
;; rule import url
(rimu "@import url(\"" r q "\");")

;; import
(im "import " p " from \"" q "\";")
;; import width
(imw "import " p " from \"" p "with {" q "\"};")


;; COMMENTS:
;; comment big block
(comb "/*" n> "|--------------------------------------------------" n>
     "| "
     r q n> "|--------------------------------------------------" n> "*/" >)
;; comment (one line)
(comm "/* ======================================================== */"
    n "/* " r q n " */"
    "/* ======================================================== */")
