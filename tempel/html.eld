html-mode

;;; SYNTAX:
;;; NAMESPACES/PREFIXES:
;;; - class -> cl
;;; - import -> im

;;; SUFFIXES:
;;; list elements use a suffix instead of a prefix (easier to type)
;;; - ul -> ull

;;; QUIRKS:
;;; optgroup -> opt group -> og
;;; fielset -> fiel set -> fs
;;; textarea -> text area -> ta

;;; COMMON (HTML, CSS, JS):
;;; - container -> con
;;; - class -> cl
;;; - button -> bu
;;; - link -> lk
;;; - comment -> com

;;; NOTES:
;;; elements: di -> <div>
;;; elements with attribute (class): dic -> <div class="...">
;;; elements with attributes: diic -> <div id="..." class="...">
;;; the order of the attributes is hierarchical: id, class, ...

;;; headers with number use the first two initials of the number
;;; - h1 -> hon
;;; tags that are a real word,short or already match, repeat last letter
;;; - head -> headd
;;; - i -> ii



;; GENERAL:
;; label
(l "<" (s label) ">" n> r q n> "</" label ">" >)
;; label attribute
(lat "<" (s label) " " p "=\"" p "\">" n> r q n> "</" label ">" >)
;; label line
(ll "<" (s label) ">" r q "</" label ">")
;; label line attribute
(llat "<" (s label) " " p "=\"" p "\">" r q "</" label ">")


;; ATTRIBUTES
;; attribute
(u p "=\"" r q "\"")
;; class
(cl "class=\"" r q "\"")
;; id
(idd "id=\"" r q "\"")
;; value
(va "value=\"" r q "\"")
;; name
(nam "name=\"" r q "\"")
;; style
(sty "style=\"" r q "\"")
;; data attribute
(da "data-" p "=\"" r q "\"")
;; href
(hre "href=\"" r q "\"")
;; alt
(altt "alt=\"" r q "\"")
;; src
(sr "src=\"" r q "\"")
;; src set
(ss "srcset=\"" r q "\"")
;; title
(ti "title=\"" r q "\"")
;; width
(wi "width=\"" r q "\"")
;; height
(hei "height=\"" r q "\"")
;; tab index
(tin "tabindex=\"" r q "\"")
;; loading
(loa "loading=\"" r q "\"")


;; WORDS:
(con "container")


;; ELEMENTS:
;; STRUCTURE:
;; html
(ht "<html lang=\"en-us\">" n> r q n> "</html>" >)
;; head
(headd "<head>" n> r q n> "</head>" >)
;; body
(bo "<body>" n> r q n> "</body>" >)
;; div
(di "<div>" n> r q n> "</div>" >)
;; div id
(dii "<div id=\"" p "\">" n> r q n> "</div>" >)
;; div class
(dic "<div class=\"" p "\">" n> r q n> "</div>" >)
;; div class container
(dicc "<div class=\"container\">" n> r q n> "</div>" >)
;; div id class
(diic "<div id=\"" p "\" class=\"" p "\">" n> r q n> "</div>" >)
;; div line
(dil "<div>" r q "</div>")
;; div line id
(dili "<div id=\"" p "\">" r q "</div>")
;; div line class
(dilc "<div class=\"" p "\">" r q "</div>")
;; div line id class
(dilic "<div id=\"" p "\" class=\"" p "\">" r q "</div>")
;; span
(sp "<span>" r q "</span>")
;; span id
(spi "<span id=\"" p "\">" r q "</span>")
;; span class
(spc "<span class=\"" p "\">" r q "</span>")
;; span id class
(spic "<span id=\"" p "\" class=\"" p "\">" r q "</span>")


;; META:
;; meta charset
(mc "<meta charset=\"UTF-8\">")
;; meta viewport
(mv "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">")
;; meta http-equiv
(mh "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">")
;; meta description
(md "<meta name=\"description\" content=\"" r q "\">")
;; meta keywords
(mk "<meta name=\"keywords\" content=\"" r q "\">")
;; meta author
(mau "<meta name=\"author\" content=\"" r q "\">")
;; title
(tit "<title>" r q "</title>")
;; link
(lk "<link " r q "/>")
;; link id
(lki "<link id=\"" p "\" " r q "/>")
;; link class
(lkc "<link class=\"" p "\" " r q "/>")
;; link href
(lkh "<link href=\"" r p "\" " q "/>")
;; link rel
(lkr "<link rel=\"" p "\" " q "/>")
;; link id class
(lkic "<link id=\"" p "\" class=\"" p "\" " r q "/>")
;; link href rel
(lkhr "<link href=\"" r p "\" rel=\"" q "\">")
;; link id href rel
(lkihr "<link id=\"" p "\" href=\"" r p "\" rel=\"" q "\">")
;; link class href rel
(lkchr "<link class=\"" p "\" href=\"" r p "\" rel=\"" q "\">")
;; link id class href rel
(lkichr "<link id=\"" p "\" class=\"" p "\" href=\"" r p "\" rel=\"" q "\">")
;; link stylesheet
(lks "<link rel=\"stylesheet\" href=\"" r q "\">")
;; style
(st "<style>" n> r q n> "</style>" >)
;; style line
(stl "<style>" r q "</style>")
;; script
(sc "<script>" n> r q n> "</script>" >)
;; script line
(scl "<script>" r q "</script>")
;; script src
(scs "<script src=\"" p "\">" r q "</script>")
;; script src defer
(scsd "<script defer src=\"" p "\">" r q "</script>")
;; script src async
(scsa "<script async src=\"" p "\">" r q "</script>")
;; script module
(scm "<script type=\"module\" src=\"" r q "\"></script>")


;; SECTION:
;; header
(hea "<header>" n> r q n> "</header>" >)
;; header id
(heai "<header id=\"" p "\">" n> r q n> "</header>" >)
;; header class
(heac "<header class=\"" p "\">" n> r q n> "</header>" >)
;; header id class
(heaic "<header id=\"" p "\" class=\"" p "\">" n> r q n> "</header>" >)
;; main
(ma "<main>" n> r q n> "</main>" >)
;; main id
(mai "<main id=\"" p "\">" n> r q n> "</main>" >)
;; main class
(mac "<main class=\"" p "\">" n> r q n> "</main>" >)
;; main id class
(maic "<main id=\"" p "\" class=\"" p "\">" n> r q n> "</main>" >)
;; article
(ar "<article>" n> r q n> "</article>" >)
;; article id
(ari "<article id=\"" p "\">" n> r q n> "</article>" >)
;; article class
(arc "<article class=\"" p "\">" n> r q n> "</article>" >)
;; article id class
(aric "<article id=\"" p "\" class=\"" p "\">" n> r q n> "</article>" >)
;; section
(sec "<section>" n> r q n> "</section>" >)
;; section id
(seci "<section id=\"" p "\">" n> r q n> "</section>" >)
;; section class
(secc "<section class=\"" p "\">" n> r q n> "</section>" >)
;; section id class
(secic "<section id=\"" p "\" class=\"" p "\">" n> r q n> "</section>" >)
;; nav
(na "<nav>" n> r q n> "</nav>" >)
;; nav id
(nai "<nav id=\"" p "\">" n> r q n> "</nav>" >)
;; nav class
(nac "<nav class=\"" p "\">" n> r q n> "</nav>" >)
;; nav id class
(naic "<nav id=\"" p "\" class=\"" p "\">" n> r q n> "</nav>" >)

;; h1
(hon "<h1>" r q "</h1>")
;; h1 id
(honi "<h1 id=\"" p "\">" r q "</h1>")
;; h1 class
(honc "<h1 class=\"" p "\">" r q "</h1>")
;; h1 id class
(honic "<h1 id=\"" p "\" class=\"" p "\">" r q "</h1>")
;; h2
(htw "<h2>" r q "</h2>")
;; h2 id
(htwi "<h2 id=\"" p "\">" r q "</h2>")
;; h2 class
(htwc "<h2 class=\"" p "\">" r q "</h2>")
;; h2 id class
(htwic "<h2 id=\"" p "\" class=\"" p "\">" r q "</h2>")
;; h3
(hth "<h3>" r q "</h3>")
;; h3 id
(hthi "<h3 id=\"" p "\">" r q "</h3>")
;; h3 class
(hthc "<h3 class=\"" p "\">" r q "</h3>")
;; h3 id class
(hthic "<h3 id=\"" p "\" class=\"" p "\">" r q "</h3>")
;; h4
(hfo "<h4>" r q "</h4>")
;; h4 id
(hfoi "<h4 id=\"" p "\">" r q "</h4>")
;; h4 class
(hfoc "<h4 class=\"" p "\">" r q "</h4>")
;; h4 id class
(hfoic "<h4 id=\"" p "\" class=\"" p "\">" r q "</h4>")
;; h5
(hfi "<h5>" r q "</h5>")
;; h5 id
(hfii "<h5 id=\"" p "\">" r q "</h5>")
;; h5 class
(hfic "<h5 class=\"" p "\">" r q "</h5>")
;; h5 id class
(hfiic "<h5 id=\"" p "\" class=\"" p "\">" r q "</h5>")
;; h6
(hsi "<h6>" r q "</h6>")
;; h6 id
(hsii "<h6 id=\"" p "\">" r q "</h6>")
;; h6 class
(hsic "<h6 class=\"" p "\">" r q "</h6>")
;; h6 id class
(hsiic "<h6 id=\"" p "\" class=\"" p "\">" r q "</h6>")

;; hgroup
(hg "<hgroup>" n> r q n> "</hgroup>" >)
;; hgroup id
(hgi "<hgroup id=\"" p "\">" n> r q n> "</hgroup>" >)
;; hgroup class
(hgc "<hgroup class=\"" p "\">" n> r q n> "</hgroup>" >)
;; hgroup id class
(hgic "<hgroup id=\"" p "\" class=\"" p "\">" n> r q n> "</hgroup>" >)
;; aside
(asi "<aside>" n> r q n> "</aside>" >)
;; aside id
(asii "<aside id=\"" p "\">" n> r q n> "</aside>" >)
;; aside class
(asic "<aside class=\"" p "\">" n> r q n> "</aside>" >)
;; aside id class
(asiic "<aside id=\"" p "\" class=\"" p "\">" n> r q n> "</aside>" >)
;; footer
(foo "<footer>" n> r q n> "</footer>" >)
;; footer id
(fooi "<footer id=\"" p "\">" n> r q n> "</footer>" >)
;; footer class
(fooc "<footer class=\"" p "\">" n> r q n> "</footer>" >)
;; footer id class
(fooic "<footer id=\"" p "\" class=\"" p "\">" n> r q n> "</footer>" >)
;; address
(addr "<address>" n> r q n> "</address>" >)
;; address id
(addri "<address id=\"" p "\">" n> r q n> "</address>" >)
;; address class
(addrc "<address class=\"" p "\">" n> r q n> "</address>" >)
;; address id class
(addric "<address id=\"" p "\" class=\"" p "\">" n> r q n> "</address>" >)


;; TEXT CONTENT:
;; paragraph
(pp "<p>" n> r q n> "</p>" >)
;; paragraph id
(ppi "<p id=\"" p "\">" n> r q n> "</p>" >)
;; paragraph class
(ppc "<p class=\"" p "\">" n> r q n> "</p>" >)
;; paragraph id class
(ppic "<p id=\"" p "\" class=\"" p "\">" n> r q n> "</p>" >)
;; paragraph line
(ppl "<p>" r q "</p>")
;; paragraph id
(ppli "<p id=\"" p "\">" r q "</p>")
;; paragraph class
(pplc "<p class=\"" p "\">" r q "</p>")
;; paragraph id class
(pplic "<p id=\"" p "\" class=\"" p "\">" r q "</p>")
;; pre
(pr "<pre>" n> r q n> "</pre>" >)
;; pre id
(pri "<pre id=\"" p "\">" n> r q n> "</pre>" >)
;; pre class
(prc "<pre class=\"" p "\">" n> r q n> "</pre>" >)
;; pre id class
(pric "<pre id=\"" p "\" class=\"" p "\">" n> r q n> "</pre>" >)
;; pre code
(prco "<pre><code>" n> r q n> "<code></pre>" >)
;; pre code id
(prcoi "<pre id=\"" p "\><code>" n> r q n> "<code></pre>" >)
;; pre code class
(prcoc "<pre class=\"" p "\><code>" n> r q n> "<code></pre>" >)
;; pre code id class
(prcoic "<pre id=\"" p "\" class=\"" p "\><code>" n> r q n> "<code></pre>" >)
;; hr
(hrr "<hr>")
;; hr self-closing
(hrrs "<hr " r q " />")
;; blockquote
(bl "<blockquote>" n> r q n> "</blockquote>" >)
;; blockquote id
(bli "<blockquote id=\"" p "\">" n> r q n> "</blockquote>" >)
;; blockquote class
(blc "<blockquote class=\"" p "\">" n> r q n> "</blockquote>" >)
;; blockquote id class
(blic "<blockquote id=\"" p "\" class=\"" p "\">" n> r q n> "</blockquote>" >)


;; INLINE TEXT:
;; anchor hyperlink
(anc "<a href=\"" p "\">" r q "</a>")
;; anchor hyperlink id
(anci "<a id=\"" p "\" href=\"" p "\">" r q "</a>")
;; anchor hyperlink class
(ancc "<a class=\"" p "\" href=\"" p "\">" r q "</a>")
;; anchor hyperlink id class
(ancic "<a id=\"" p "\" class=\"" p "\" href=\"" p "\">" r q "</a>")
;; emphasized
(emm "<em>" r q "</em>")
;; emphasized id
(emmi "<em id=\"" p "\">" r q "</em>")
;; emphasized class
(emmc "<em class=\"" p "\">" r q "</em>")
;; emphasized id class
(emmic "<em id=\"" p "\" class=\"" p "\">" r q "</em>")
;; idiomatic
(ii "<i>" r q "</i>")
;; idiomatic id
(iii "<i id=\"" p "\">" r q "</i>")
;; idiomatic class
(iic "<i class=\"" p "\">" r q "</i>")
;; idiomatic id class
(iiic "<i id=\"" p "\" class=\"" p "\">" r q "</i>")
;; strong
(str "<strong>" r q "</strong>")
;; strong id
(stri "<strong id=\"" p "\">" r q "</strong>")
;; strong class
(strc "<strong class=\"" p "\">" r q "</strong>")
;; strong id class
(stric "<strong id=\"" p "\" class=\"" p "\">" r q "</strong>")
;; boldface
(bb "<b>" r q "</b>")
;; boldface id
(bbi "<b id=\"" p "\">" r q "</b>")
;; boldface class
(bbc "<b class=\"" p "\">" r q "</b>")
;; boldface id class
(bbic "<b id=\"" p "\" class=\"" p "\">" r q "</b>")
;; mark or highlighted
(mar "<mark>" r q "</mark>")
;; mark or highlighted id
(mari "<mark id=\"" p "\">" r q "</mark>")
;; mark or highlighted class
(marc "<mark class=\"" p "\">" r q "</mark>")
;; mark or highlighted id class
(maric "<mark id=\"" p "\" class=\"" p "\">" r q "</mark>")
;; quotation
(qq "<q>" r q "</q>")
;; quotation id
(qqi "<q id=\"" p "\">" r q "</q>")
;; quotation class
(qqc "<q class=\"" p "\">" r q "</q>")
;; quotation id class
(qqic "<q id=\"" p "\" class=\"" p "\">" r q "</q>")
;; cite
(ci "<cite>" r q "</cite>")
;; cite id
(cii "<cite id=\"" p "\">" r q "</cite>")
;; cite class
(cic "<cite class=\"" p "\">" r q "</cite>")
;; cite id class
(ciic "<cite id=\"" p "\" class=\"" p "\">" r q "</cite>")
;; defintition element
(df "<dfn>" r q "</dfn>")
;; defintition element id
(dfi "<dfn id=\"" p "\">" r q "</dfn>")
;; defintition element class
(dfc "<dfn class=\"" p "\">" r q "</dfn>")
;; defintition element id class
(dfic "<dfn id=\"" p "\" class=\"" p "\">" r q "</dfn>")
;; abbreviation
(ab "<abbr " p "=\"" p "\">" r q "</abbr>")
;; inserted
(inss "<ins>" r q "</ins>")
;; inserted id
(inssi "<ins id=\"" p "\">" r q "</ins>")
;; inserted class
(inssc "<ins class=\"" p "\">" r q "</ins>")
;; inserted id class
(inssic "<ins id=\"" p "\" class=\"" p "\">" r q "</ins>")
;; deleted
(dele "<del>" r q "</del>")
;; deleted id
(delei "<del id=\"" p "\">" r q "</del>")
;; deleted class
(delec "<del class=\"" p "\">" r q "</del>")
;; deleted id class
(deleic "<del id=\"" p "\" class=\"" p "\">" r q "</del>")


;; LISTS:
;; ordered list
(oll "<ol>" r q "</ol>")
;; ordered list id
(olli "<ol id=\"" p "\">" r q "</ol>")
;; ordered list class
(ollc "<ol class=\"" p "\">" r q "</ol>")
;; ordered list id class
(ollic "<ol id=\"" p "\" class=\"" p "\">" r q "</ol>")
;; ordered list list
(olll "<ol>" n> "<li>" r "</li>" n> "<li>" q "</li>" n> "</ol>" >)
;; ordered list list id
(ollli "<ol id=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ol>" >)
;; ordered list list class
(olllc "<ol class=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ol>" >)
;; ordered list list id class
(olllic "<ol id=\"" p "\" class=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ol>" >)
;; unordered list
(ull "<ul>" r q "</ul>")
;; unordered list id
(ulli "<ul id=\"" p "\">" r q "</ul>")
;; unordered list class
(ullc "<ul class=\"" p "\">" r q "</ul>")
;; unordered list id class
(ullic "<ul id=\"" p "\" class=\"" p "\">" r q "</ul>")
;; unordered list list
(ulll "<ul>" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ul>" >)
;; unordered list list id
(ullli "<ul id=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ul>" >)
;; unordered list list class
(ulllc "<ul class=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ul>" >)
;; unordered list list id class
(ulllic "<ul id=\"" p "\" class=\"" p "\">" n> "<li>" r p "</li>" n> "<li>" q "</li>" n> "</ul>" >)
;; list list
(lil "<li>" r q "</li>")
;; list list id
(lili "<li id=\"" p "\">" r q "</li>")
;; list list class
(lilc "<li class=\"" p "\">" r q "</li>")
;; list list id class
(lilic "<li id=\"" p "\" class=\"" p "\">" r q "</li>")

;; description list
(dll "<dl>" r q "</dl>")
;; description list id
(dlli "<dl id=\"" p "\">" r q "</dl>")
;; description list class
(dllc "<dl class=\"" p "\">" r q "</dl>")
;; description list id class
(dllic "<dl id=\"" p "\" class=\"" p "\">" r q "</dl>")
;; defines terms
(dtl "<dt>" r q "</dt>")
;; defines terms id
(dtli "<dt id=\"" p "\">" r q "</dt>")
;; defines terms class
(dtlc "<dt class=\"" p "\">" r q "</dt>")
;; defines terms id class
(dtlic "<dt id=\"" p "\" class=\"" p "\">" r q "</dt>")
;; defines details
(ddl "<dd>" r q "</dd>")
;; defines details id
(ddli "<dd id=\"" p "\">" r q "</dd>")
;; defines details class
(ddlc "<dd class=\"" p "\">" r q "</dd>")
;; defines details id class
(ddlic "<dd id=\"" p "\" class=\"" p "\">" r q "</dd>")


;; MEDIA:
;; image
(im "<img src=\"" r p "\" alt=\"" q "\">")
;; image id
(imi "<img id=\"" p "\" src=\"" r p "\" alt=\"" q "\">")
;; image class
(imc "<img class=\"" p "\" src=\"" r p "\" alt=\"" q "\">")
;; image id class
(imic "<img id=\"" p "\" class=\"" p "\" src=\"" r p "\" alt=\"" q "\">")
;; image only
(imo "<img " r q "\">")
;; iframe
(ifr "<iframe src=\"" p "\">" r q "</iframe>")
;; video
(vi "<video controls>" r q "</video>")
;; audio
(au "<audio controls>" r q "</audio>")


;; FORMS AND INPUT:
;; form
(fo "<form>" n> r q n> "</form>" >)
;; form id
(foi "<form id=\"" p "\">" n> r q n> "</form>" >)
;; form class
(foc "<form class=\"" p "\">" n> r q n> "</form>" >)
;; form id class
(foic "<form id=\"" class=\"" p "\" p "\">" n> r q n> "</form>" >)
;; form method
(fom "<form  method=\"" p "\">" n> r q n> "</form>" >)
;; form method action
(foma "<form action=\"" p "\" method=\"" p "\">" n> r q n> "</form>" >)

;; label
(lab "<label>" n> r> q n> "</label>" >)
;; label id
(labi "<label id=\"" p "\">" n> r> q n> "</label>" >)
;; label class
(labc "<label class=\"" p "\">" n> r> q n> "</label>" >)
;; label id class
(labic "<label id=\"" p "\" class=\"" p "\">" n> r> q n> "</label>" >)
;; label form
(labf "<label for=\"" p "\">" n> r> q n> "</label>" >)
;; label form id
(labfi "<label id=\"" p "\" for=\"" p "\">" n> r> q n> "</label>" >)
;; label form class
(labfc "<label class=\"" p "\" for=\"" p "\">" n> r> q n> "</label>" >)
;; label form id class
(labfic "<label id=\"" p "\" class=\"" p "\" for=\"" p "\">" n> r> q n> "</label>" >)
;; label line
(labl "<label>" r q "</label>")
;; label line id
(labli "<label id=\"" p "\">" r q "</label>")
;; label line class
(lablc "<label class=\"" p "\">" r q "</label>")
;; label line id class
(lablic "<label id=\"" p "\" class=\"" p "\">" r q "</label>")

;; INPUTS:
;; input text
(int "<input type=\"text\">")
;; input text id
(inti "<input id=\"" r q "\" type=\"text\">")
;; input tex class
(intc "<input class=\"" r q "\" type=\"text\">")
;; input text id class
(intic "<input id=\"" p "\" class=\"" r q "\" type=\"text\">")
;; input empty
(ine "<input type=\"" r q "\">")
;; input empty id
(inei "<input id=\"" r p "\" type=\"" q "\">")
;; input empty class
(inec "<input class=\"" r p "\" type=\"" q "\">")
;; input empty id class
(ineic "<input id=\"" p "\" class=\"" r p "\" type=\"" q "\">")
;; input submit
(ins "<input type=\"submit\">")
;; input submit id
(insi "<input id=\"" r q "\" type=\"submit\">")
;; input submit class
(insc "<input class=\"" r q "\" type=\"submit\">")
;; input submit id class
(insic "<input id=\"" p "\" class=\"" r q "\" type=\"submit\">")
;; input password
(inp "<input type=\"password\">")
;; input password id
(inpi "<input id=\"" r q "\" type=\"password\">")
;; input password class
(inpc "<input class=\"" r q "\" type=\"password\">")
;; input password id class
(inpic "<input id=\"" p "\" class=\"" r q "\" type=\"password\">")
;; input checkbox
(inc "<input type=\"checkbox\">")
;; input checkbox id
(inci "<input id=\"" r q "\" type=\"checkbox\">")
;; input checkbox class
(incc "<input class=\"" r q "\" type=\"checkbox\">")
;; input checkbox id class
(incic "<input id=\"" p "\" class=\"" r q "\" type=\"checkbox\">")
;; input checkbox checked
(inck "<input type=\"checkbox\" checked>")
;; input checkbox checked id
(incki "<input id=\"" r q "\" type=\"checkbox\" checked>")
;; input checkbox checked class
(inckc "<input class=\"" r q "\" type=\"checkbox\" checked>")
;; input checkbox checked id class
(inckic "<input id=\"" p "\" class=\"" r q "\" type=\"checkbox\" checked>")
;; input radio
(inr "<input type=\"radio\">")
;; input radio id
(inri "<input id=\"" r q "\" type=\"radio\">")
;; input radio class
(inrc "<input class=\"" r q "\" type=\"radio\">")
;; input radio id class
(inric "<input id=\"" p "\" class=\"" r q "\" type=\"radio\">")
;; input hidden
(inh "<input type=\"hidden\">")
;; input hidden id
(inhi "<input id=\"" r q "\" type=\"hidden\">")
;; input hidden class
(inhc "<input class=\"" r q "\" type=\"hidden\">")
;; input hidden id class
(inhic "<input id=\"" p "\" class=\"" r q "\" type=\"hidden\">")
;; input email
(inem "<input type=\"email\">")
;; input email id
(inemi "<input id=\"" r q "\" type=\"email\">")
;; input email class
(inemc "<input class=\"" r q "\" type=\"email\">")
;; input email id class
(inemic "<input id=\"" p "\" class=\"" r q "\" type=\"email\">")
;; input button
(inb "<input type=\"button\">")
;; input button id
(inbi "<input id=\"" r q "\" type=\"button\">")
;; input button class
(inbc "<input class=\"" r q "\" type=\"button\">")
;; input button id class
(inbic "<input id=\"" p "\" class=\"" r q "\" type=\"button\">")
;; input number
(inn "<input type=\"number\">")
;; input number id
(inni "<input id=\"" r q "\" type=\"number\">")
;; input number class
(innc "<input class=\"" r q "\" type=\"number\">")
;; input number id class
(innic "<input id=\"" p "\" class=\"" r q "\" type=\"number\">")
;; input file
(inf "<input type=\"file\">")
;; input file id
(infi "<input id=\"" r q "\" type=\"file\">")
;; input file class
(infc "<input class=\"" r q "\" type=\"file\">")
;; input file id class
(infic "<input id=\"" p "\" class=\"" r q "\" type=\"file\">")

;; select
(sel "<select>" r q "</select>")
;; select id
(seli "<select id=\"" p "\">" r q "</select>")
;; select class
(selc "<select class=\"" p "\">" r q "</select>")
;; select name
(seln "<select name=\"" p "\">" r q "</select>")
;; select options
(selo "<select>" n>
      "<option value=\"" p "\">" p "</option>" n>
      "<option value=\"" p "\">" q "</option>" n> "</select>" >)
;; select options id
(seloi "<select id=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</select>" >)
;; select options class
(seloc "<select class=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q p "</option>" n> "</select>" >)
;; select options name
(selon "<select name=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</select>" >)

;; option
(op "<option>" r q "</option>")
;; option id
(opi "<option id=\"" p "\">" r q "</option>")
;; option class
(opc "<option class=\"" p "\">" r q "</option>")
;; option id class
(opic "<option id=\"" p "\" class=\"" p "\">" r q "</option>")
;; option value
(opv "<option value=\"" p "\">" r q "</option>")
;; option value id
(opvi "<option id=\"" p "\" value=\"" p "\">" r q "</option>")
;; option value class
(opvc "<option class=\"" p "\" value=\"" p "\">" r q "</option>")
;; option value id class
(opvic "<option id=\"" p "\" class=\"" p "\" value=\"" p "\">" r q "</option>")

;;  button
(bu "<button>" r q "</button>")
;;  button id
(bui "<button id=\"" p "\">" r q "</button>")
;;  button class
(buc "<button class=\"" p "\">" r q "</button>")
;;  button type
(buty "<button type=\"" p "\">" r q "</button>")
;;  button id class
(buic "<button id=\"" p "\" class=\"" p "\">" r q "</button>")
;;  button id type
(buit "<button  id=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button class type
(buct "<button  class=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button id class type
(buict "<button id=\"" p "\" class=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button onclick
(buo "<button onclick=\"" p "\">" r q "</button>")
;;  button onclick id
(buoi "<button onclick=\"" p "\" id=\"" p "\">" r q "</button>")
;;  button onclick class
(buoc "<button onclick=\"" p "\" class=\"" p "\">" r q "</button>")
;;  button onclick type
(buot "<button onclick=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button onclick id class
(buoic "<button onclick=\"" p "\" id=\"" p "\" class=\"" p "\">" r q "</button>")
;;  button onclick id type
(buoit "<button onclick=\"" p "\"  id=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button onclick class type
(buoct "<button onclick=\"" p "\"  class=\"" p "\" type=\"" p "\">" r q "</button>")
;;  button onclick id class type
(buoict "<button onclick=\"" p "\" id=\"" p "\" class=\"" p "\" type=\"" p "\">" r q "</button>")

;; opt group
(og "<optgroup>" r q "</optgroup>")
;; opt group id
(ogi "<optgroup id=\"" p "\">" r q "</optgroup>")
;; opt group class
(ogc "<optgroup class=\"" p "\">" r q "</optgroup>")
;; opt group name
(ogn "<optgroup name=\"" p "\">" r q "</optgroup>")
;; opt group label
(ogl "<optgroup label=\"" p "\">" r q "</optgroup>")
;; opt group options
(ogo "<optgroup>" n>
      "<option value=\"" p "\">" r p "</option>" n>
      "<option value=\"" p "\">" q "</option>" n> "</optgroup>" >)
;; opt group options id
(ogoi "<optgroup id=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</optgroup>" >)
;; opt group options class
(ogoc "<optgroup class=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</optgroup>" >)
;; opt group options name
(ogon "<optgroup name=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</optgroup>" >)
;; opt group options label
(ogol "<optgroup label=\"" p "\">" n>
     "<option value=\"" p "\">" r p "</option>" n>
     "<option value=\"" p "\">" q "</option>" n> "</optgroup>" >)

;; field set
(fs "<fieldset>" n> r q n> "</fieldset>" >)
;; field set class
(fsc "<fieldset class=\"" p "\">" n> r q n> "</fieldset>" >)
;; field set id
(fsi "<fieldset id=\"" p "\">" n> r q n> "</fieldset>" >)
;; field set id class
(fsic "<fieldset id=\"" p "\" class=\"" p "\">" n> r q n> "</fieldset>" >)
;; text area
(ta "<textarea>" n> r q n> "</textearea>" >)
;; text area id
(tai "<textarea id=\"" p "\">" n> r q n> "</textearea>" >)
;; text area class
(tac "<textarea class=\"" p "\">" n> r q n> "</textearea>" >)
;; text area id class
(taic "<textarea id=\"" p "\" class=\"" p "\">" n> r q n> "</textearea>" >)
;; text area name rows cols
(tanrc "<textarea name=\"" p "\" rows=\"" p "\" cols=\"" p "\">" n> r q n> "</textearea>" >)
;; text area id name rows cols
(tainrc "<textarea  id=\"" p "\" name=\"" p "\" rows=\"" p "\" cols=\"" p "\">" n> r q n> "</textearea>" >)


;; TABLES:
;; table
(tab "<table>" n> r q n> "</table>" >)
;; table id
(tabi "<table id=\"" p "\">" n> r q n> "</table>" >)
;; table class
(tabc "<table class=\"" p "\">" n> r q n> "</table>" >)
;; table id class
(tabic "<table id=\"" p "\" class=\"" p "\">" n> r q n> "</table>" >)
;; table row
(trr "<tr>" n> r q n> "</tr>" >)
;; table row  id
(trri "<tr id=\"" p "\">" n> r q n> "</tr>" >)
;; table row class
(trrc "<tr class=\"" p "\">" n> r q n> "</tr>" >)
;; table row id class
(trric "<tr id=\"" p "\" class=\"" p "\">" n> r q n> "</tr>" >)
;; table header
(thh "<th>" r q "</th>")
;; table header id
(thhi "<th id=\"" p "\">" r q "</th>")
;; table header class
(thhc "<th class=\"" p "\">" r q "</th>")
;; table header id class
(thhic "<th id=\"" p "\" class=\"" p "\">" r q "</th>")
;; table data
(tdd "<td>" r q "</td>")
;; table data id
(tddti "<td id=\"" p "\">" r q "</td>")
;; table data class
(tddtc "<td class=\"" p "\">" r q "</td>")
;; table data id class
(tddtic "<td id=\"" p "\" class=\"" p "\">" r q "</td>")


;; MISC:
;; template
(tem "<template>" n> r q n> "</template>" >)
;; template id
(temi "<template id=\"" p "\">" n> r q n> "</template>" >)
;; template class
(temc "<template class=\"" p "\">" n> r q n> "</template>" >)
;; template id class
(temic "<template id=\"" p "\" class=\"" p "\">" n> r q n> "</template>" >)
;; template shadowrootmode
(tems "<template shadowrootmode=\"" p "\">" n> r q n> "</template>" >)
;; sl
(sl "<slot>" r q "</slot>")
;; sl id
(sli "<slot id=\"" p "\">" r q "</slot>")
;; sl class
(slc "<slot class=\"" p "\">" r q "</slot>")
;; sl id class
(slic "<slot id=\"" p "\" class=\"" p "\">" r q "</slot>")
;; slot name
(sln "<slot name=\"" p "\">" r q "</slot>")
;; slot id name
(slin "<slot id=\"" p "\" name=\"" p "\">" r q "</slot>")
;; slot class name
(slcn "<slot class=\"" p "\" name=\"" p "\">" r q "</slot>")
;; slot class id name
(slcin "<slot id=\"" p "\" class=\"" p "\" name=\"" p "\">" r q "</slot>")
;; details
(det "<details>" n> r q n> "</details>" >)
;; details id
(deti "<details id=\"" p "\">" n> r q n> "</details>" >)
;; details class
(detc "<details class=\"" p "\">" n> r q n> "</details>" >)
;; details id  class
(detic "<details id=\"" p "\" class=\"" p "\">" n> r q n> "</details>" >)
;; summary
(summ "<summary>" r q "</summary>")
;; summary id
(summi "<summary id=\"" p "\">" r q "</summary>")
;; summary class
(summc "<summary class=\"" p "\">" r q "</summary>")
;; summary id class
(summic "<summary id=\"" p "\" class=\"" p "\">" r q "</summary>")
;; dialog
(dia "<dialog>" n> r q n> "</dialog>" >)
;; dialog  id
(diai "<dialog id=\"" p "\">" n> r q n> "</dialog>" >)
;; dialog  class
(diac "<dialog class=\"" p "\">" n> r q n> "</dialog>" >)
;; dialog id  class
(diaic "<dialog id=\"" p "\" class=\"" p "\">" n> r q n> "</dialog>" >)
;; canvas
(ca "<canvas>" n> r q n> "</canvas>" >)
;; canvas  id
(cai "<canvas id=\"" p "\">" n> r q n> "</canvas>" >)
;; canvas  class
(cac "<canvas class=\"" p "\">" n> r q n> "</canvas>" >)
;; canvas id  class
(caic "<canvas id=\"" p "\" class=\"" p "\">" n> r q n> "</canvas>" >)
;; canvas width height
(cawh "<canvas width=\"" p "\" height=\"" p "\">" n> r q n> "</canvas>" >)
;; canvas id width height
(caiwh "<canvas id=\"" p "\" width=\"" p "\" height=\"" p "\">" n> r q n> "</canvas>" >)
;; canvas id class width height
(caicwh "<canvas id=\"" p "\" class=\"" p "\" width=\"" p "\" height=\"" p "\">" n> r q n> "</canvas>" >)
;; svg
(sv "<svg>" n> r q n> "</svg>" >)
;; svg  id
(svi "<svg id=\"" p "\">" n> r q n> "</svg>" >)
;; svg  class
(svc "<svg class=\"" p "\">" n> r q n> "</svg>" >)
;; svg id  class
(svic "<svg id=\"" p "\" class=\"" p "\">" n> r q n> "</svg>" >)
;; svg width height
(svwh "<svg width=\"" p "\" height=\"" p "\">" n> r q n> "</svg>" >)
;; svg id width height
(sviwh "<svg id=\"" p "\" width=\"" p "\" height=\"" p "\">" n> r q n> "</svg>" >)
;; svg class width height
(svcwh "<svg class=\"" p "\" width=\"" p "\" height=\"" p "\">" n> r q n> "</svg>" >)
;; svg id class width height
(svciwh "<svg id=\"" p "\" class=\"" p "\" width=\"" p "\" height=\"" p "\">" n> r q n> "</svg>" >)
;; path
(pat "<path d=\"" r q "\" />")


;; DOCTYPE:
;; doctype
(do "<!DOCTYPE html>")
;; doctype html
(doh "<!DOCTYPE html>" n
         "<html lang=\"en\">" n>
         "<head>" n>
         "<meta charset=\"UTF-8\">" n>
         "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" n>
         "<title>" p "</title>" n>
         "</head>" n>
         "<body>" n n>
         r q n n>
         "</body>" n>
         "</html>" >)
;; doctype stylesheet module
(dosm "<!DOCTYPE html>" n
         "<html lang=\"en\">" n>
         "<head>" n>
         "<meta charset=\"UTF-8\">" n>
         "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" n>
         "<title>" p "</title>" n>
         "<link rel=\"stylesheet\" href=\"" p "\">" n>
         "<script type=\"module\" src=\"" p "\"></script>" n>
         "</head>" n>
         "<body>" n n>
         r q n n>
         "</body>" n>
         "</html>" >)


;; COMMENTS:
;; comment big block
(comb "<!--" n> "|--------------------------------------------------" n>
     "| "
     r q n> "|--------------------------------------------------" n> "-->" >)
;; comment (one line)
(comm "<!-- ======================================================== -->"
    n "<!-- " r q n " -->"
    "<!-- ======================================================== -->")
