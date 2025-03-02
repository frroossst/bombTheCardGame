-module(lustre@element@svg).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([animate/1, animate_motion/1, animate_transform/1, mpath/1, set/1, circle/1, ellipse/1, line/1, polygon/1, polyline/1, rect/1, a/2, defs/2, g/2, marker/2, mask/2, missing_glyph/2, pattern/2, svg/2, switch/2, symbol/2, desc/2, metadata/2, title/2, fe_blend/1, fe_color_matrix/1, fe_component_transfer/1, fe_composite/1, fe_convolve_matrix/1, fe_diffuse_lighting/2, fe_displacement_map/1, fe_drop_shadow/1, fe_flood/1, fe_func_a/1, fe_func_b/1, fe_func_g/1, fe_func_r/1, fe_gaussian_blur/1, fe_image/1, fe_merge/2, fe_merge_node/1, fe_morphology/1, fe_offset/1, fe_specular_lighting/2, fe_tile/2, fe_turbulence/1, linear_gradient/2, radial_gradient/2, stop/1, image/1, path/1, text/2, use_/1, fe_distant_light/1, fe_point_light/1, fe_spot_light/1, clip_path/2, script/2, style/2, foreign_object/2, text_path/2, tspan/2]).

-if(?OTP_RELEASE >= 27).
-define(MODULEDOC(Str), -moduledoc(Str)).
-define(DOC(Str), -doc(Str)).
-else.
-define(MODULEDOC(Str), -compile([])).
-define(DOC(Str), -compile([])).
-endif.

-file("src/lustre/element/svg.gleam", 19).
?DOC("\n").
-spec animate(list(lustre@internals@vdom:attribute(LVZ))) -> lustre@internals@vdom:element(LVZ).
animate(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animate"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 24).
?DOC("\n").
-spec animate_motion(list(lustre@internals@vdom:attribute(LWD))) -> lustre@internals@vdom:element(LWD).
animate_motion(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animateMotion"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 29).
?DOC("\n").
-spec animate_transform(list(lustre@internals@vdom:attribute(LWH))) -> lustre@internals@vdom:element(LWH).
animate_transform(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animateTransform"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 34).
?DOC("\n").
-spec mpath(list(lustre@internals@vdom:attribute(LWL))) -> lustre@internals@vdom:element(LWL).
mpath(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"mpath"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 39).
?DOC("\n").
-spec set(list(lustre@internals@vdom:attribute(LWP))) -> lustre@internals@vdom:element(LWP).
set(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"set"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 46).
?DOC("\n").
-spec circle(list(lustre@internals@vdom:attribute(LWT))) -> lustre@internals@vdom:element(LWT).
circle(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"circle"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 51).
?DOC("\n").
-spec ellipse(list(lustre@internals@vdom:attribute(LWX))) -> lustre@internals@vdom:element(LWX).
ellipse(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"ellipse"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 56).
?DOC("\n").
-spec line(list(lustre@internals@vdom:attribute(LXB))) -> lustre@internals@vdom:element(LXB).
line(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"line"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 61).
?DOC("\n").
-spec polygon(list(lustre@internals@vdom:attribute(LXF))) -> lustre@internals@vdom:element(LXF).
polygon(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"polygon"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 66).
?DOC("\n").
-spec polyline(list(lustre@internals@vdom:attribute(LXJ))) -> lustre@internals@vdom:element(LXJ).
polyline(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"polyline"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 71).
?DOC("\n").
-spec rect(list(lustre@internals@vdom:attribute(LXN))) -> lustre@internals@vdom:element(LXN).
rect(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"rect"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 78).
?DOC("\n").
-spec a(
    list(lustre@internals@vdom:attribute(LXR)),
    list(lustre@internals@vdom:element(LXR))
) -> lustre@internals@vdom:element(LXR).
a(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"a"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 86).
?DOC("\n").
-spec defs(
    list(lustre@internals@vdom:attribute(LXX)),
    list(lustre@internals@vdom:element(LXX))
) -> lustre@internals@vdom:element(LXX).
defs(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"defs"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 94).
?DOC("\n").
-spec g(
    list(lustre@internals@vdom:attribute(LYD)),
    list(lustre@internals@vdom:element(LYD))
) -> lustre@internals@vdom:element(LYD).
g(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"g"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 102).
?DOC("\n").
-spec marker(
    list(lustre@internals@vdom:attribute(LYJ)),
    list(lustre@internals@vdom:element(LYJ))
) -> lustre@internals@vdom:element(LYJ).
marker(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"marker"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 110).
?DOC("\n").
-spec mask(
    list(lustre@internals@vdom:attribute(LYP)),
    list(lustre@internals@vdom:element(LYP))
) -> lustre@internals@vdom:element(LYP).
mask(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"mask"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 118).
?DOC("\n").
-spec missing_glyph(
    list(lustre@internals@vdom:attribute(LYV)),
    list(lustre@internals@vdom:element(LYV))
) -> lustre@internals@vdom:element(LYV).
missing_glyph(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"missing-glyph"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 126).
?DOC("\n").
-spec pattern(
    list(lustre@internals@vdom:attribute(LZB)),
    list(lustre@internals@vdom:element(LZB))
) -> lustre@internals@vdom:element(LZB).
pattern(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"pattern"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 134).
?DOC("\n").
-spec svg(
    list(lustre@internals@vdom:attribute(LZH)),
    list(lustre@internals@vdom:element(LZH))
) -> lustre@internals@vdom:element(LZH).
svg(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"svg"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 142).
?DOC("\n").
-spec switch(
    list(lustre@internals@vdom:attribute(LZN)),
    list(lustre@internals@vdom:element(LZN))
) -> lustre@internals@vdom:element(LZN).
switch(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"switch"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 150).
?DOC("\n").
-spec symbol(
    list(lustre@internals@vdom:attribute(LZT)),
    list(lustre@internals@vdom:element(LZT))
) -> lustre@internals@vdom:element(LZT).
symbol(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"symbol"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 160).
?DOC("\n").
-spec desc(
    list(lustre@internals@vdom:attribute(LZZ)),
    list(lustre@internals@vdom:element(LZZ))
) -> lustre@internals@vdom:element(LZZ).
desc(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"desc"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 168).
?DOC("\n").
-spec metadata(
    list(lustre@internals@vdom:attribute(MAF)),
    list(lustre@internals@vdom:element(MAF))
) -> lustre@internals@vdom:element(MAF).
metadata(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"metadata"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 176).
?DOC("\n").
-spec title(
    list(lustre@internals@vdom:attribute(MAL)),
    list(lustre@internals@vdom:element(MAL))
) -> lustre@internals@vdom:element(MAL).
title(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"title"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 186).
?DOC("\n").
-spec fe_blend(list(lustre@internals@vdom:attribute(MAR))) -> lustre@internals@vdom:element(MAR).
fe_blend(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feBlend"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 191).
?DOC("\n").
-spec fe_color_matrix(list(lustre@internals@vdom:attribute(MAV))) -> lustre@internals@vdom:element(MAV).
fe_color_matrix(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feColorMatrix"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 196).
?DOC("\n").
-spec fe_component_transfer(list(lustre@internals@vdom:attribute(MAZ))) -> lustre@internals@vdom:element(MAZ).
fe_component_transfer(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feComponentTransfer"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 201).
?DOC("\n").
-spec fe_composite(list(lustre@internals@vdom:attribute(MBD))) -> lustre@internals@vdom:element(MBD).
fe_composite(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feComposite"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 206).
?DOC("\n").
-spec fe_convolve_matrix(list(lustre@internals@vdom:attribute(MBH))) -> lustre@internals@vdom:element(MBH).
fe_convolve_matrix(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feConvolveMatrix"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 211).
?DOC("\n").
-spec fe_diffuse_lighting(
    list(lustre@internals@vdom:attribute(MBL)),
    list(lustre@internals@vdom:element(MBL))
) -> lustre@internals@vdom:element(MBL).
fe_diffuse_lighting(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDiffuseLighting"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 219).
?DOC("\n").
-spec fe_displacement_map(list(lustre@internals@vdom:attribute(MBR))) -> lustre@internals@vdom:element(MBR).
fe_displacement_map(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDisplacementMap"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 224).
?DOC("\n").
-spec fe_drop_shadow(list(lustre@internals@vdom:attribute(MBV))) -> lustre@internals@vdom:element(MBV).
fe_drop_shadow(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDropShadow"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 229).
?DOC("\n").
-spec fe_flood(list(lustre@internals@vdom:attribute(MBZ))) -> lustre@internals@vdom:element(MBZ).
fe_flood(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFlood"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 234).
?DOC("\n").
-spec fe_func_a(list(lustre@internals@vdom:attribute(MCD))) -> lustre@internals@vdom:element(MCD).
fe_func_a(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncA"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 239).
?DOC("\n").
-spec fe_func_b(list(lustre@internals@vdom:attribute(MCH))) -> lustre@internals@vdom:element(MCH).
fe_func_b(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncB"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 244).
?DOC("\n").
-spec fe_func_g(list(lustre@internals@vdom:attribute(MCL))) -> lustre@internals@vdom:element(MCL).
fe_func_g(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncG"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 249).
?DOC("\n").
-spec fe_func_r(list(lustre@internals@vdom:attribute(MCP))) -> lustre@internals@vdom:element(MCP).
fe_func_r(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncR"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 254).
?DOC("\n").
-spec fe_gaussian_blur(list(lustre@internals@vdom:attribute(MCT))) -> lustre@internals@vdom:element(MCT).
fe_gaussian_blur(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feGaussianBlur"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 259).
?DOC("\n").
-spec fe_image(list(lustre@internals@vdom:attribute(MCX))) -> lustre@internals@vdom:element(MCX).
fe_image(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feImage"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 264).
?DOC("\n").
-spec fe_merge(
    list(lustre@internals@vdom:attribute(MDB)),
    list(lustre@internals@vdom:element(MDB))
) -> lustre@internals@vdom:element(MDB).
fe_merge(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMerge"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 272).
?DOC("\n").
-spec fe_merge_node(list(lustre@internals@vdom:attribute(MDH))) -> lustre@internals@vdom:element(MDH).
fe_merge_node(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMergeNode"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 277).
?DOC("\n").
-spec fe_morphology(list(lustre@internals@vdom:attribute(MDL))) -> lustre@internals@vdom:element(MDL).
fe_morphology(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMorphology"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 282).
?DOC("\n").
-spec fe_offset(list(lustre@internals@vdom:attribute(MDP))) -> lustre@internals@vdom:element(MDP).
fe_offset(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feOffset"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 287).
?DOC("\n").
-spec fe_specular_lighting(
    list(lustre@internals@vdom:attribute(MDT)),
    list(lustre@internals@vdom:element(MDT))
) -> lustre@internals@vdom:element(MDT).
fe_specular_lighting(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feSpecularLighting"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 295).
?DOC("\n").
-spec fe_tile(
    list(lustre@internals@vdom:attribute(MDZ)),
    list(lustre@internals@vdom:element(MDZ))
) -> lustre@internals@vdom:element(MDZ).
fe_tile(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feTile"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 303).
?DOC("\n").
-spec fe_turbulence(list(lustre@internals@vdom:attribute(MEF))) -> lustre@internals@vdom:element(MEF).
fe_turbulence(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feTurbulence"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 310).
?DOC("\n").
-spec linear_gradient(
    list(lustre@internals@vdom:attribute(MEJ)),
    list(lustre@internals@vdom:element(MEJ))
) -> lustre@internals@vdom:element(MEJ).
linear_gradient(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"linearGradient"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 318).
?DOC("\n").
-spec radial_gradient(
    list(lustre@internals@vdom:attribute(MEP)),
    list(lustre@internals@vdom:element(MEP))
) -> lustre@internals@vdom:element(MEP).
radial_gradient(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"radialGradient"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 326).
?DOC("\n").
-spec stop(list(lustre@internals@vdom:attribute(MEV))) -> lustre@internals@vdom:element(MEV).
stop(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"stop"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 333).
?DOC("\n").
-spec image(list(lustre@internals@vdom:attribute(MEZ))) -> lustre@internals@vdom:element(MEZ).
image(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"image"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 338).
?DOC("\n").
-spec path(list(lustre@internals@vdom:attribute(MFD))) -> lustre@internals@vdom:element(MFD).
path(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"path"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 343).
?DOC("\n").
-spec text(list(lustre@internals@vdom:attribute(MFH)), binary()) -> lustre@internals@vdom:element(MFH).
text(Attrs, Content) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"text"/utf8>>,
        Attrs,
        [lustre@element:text(Content)]
    ).

-file("src/lustre/element/svg.gleam", 348).
?DOC("\n").
-spec use_(list(lustre@internals@vdom:attribute(MFL))) -> lustre@internals@vdom:element(MFL).
use_(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"use"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 355).
?DOC("\n").
-spec fe_distant_light(list(lustre@internals@vdom:attribute(MFP))) -> lustre@internals@vdom:element(MFP).
fe_distant_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDistantLight"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 360).
?DOC("\n").
-spec fe_point_light(list(lustre@internals@vdom:attribute(MFT))) -> lustre@internals@vdom:element(MFT).
fe_point_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"fePointLight"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 365).
?DOC("\n").
-spec fe_spot_light(list(lustre@internals@vdom:attribute(MFX))) -> lustre@internals@vdom:element(MFX).
fe_spot_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feSpotLight"/utf8>>,
        Attrs,
        []
    ).

-file("src/lustre/element/svg.gleam", 372).
?DOC("\n").
-spec clip_path(
    list(lustre@internals@vdom:attribute(MGB)),
    list(lustre@internals@vdom:element(MGB))
) -> lustre@internals@vdom:element(MGB).
clip_path(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"clipPath"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 380).
?DOC("\n").
-spec script(list(lustre@internals@vdom:attribute(MGH)), binary()) -> lustre@internals@vdom:element(MGH).
script(Attrs, Js) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"script"/utf8>>,
        Attrs,
        [lustre@element:text(Js)]
    ).

-file("src/lustre/element/svg.gleam", 385).
?DOC("\n").
-spec style(list(lustre@internals@vdom:attribute(MGL)), binary()) -> lustre@internals@vdom:element(MGL).
style(Attrs, Css) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"style"/utf8>>,
        Attrs,
        [lustre@element:text(Css)]
    ).

-file("src/lustre/element/svg.gleam", 392).
?DOC("\n").
-spec foreign_object(
    list(lustre@internals@vdom:attribute(MGP)),
    list(lustre@internals@vdom:element(MGP))
) -> lustre@internals@vdom:element(MGP).
foreign_object(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"foreignObject"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 400).
?DOC("\n").
-spec text_path(
    list(lustre@internals@vdom:attribute(MGV)),
    list(lustre@internals@vdom:element(MGV))
) -> lustre@internals@vdom:element(MGV).
text_path(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"textPath"/utf8>>,
        Attrs,
        Children
    ).

-file("src/lustre/element/svg.gleam", 408).
?DOC("\n").
-spec tspan(
    list(lustre@internals@vdom:attribute(MHB)),
    list(lustre@internals@vdom:element(MHB))
) -> lustre@internals@vdom:element(MHB).
tspan(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"tspan"/utf8>>,
        Attrs,
        Children
    ).
