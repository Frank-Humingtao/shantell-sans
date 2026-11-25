#import "math-style.typ": math-style, from-primary, from-extra
#import "glyphs.typ": greek-lower, greek-upper, greek-variants, relation, operators, sets, arrows, compatibility
#import "formulas.typ": algebra, calculus, structures

#let paper = rgb("#faf8f2")
#let ink = rgb("#273530")
#let quiet = rgb("#4f615b")
#let line-color = rgb("#dedfd4")
#let support-color = rgb("#846047")
#let extra-color = rgb("#616d99")

#set page(width: 840pt, height: 620pt, margin: (x: 38pt, y: 26pt), fill: paper)
#set text(font: sys.inputs.at("label-font", default: "Microsoft YaHei"), fill: ink, size: 10pt)
#set par(spacing: 0pt)

#let title(text-body, subtitle, page) = block[
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    text(size: 24pt, weight: "bold", text-body),
    text(size: 10pt, fill: quiet)[Shantell Sans · 审阅稿 #page / 05],
  )
  #v(7pt)
  #text(fill: quiet, size: 11pt, subtitle)
  #v(14pt)
  #line(length: 100%, stroke: 0.8pt + line-color)
]

#let marker(color) = box(circle(radius: 2.2pt, fill: color), baseline: 20%)

#let legend = [#marker(quiet) #text(fill: quiet)[主字体 Shantell Sans] #h(15pt) #marker(support-color) #text(fill: quiet)[补用 Comic Math Relief] #h(15pt) #marker(extra-color) #text(fill: quiet)[额外补用 New Computer Modern Math]]

#let glyph-source(character) = if from-primary(character) {
  quiet
} else if from-extra(character) {
  extra-color
} else {
  support-color
}

#let glyph-cell(id, character, value) = stack(
  dir: ttb,
  box(width: 100%, height: 37pt, align(center + horizon, math-style(value, size: 29pt))),
  2pt,
  align(center, [#marker(glyph-source(character)) #h(2pt) #text(size: 8.5pt, fill: quiet, id)]),
)

#let glyph-group(label, entries) = block[
  #text(weight: "bold", size: 11pt, label)
  #v(5pt)
  #grid(
    columns: (1fr,) * 12,
    rows: (52pt,),
    inset: 0pt,
    stroke: (bottom: 0.45pt + line-color),
    ..entries.map(entry => glyph-cell(..entry)),
  )
  #v(11pt)
]

#let glyph-page(heading, subtitle, number, groups) = {
  title(heading, subtitle, number)
  v(10pt)
  legend
  v(13pt)
  for (label, entries) in groups { glyph-group(label, entries) }
}

#let comparison(label, value) = stack(
  6pt,
  align(center, text(size: 9pt, fill: quiet, label)),
  6pt,
  align(center, math-style(value, size: 27pt)),
)

#let formula-cell(id, label, value) = block(width: 100%, height: 122pt, inset: (top: 7pt, x: 5pt))[
  #text(size: 10pt, fill: quiet, weight: "bold")[#id #h(5pt) #label]
  #place(top + left, dy: 21pt, box(width: 100%, height: 86pt, align(center + horizon, math-style(value, size: 23.5pt))))
]

#let formula-page(heading, subtitle, number, examples) = {
  title(heading, subtitle, number)
  v(8pt)
  grid(
    columns: (1fr, 1fr),
    rows: (122pt,),
    column-gutter: 17pt,
    stroke: (bottom: 0.55pt + line-color),
    ..examples.map(entry => formula-cell(..entry)),
  )
}

#glyph-page("希腊字母", "24 个小写、24 个大写和 7 个常用变体。可直接用编号标注字形。", "01", (
  ("小写", greek-lower), ("大写", greek-upper), ("变体", greek-variants),
))
#text(weight: "bold", size: 11pt)[易混字形对照]
#grid(columns: (1fr,) * 6,
  comparison("G08 / G50", $upright(theta quad ϑ)$),
  comparison("G21 / G55", $upright(φ quad ϕ)$),
  comparison("G05 / G49", $upright(ε quad ϵ)$),
  comparison("G13 / v", $upright(nu quad v)$),
  comparison("G17 / p", $upright(rho quad p)$),
  comparison("G39 / 0", $upright(Ο quad 0)$),
)
#pagebreak()
#glyph-page("常见数学符号", "比较笔画粗细、端点、倾斜和符号之间的风格。", "02", (
  ("关系", relation), ("运算", operators), ("集合与数集", sets), ("箭头、逻辑与梯度", arrows), ("补充兼容", compatibility),
))
#text(size: 10pt, fill: quiet)[S11 是几何垂直符号（U+27C2）。常被写成相近的 S49（U+22A5），后者需要额外补字。]
#pagebreak()
#formula-page("代数与函数", "重点看根号是否接稳、分数线与括号的间距，以及单独的字母放进公式后是否协调。", "03", algebra)
#pagebreak()
#formula-page("微积分与级数", "重点看高符号的比例、上下限的位置，以及小号数字和希腊字母的清晰度。", "04", calculus)
#pagebreak()
#formula-page("矩阵、向量与多行", "重点看括号能否罩住内容、行间距是否舒服，以及向量和重音的位置。", "05", structures)
