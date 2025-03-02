-module(lustre@element@html).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([html/2, text/1, base/1, head/2, link/1, meta/1, style/2, title/2, body/2, address/2, article/2, aside/2, footer/2, header/2, h1/2, h2/2, h3/2, h4/2, h5/2, h6/2, hgroup/2, main/2, nav/2, section/2, search/2, blockquote/2, dd/2, 'div'/2, dl/2, dt/2, figcaption/2, figure/2, hr/1, li/2, menu/2, ol/2, p/2, pre/2, ul/2, a/2, abbr/2, b/2, bdi/2, bdo/2, br/1, cite/2, code/2, data/2, dfn/2, em/2, i/2, kbd/2, mark/2, q/2, rp/2, rt/2, ruby/2, s/2, samp/2, small/2, span/2, strong/2, sub/2, sup/2, time/2, u/2, var/2, wbr/1, area/1, audio/2, img/1, map/2, track/1, video/2, embed/1, iframe/1, object/1, picture/2, portal/1, source/1, svg/2, math/2, canvas/1, noscript/2, script/2, del/2, ins/2, caption/2, col/1, colgroup/2, table/2, tbody/2, td/2, tfoot/2, th/2, thead/2, tr/2, button/2, datalist/2, fieldset/2, form/2, input/1, label/2, legend/2, meter/2, optgroup/2, option/2, output/2, progress/2, select/2, textarea/2, details/2, dialog/2, summary/2, slot/1, template/2]).

-if(?OTP_RELEASE >= 27).
-define(MODULEDOC(Str), -moduledoc(Str)).
-define(DOC(Str), -doc(Str)).
-else.
-define(MODULEDOC(Str), -compile([])).
-define(DOC(Str), -compile([])).
-endif.

-file("src/lustre/element/html.gleam", 9).
?DOC("\n").
-spec html(
    list(lustre@internals@vdom:attribute(KQG)),
    list(lustre@internals@vdom:element(KQG))
) -> lustre@internals@vdom:element(KQG).
html(Attrs, Children) ->
    lustre@element:element(<<"html"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 16).
-spec text(binary()) -> lustre@internals@vdom:element(any()).
text(Content) ->
    lustre@element:text(Content).

-file("src/lustre/element/html.gleam", 23).
?DOC("\n").
-spec base(list(lustre@internals@vdom:attribute(KQO))) -> lustre@internals@vdom:element(KQO).
base(Attrs) ->
    lustre@element:element(<<"base"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 28).
?DOC("\n").
-spec head(
    list(lustre@internals@vdom:attribute(KQS)),
    list(lustre@internals@vdom:element(KQS))
) -> lustre@internals@vdom:element(KQS).
head(Attrs, Children) ->
    lustre@element:element(<<"head"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 36).
?DOC("\n").
-spec link(list(lustre@internals@vdom:attribute(KQY))) -> lustre@internals@vdom:element(KQY).
link(Attrs) ->
    lustre@element:element(<<"link"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 41).
?DOC("\n").
-spec meta(list(lustre@internals@vdom:attribute(KRC))) -> lustre@internals@vdom:element(KRC).
meta(Attrs) ->
    lustre@element:element(<<"meta"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 46).
?DOC("\n").
-spec style(list(lustre@internals@vdom:attribute(KRG)), binary()) -> lustre@internals@vdom:element(KRG).
style(Attrs, Css) ->
    lustre@element:element(<<"style"/utf8>>, Attrs, [text(Css)]).

-file("src/lustre/element/html.gleam", 51).
?DOC("\n").
-spec title(list(lustre@internals@vdom:attribute(KRK)), binary()) -> lustre@internals@vdom:element(KRK).
title(Attrs, Content) ->
    lustre@element:element(<<"title"/utf8>>, Attrs, [text(Content)]).

-file("src/lustre/element/html.gleam", 58).
?DOC("\n").
-spec body(
    list(lustre@internals@vdom:attribute(KRO)),
    list(lustre@internals@vdom:element(KRO))
) -> lustre@internals@vdom:element(KRO).
body(Attrs, Children) ->
    lustre@element:element(<<"body"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 68).
?DOC("\n").
-spec address(
    list(lustre@internals@vdom:attribute(KRU)),
    list(lustre@internals@vdom:element(KRU))
) -> lustre@internals@vdom:element(KRU).
address(Attrs, Children) ->
    lustre@element:element(<<"address"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 76).
?DOC("\n").
-spec article(
    list(lustre@internals@vdom:attribute(KSA)),
    list(lustre@internals@vdom:element(KSA))
) -> lustre@internals@vdom:element(KSA).
article(Attrs, Children) ->
    lustre@element:element(<<"article"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 84).
?DOC("\n").
-spec aside(
    list(lustre@internals@vdom:attribute(KSG)),
    list(lustre@internals@vdom:element(KSG))
) -> lustre@internals@vdom:element(KSG).
aside(Attrs, Children) ->
    lustre@element:element(<<"aside"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 92).
?DOC("\n").
-spec footer(
    list(lustre@internals@vdom:attribute(KSM)),
    list(lustre@internals@vdom:element(KSM))
) -> lustre@internals@vdom:element(KSM).
footer(Attrs, Children) ->
    lustre@element:element(<<"footer"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 100).
?DOC("\n").
-spec header(
    list(lustre@internals@vdom:attribute(KSS)),
    list(lustre@internals@vdom:element(KSS))
) -> lustre@internals@vdom:element(KSS).
header(Attrs, Children) ->
    lustre@element:element(<<"header"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 108).
?DOC("\n").
-spec h1(
    list(lustre@internals@vdom:attribute(KSY)),
    list(lustre@internals@vdom:element(KSY))
) -> lustre@internals@vdom:element(KSY).
h1(Attrs, Children) ->
    lustre@element:element(<<"h1"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 116).
?DOC("\n").
-spec h2(
    list(lustre@internals@vdom:attribute(KTE)),
    list(lustre@internals@vdom:element(KTE))
) -> lustre@internals@vdom:element(KTE).
h2(Attrs, Children) ->
    lustre@element:element(<<"h2"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 124).
?DOC("\n").
-spec h3(
    list(lustre@internals@vdom:attribute(KTK)),
    list(lustre@internals@vdom:element(KTK))
) -> lustre@internals@vdom:element(KTK).
h3(Attrs, Children) ->
    lustre@element:element(<<"h3"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 132).
?DOC("\n").
-spec h4(
    list(lustre@internals@vdom:attribute(KTQ)),
    list(lustre@internals@vdom:element(KTQ))
) -> lustre@internals@vdom:element(KTQ).
h4(Attrs, Children) ->
    lustre@element:element(<<"h4"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 140).
?DOC("\n").
-spec h5(
    list(lustre@internals@vdom:attribute(KTW)),
    list(lustre@internals@vdom:element(KTW))
) -> lustre@internals@vdom:element(KTW).
h5(Attrs, Children) ->
    lustre@element:element(<<"h5"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 148).
?DOC("\n").
-spec h6(
    list(lustre@internals@vdom:attribute(KUC)),
    list(lustre@internals@vdom:element(KUC))
) -> lustre@internals@vdom:element(KUC).
h6(Attrs, Children) ->
    lustre@element:element(<<"h6"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 156).
?DOC("\n").
-spec hgroup(
    list(lustre@internals@vdom:attribute(KUI)),
    list(lustre@internals@vdom:element(KUI))
) -> lustre@internals@vdom:element(KUI).
hgroup(Attrs, Children) ->
    lustre@element:element(<<"hgroup"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 164).
?DOC("\n").
-spec main(
    list(lustre@internals@vdom:attribute(KUO)),
    list(lustre@internals@vdom:element(KUO))
) -> lustre@internals@vdom:element(KUO).
main(Attrs, Children) ->
    lustre@element:element(<<"main"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 172).
?DOC("\n").
-spec nav(
    list(lustre@internals@vdom:attribute(KUU)),
    list(lustre@internals@vdom:element(KUU))
) -> lustre@internals@vdom:element(KUU).
nav(Attrs, Children) ->
    lustre@element:element(<<"nav"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 180).
?DOC("\n").
-spec section(
    list(lustre@internals@vdom:attribute(KVA)),
    list(lustre@internals@vdom:element(KVA))
) -> lustre@internals@vdom:element(KVA).
section(Attrs, Children) ->
    lustre@element:element(<<"section"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 188).
?DOC("\n").
-spec search(
    list(lustre@internals@vdom:attribute(KVG)),
    list(lustre@internals@vdom:element(KVG))
) -> lustre@internals@vdom:element(KVG).
search(Attrs, Children) ->
    lustre@element:element(<<"search"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 198).
?DOC("\n").
-spec blockquote(
    list(lustre@internals@vdom:attribute(KVM)),
    list(lustre@internals@vdom:element(KVM))
) -> lustre@internals@vdom:element(KVM).
blockquote(Attrs, Children) ->
    lustre@element:element(<<"blockquote"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 206).
?DOC("\n").
-spec dd(
    list(lustre@internals@vdom:attribute(KVS)),
    list(lustre@internals@vdom:element(KVS))
) -> lustre@internals@vdom:element(KVS).
dd(Attrs, Children) ->
    lustre@element:element(<<"dd"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 214).
?DOC("\n").
-spec 'div'(
    list(lustre@internals@vdom:attribute(KVY)),
    list(lustre@internals@vdom:element(KVY))
) -> lustre@internals@vdom:element(KVY).
'div'(Attrs, Children) ->
    lustre@element:element(<<"div"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 222).
?DOC("\n").
-spec dl(
    list(lustre@internals@vdom:attribute(KWE)),
    list(lustre@internals@vdom:element(KWE))
) -> lustre@internals@vdom:element(KWE).
dl(Attrs, Children) ->
    lustre@element:element(<<"dl"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 230).
?DOC("\n").
-spec dt(
    list(lustre@internals@vdom:attribute(KWK)),
    list(lustre@internals@vdom:element(KWK))
) -> lustre@internals@vdom:element(KWK).
dt(Attrs, Children) ->
    lustre@element:element(<<"dt"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 238).
?DOC("\n").
-spec figcaption(
    list(lustre@internals@vdom:attribute(KWQ)),
    list(lustre@internals@vdom:element(KWQ))
) -> lustre@internals@vdom:element(KWQ).
figcaption(Attrs, Children) ->
    lustre@element:element(<<"figcaption"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 246).
?DOC("\n").
-spec figure(
    list(lustre@internals@vdom:attribute(KWW)),
    list(lustre@internals@vdom:element(KWW))
) -> lustre@internals@vdom:element(KWW).
figure(Attrs, Children) ->
    lustre@element:element(<<"figure"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 254).
?DOC("\n").
-spec hr(list(lustre@internals@vdom:attribute(KXC))) -> lustre@internals@vdom:element(KXC).
hr(Attrs) ->
    lustre@element:element(<<"hr"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 259).
?DOC("\n").
-spec li(
    list(lustre@internals@vdom:attribute(KXG)),
    list(lustre@internals@vdom:element(KXG))
) -> lustre@internals@vdom:element(KXG).
li(Attrs, Children) ->
    lustre@element:element(<<"li"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 267).
?DOC("\n").
-spec menu(
    list(lustre@internals@vdom:attribute(KXM)),
    list(lustre@internals@vdom:element(KXM))
) -> lustre@internals@vdom:element(KXM).
menu(Attrs, Children) ->
    lustre@element:element(<<"menu"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 275).
?DOC("\n").
-spec ol(
    list(lustre@internals@vdom:attribute(KXS)),
    list(lustre@internals@vdom:element(KXS))
) -> lustre@internals@vdom:element(KXS).
ol(Attrs, Children) ->
    lustre@element:element(<<"ol"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 283).
?DOC("\n").
-spec p(
    list(lustre@internals@vdom:attribute(KXY)),
    list(lustre@internals@vdom:element(KXY))
) -> lustre@internals@vdom:element(KXY).
p(Attrs, Children) ->
    lustre@element:element(<<"p"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 291).
?DOC("\n").
-spec pre(
    list(lustre@internals@vdom:attribute(KYE)),
    list(lustre@internals@vdom:element(KYE))
) -> lustre@internals@vdom:element(KYE).
pre(Attrs, Children) ->
    lustre@element:element(<<"pre"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 299).
?DOC("\n").
-spec ul(
    list(lustre@internals@vdom:attribute(KYK)),
    list(lustre@internals@vdom:element(KYK))
) -> lustre@internals@vdom:element(KYK).
ul(Attrs, Children) ->
    lustre@element:element(<<"ul"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 309).
?DOC("\n").
-spec a(
    list(lustre@internals@vdom:attribute(KYQ)),
    list(lustre@internals@vdom:element(KYQ))
) -> lustre@internals@vdom:element(KYQ).
a(Attrs, Children) ->
    lustre@element:element(<<"a"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 317).
?DOC("\n").
-spec abbr(
    list(lustre@internals@vdom:attribute(KYW)),
    list(lustre@internals@vdom:element(KYW))
) -> lustre@internals@vdom:element(KYW).
abbr(Attrs, Children) ->
    lustre@element:element(<<"abbr"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 325).
?DOC("\n").
-spec b(
    list(lustre@internals@vdom:attribute(KZC)),
    list(lustre@internals@vdom:element(KZC))
) -> lustre@internals@vdom:element(KZC).
b(Attrs, Children) ->
    lustre@element:element(<<"b"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 333).
?DOC("\n").
-spec bdi(
    list(lustre@internals@vdom:attribute(KZI)),
    list(lustre@internals@vdom:element(KZI))
) -> lustre@internals@vdom:element(KZI).
bdi(Attrs, Children) ->
    lustre@element:element(<<"bdi"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 341).
?DOC("\n").
-spec bdo(
    list(lustre@internals@vdom:attribute(KZO)),
    list(lustre@internals@vdom:element(KZO))
) -> lustre@internals@vdom:element(KZO).
bdo(Attrs, Children) ->
    lustre@element:element(<<"bdo"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 349).
?DOC("\n").
-spec br(list(lustre@internals@vdom:attribute(KZU))) -> lustre@internals@vdom:element(KZU).
br(Attrs) ->
    lustre@element:element(<<"br"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 354).
?DOC("\n").
-spec cite(
    list(lustre@internals@vdom:attribute(KZY)),
    list(lustre@internals@vdom:element(KZY))
) -> lustre@internals@vdom:element(KZY).
cite(Attrs, Children) ->
    lustre@element:element(<<"cite"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 362).
?DOC("\n").
-spec code(
    list(lustre@internals@vdom:attribute(LAE)),
    list(lustre@internals@vdom:element(LAE))
) -> lustre@internals@vdom:element(LAE).
code(Attrs, Children) ->
    lustre@element:element(<<"code"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 370).
?DOC("\n").
-spec data(
    list(lustre@internals@vdom:attribute(LAK)),
    list(lustre@internals@vdom:element(LAK))
) -> lustre@internals@vdom:element(LAK).
data(Attrs, Children) ->
    lustre@element:element(<<"data"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 378).
?DOC("\n").
-spec dfn(
    list(lustre@internals@vdom:attribute(LAQ)),
    list(lustre@internals@vdom:element(LAQ))
) -> lustre@internals@vdom:element(LAQ).
dfn(Attrs, Children) ->
    lustre@element:element(<<"dfn"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 386).
?DOC("\n").
-spec em(
    list(lustre@internals@vdom:attribute(LAW)),
    list(lustre@internals@vdom:element(LAW))
) -> lustre@internals@vdom:element(LAW).
em(Attrs, Children) ->
    lustre@element:element(<<"em"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 394).
?DOC("\n").
-spec i(
    list(lustre@internals@vdom:attribute(LBC)),
    list(lustre@internals@vdom:element(LBC))
) -> lustre@internals@vdom:element(LBC).
i(Attrs, Children) ->
    lustre@element:element(<<"i"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 402).
?DOC("\n").
-spec kbd(
    list(lustre@internals@vdom:attribute(LBI)),
    list(lustre@internals@vdom:element(LBI))
) -> lustre@internals@vdom:element(LBI).
kbd(Attrs, Children) ->
    lustre@element:element(<<"kbd"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 410).
?DOC("\n").
-spec mark(
    list(lustre@internals@vdom:attribute(LBO)),
    list(lustre@internals@vdom:element(LBO))
) -> lustre@internals@vdom:element(LBO).
mark(Attrs, Children) ->
    lustre@element:element(<<"mark"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 418).
?DOC("\n").
-spec q(
    list(lustre@internals@vdom:attribute(LBU)),
    list(lustre@internals@vdom:element(LBU))
) -> lustre@internals@vdom:element(LBU).
q(Attrs, Children) ->
    lustre@element:element(<<"q"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 426).
?DOC("\n").
-spec rp(
    list(lustre@internals@vdom:attribute(LCA)),
    list(lustre@internals@vdom:element(LCA))
) -> lustre@internals@vdom:element(LCA).
rp(Attrs, Children) ->
    lustre@element:element(<<"rp"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 434).
?DOC("\n").
-spec rt(
    list(lustre@internals@vdom:attribute(LCG)),
    list(lustre@internals@vdom:element(LCG))
) -> lustre@internals@vdom:element(LCG).
rt(Attrs, Children) ->
    lustre@element:element(<<"rt"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 442).
?DOC("\n").
-spec ruby(
    list(lustre@internals@vdom:attribute(LCM)),
    list(lustre@internals@vdom:element(LCM))
) -> lustre@internals@vdom:element(LCM).
ruby(Attrs, Children) ->
    lustre@element:element(<<"ruby"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 450).
?DOC("\n").
-spec s(
    list(lustre@internals@vdom:attribute(LCS)),
    list(lustre@internals@vdom:element(LCS))
) -> lustre@internals@vdom:element(LCS).
s(Attrs, Children) ->
    lustre@element:element(<<"s"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 458).
?DOC("\n").
-spec samp(
    list(lustre@internals@vdom:attribute(LCY)),
    list(lustre@internals@vdom:element(LCY))
) -> lustre@internals@vdom:element(LCY).
samp(Attrs, Children) ->
    lustre@element:element(<<"samp"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 466).
?DOC("\n").
-spec small(
    list(lustre@internals@vdom:attribute(LDE)),
    list(lustre@internals@vdom:element(LDE))
) -> lustre@internals@vdom:element(LDE).
small(Attrs, Children) ->
    lustre@element:element(<<"small"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 474).
?DOC("\n").
-spec span(
    list(lustre@internals@vdom:attribute(LDK)),
    list(lustre@internals@vdom:element(LDK))
) -> lustre@internals@vdom:element(LDK).
span(Attrs, Children) ->
    lustre@element:element(<<"span"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 482).
?DOC("\n").
-spec strong(
    list(lustre@internals@vdom:attribute(LDQ)),
    list(lustre@internals@vdom:element(LDQ))
) -> lustre@internals@vdom:element(LDQ).
strong(Attrs, Children) ->
    lustre@element:element(<<"strong"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 490).
?DOC("\n").
-spec sub(
    list(lustre@internals@vdom:attribute(LDW)),
    list(lustre@internals@vdom:element(LDW))
) -> lustre@internals@vdom:element(LDW).
sub(Attrs, Children) ->
    lustre@element:element(<<"sub"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 498).
?DOC("\n").
-spec sup(
    list(lustre@internals@vdom:attribute(LEC)),
    list(lustre@internals@vdom:element(LEC))
) -> lustre@internals@vdom:element(LEC).
sup(Attrs, Children) ->
    lustre@element:element(<<"sup"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 506).
?DOC("\n").
-spec time(
    list(lustre@internals@vdom:attribute(LEI)),
    list(lustre@internals@vdom:element(LEI))
) -> lustre@internals@vdom:element(LEI).
time(Attrs, Children) ->
    lustre@element:element(<<"time"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 514).
?DOC("\n").
-spec u(
    list(lustre@internals@vdom:attribute(LEO)),
    list(lustre@internals@vdom:element(LEO))
) -> lustre@internals@vdom:element(LEO).
u(Attrs, Children) ->
    lustre@element:element(<<"u"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 522).
?DOC("\n").
-spec var(
    list(lustre@internals@vdom:attribute(LEU)),
    list(lustre@internals@vdom:element(LEU))
) -> lustre@internals@vdom:element(LEU).
var(Attrs, Children) ->
    lustre@element:element(<<"var"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 530).
?DOC("\n").
-spec wbr(list(lustre@internals@vdom:attribute(LFA))) -> lustre@internals@vdom:element(LFA).
wbr(Attrs) ->
    lustre@element:element(<<"wbr"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 537).
?DOC("\n").
-spec area(list(lustre@internals@vdom:attribute(LFE))) -> lustre@internals@vdom:element(LFE).
area(Attrs) ->
    lustre@element:element(<<"area"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 542).
?DOC("\n").
-spec audio(
    list(lustre@internals@vdom:attribute(LFI)),
    list(lustre@internals@vdom:element(LFI))
) -> lustre@internals@vdom:element(LFI).
audio(Attrs, Children) ->
    lustre@element:element(<<"audio"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 550).
?DOC("\n").
-spec img(list(lustre@internals@vdom:attribute(LFO))) -> lustre@internals@vdom:element(LFO).
img(Attrs) ->
    lustre@element:element(<<"img"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 556).
?DOC(" Used with <area> elements to define an image map (a clickable link area).\n").
-spec map(
    list(lustre@internals@vdom:attribute(LFS)),
    list(lustre@internals@vdom:element(LFS))
) -> lustre@internals@vdom:element(LFS).
map(Attrs, Children) ->
    lustre@element:element(<<"map"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 564).
?DOC("\n").
-spec track(list(lustre@internals@vdom:attribute(LFY))) -> lustre@internals@vdom:element(LFY).
track(Attrs) ->
    lustre@element:element(<<"track"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 569).
?DOC("\n").
-spec video(
    list(lustre@internals@vdom:attribute(LGC)),
    list(lustre@internals@vdom:element(LGC))
) -> lustre@internals@vdom:element(LGC).
video(Attrs, Children) ->
    lustre@element:element(<<"video"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 579).
?DOC("\n").
-spec embed(list(lustre@internals@vdom:attribute(LGI))) -> lustre@internals@vdom:element(LGI).
embed(Attrs) ->
    lustre@element:element(<<"embed"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 584).
?DOC("\n").
-spec iframe(list(lustre@internals@vdom:attribute(LGM))) -> lustre@internals@vdom:element(LGM).
iframe(Attrs) ->
    lustre@element:element(<<"iframe"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 589).
?DOC("\n").
-spec object(list(lustre@internals@vdom:attribute(LGQ))) -> lustre@internals@vdom:element(LGQ).
object(Attrs) ->
    lustre@element:element(<<"object"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 594).
?DOC("\n").
-spec picture(
    list(lustre@internals@vdom:attribute(LGU)),
    list(lustre@internals@vdom:element(LGU))
) -> lustre@internals@vdom:element(LGU).
picture(Attrs, Children) ->
    lustre@element:element(<<"picture"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 602).
?DOC("\n").
-spec portal(list(lustre@internals@vdom:attribute(LHA))) -> lustre@internals@vdom:element(LHA).
portal(Attrs) ->
    lustre@element:element(<<"portal"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 607).
?DOC("\n").
-spec source(list(lustre@internals@vdom:attribute(LHE))) -> lustre@internals@vdom:element(LHE).
source(Attrs) ->
    lustre@element:element(<<"source"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 614).
?DOC("\n").
-spec svg(
    list(lustre@internals@vdom:attribute(LHI)),
    list(lustre@internals@vdom:element(LHI))
) -> lustre@internals@vdom:element(LHI).
svg(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"svg"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/html.gleam", 622).
?DOC("\n").
-spec math(
    list(lustre@internals@vdom:attribute(LHO)),
    list(lustre@internals@vdom:element(LHO))
) -> lustre@internals@vdom:element(LHO).
math(Attrs, Children) ->
    lustre@element:element(<<"math"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 632).
?DOC("\n").
-spec canvas(list(lustre@internals@vdom:attribute(LHU))) -> lustre@internals@vdom:element(LHU).
canvas(Attrs) ->
    lustre@element:element(<<"canvas"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 637).
?DOC("\n").
-spec noscript(
    list(lustre@internals@vdom:attribute(LHY)),
    list(lustre@internals@vdom:element(LHY))
) -> lustre@internals@vdom:element(LHY).
noscript(Attrs, Children) ->
    lustre@element:element(<<"noscript"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 645).
?DOC("\n").
-spec script(list(lustre@internals@vdom:attribute(LIE)), binary()) -> lustre@internals@vdom:element(LIE).
script(Attrs, Js) ->
    lustre@element:element(<<"script"/utf8>>, Attrs, [text(Js)]).

-file("src/lustre/element/html.gleam", 652).
?DOC("\n").
-spec del(
    list(lustre@internals@vdom:attribute(LII)),
    list(lustre@internals@vdom:element(LII))
) -> lustre@internals@vdom:element(LII).
del(Attrs, Children) ->
    lustre@element:element(<<"del"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 660).
?DOC("\n").
-spec ins(
    list(lustre@internals@vdom:attribute(LIO)),
    list(lustre@internals@vdom:element(LIO))
) -> lustre@internals@vdom:element(LIO).
ins(Attrs, Children) ->
    lustre@element:element(<<"ins"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 670).
?DOC("\n").
-spec caption(
    list(lustre@internals@vdom:attribute(LIU)),
    list(lustre@internals@vdom:element(LIU))
) -> lustre@internals@vdom:element(LIU).
caption(Attrs, Children) ->
    lustre@element:element(<<"caption"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 678).
?DOC("\n").
-spec col(list(lustre@internals@vdom:attribute(LJA))) -> lustre@internals@vdom:element(LJA).
col(Attrs) ->
    lustre@element:element(<<"col"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 683).
?DOC("\n").
-spec colgroup(
    list(lustre@internals@vdom:attribute(LJE)),
    list(lustre@internals@vdom:element(LJE))
) -> lustre@internals@vdom:element(LJE).
colgroup(Attrs, Children) ->
    lustre@element:element(<<"colgroup"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 691).
?DOC("\n").
-spec table(
    list(lustre@internals@vdom:attribute(LJK)),
    list(lustre@internals@vdom:element(LJK))
) -> lustre@internals@vdom:element(LJK).
table(Attrs, Children) ->
    lustre@element:element(<<"table"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 699).
?DOC("\n").
-spec tbody(
    list(lustre@internals@vdom:attribute(LJQ)),
    list(lustre@internals@vdom:element(LJQ))
) -> lustre@internals@vdom:element(LJQ).
tbody(Attrs, Children) ->
    lustre@element:element(<<"tbody"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 707).
?DOC("\n").
-spec td(
    list(lustre@internals@vdom:attribute(LJW)),
    list(lustre@internals@vdom:element(LJW))
) -> lustre@internals@vdom:element(LJW).
td(Attrs, Children) ->
    lustre@element:element(<<"td"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 715).
?DOC("\n").
-spec tfoot(
    list(lustre@internals@vdom:attribute(LKC)),
    list(lustre@internals@vdom:element(LKC))
) -> lustre@internals@vdom:element(LKC).
tfoot(Attrs, Children) ->
    lustre@element:element(<<"tfoot"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 723).
?DOC("\n").
-spec th(
    list(lustre@internals@vdom:attribute(LKI)),
    list(lustre@internals@vdom:element(LKI))
) -> lustre@internals@vdom:element(LKI).
th(Attrs, Children) ->
    lustre@element:element(<<"th"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 731).
?DOC("\n").
-spec thead(
    list(lustre@internals@vdom:attribute(LKO)),
    list(lustre@internals@vdom:element(LKO))
) -> lustre@internals@vdom:element(LKO).
thead(Attrs, Children) ->
    lustre@element:element(<<"thead"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 739).
?DOC("\n").
-spec tr(
    list(lustre@internals@vdom:attribute(LKU)),
    list(lustre@internals@vdom:element(LKU))
) -> lustre@internals@vdom:element(LKU).
tr(Attrs, Children) ->
    lustre@element:element(<<"tr"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 749).
?DOC("\n").
-spec button(
    list(lustre@internals@vdom:attribute(LLA)),
    list(lustre@internals@vdom:element(LLA))
) -> lustre@internals@vdom:element(LLA).
button(Attrs, Children) ->
    lustre@element:element(<<"button"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 757).
?DOC("\n").
-spec datalist(
    list(lustre@internals@vdom:attribute(LLG)),
    list(lustre@internals@vdom:element(LLG))
) -> lustre@internals@vdom:element(LLG).
datalist(Attrs, Children) ->
    lustre@element:element(<<"datalist"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 765).
?DOC("\n").
-spec fieldset(
    list(lustre@internals@vdom:attribute(LLM)),
    list(lustre@internals@vdom:element(LLM))
) -> lustre@internals@vdom:element(LLM).
fieldset(Attrs, Children) ->
    lustre@element:element(<<"fieldset"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 773).
?DOC("\n").
-spec form(
    list(lustre@internals@vdom:attribute(LLS)),
    list(lustre@internals@vdom:element(LLS))
) -> lustre@internals@vdom:element(LLS).
form(Attrs, Children) ->
    lustre@element:element(<<"form"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 781).
?DOC("\n").
-spec input(list(lustre@internals@vdom:attribute(LLY))) -> lustre@internals@vdom:element(LLY).
input(Attrs) ->
    lustre@element:element(<<"input"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 786).
?DOC("\n").
-spec label(
    list(lustre@internals@vdom:attribute(LMC)),
    list(lustre@internals@vdom:element(LMC))
) -> lustre@internals@vdom:element(LMC).
label(Attrs, Children) ->
    lustre@element:element(<<"label"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 794).
?DOC("\n").
-spec legend(
    list(lustre@internals@vdom:attribute(LMI)),
    list(lustre@internals@vdom:element(LMI))
) -> lustre@internals@vdom:element(LMI).
legend(Attrs, Children) ->
    lustre@element:element(<<"legend"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 802).
?DOC("\n").
-spec meter(
    list(lustre@internals@vdom:attribute(LMO)),
    list(lustre@internals@vdom:element(LMO))
) -> lustre@internals@vdom:element(LMO).
meter(Attrs, Children) ->
    lustre@element:element(<<"meter"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 810).
?DOC("\n").
-spec optgroup(
    list(lustre@internals@vdom:attribute(LMU)),
    list(lustre@internals@vdom:element(LMU))
) -> lustre@internals@vdom:element(LMU).
optgroup(Attrs, Children) ->
    lustre@element:element(<<"optgroup"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 818).
?DOC("\n").
-spec option(list(lustre@internals@vdom:attribute(LNA)), binary()) -> lustre@internals@vdom:element(LNA).
option(Attrs, Label) ->
    lustre@element:element(
        <<"option"/utf8>>,
        Attrs,
        [lustre@element:text(Label)]
    ).

-file("src/lustre/element/html.gleam", 823).
?DOC("\n").
-spec output(
    list(lustre@internals@vdom:attribute(LNE)),
    list(lustre@internals@vdom:element(LNE))
) -> lustre@internals@vdom:element(LNE).
output(Attrs, Children) ->
    lustre@element:element(<<"output"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 831).
?DOC("\n").
-spec progress(
    list(lustre@internals@vdom:attribute(LNK)),
    list(lustre@internals@vdom:element(LNK))
) -> lustre@internals@vdom:element(LNK).
progress(Attrs, Children) ->
    lustre@element:element(<<"progress"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 839).
?DOC("\n").
-spec select(
    list(lustre@internals@vdom:attribute(LNQ)),
    list(lustre@internals@vdom:element(LNQ))
) -> lustre@internals@vdom:element(LNQ).
select(Attrs, Children) ->
    lustre@element:element(<<"select"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 847).
?DOC("\n").
-spec textarea(list(lustre@internals@vdom:attribute(LNW)), binary()) -> lustre@internals@vdom:element(LNW).
textarea(Attrs, Content) ->
    lustre@element:element(
        <<"textarea"/utf8>>,
        Attrs,
        [lustre@element:text(Content)]
    ).

-file("src/lustre/element/html.gleam", 854).
?DOC("\n").
-spec details(
    list(lustre@internals@vdom:attribute(LOA)),
    list(lustre@internals@vdom:element(LOA))
) -> lustre@internals@vdom:element(LOA).
details(Attrs, Children) ->
    lustre@element:element(<<"details"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 862).
?DOC("\n").
-spec dialog(
    list(lustre@internals@vdom:attribute(LOG)),
    list(lustre@internals@vdom:element(LOG))
) -> lustre@internals@vdom:element(LOG).
dialog(Attrs, Children) ->
    lustre@element:element(<<"dialog"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 870).
?DOC("\n").
-spec summary(
    list(lustre@internals@vdom:attribute(LOM)),
    list(lustre@internals@vdom:element(LOM))
) -> lustre@internals@vdom:element(LOM).
summary(Attrs, Children) ->
    lustre@element:element(<<"summary"/utf8>>, Attrs, Children).

-file("src/lustre/element/html.gleam", 880).
?DOC("\n").
-spec slot(list(lustre@internals@vdom:attribute(LOS))) -> lustre@internals@vdom:element(LOS).
slot(Attrs) ->
    lustre@element:element(<<"slot"/utf8>>, Attrs, []).

-file("src/lustre/element/html.gleam", 885).
?DOC("\n").
-spec template(
    list(lustre@internals@vdom:attribute(LOW)),
    list(lustre@internals@vdom:element(LOW))
) -> lustre@internals@vdom:element(LOW).
template(Attrs, Children) ->
    lustre@element:element(<<"template"/utf8>>, Attrs, Children).
