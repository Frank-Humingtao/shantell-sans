#let primary = "Shantell Sans"
#let support = "Comic Math Relief"
#let extra = "New Computer Modern Math"
#let primary-chars = regex("[A-Za-z0-9=±−∞πΩ]")
#let extra-chars = regex("[⊥]")

#let from-primary(character) = character.match(primary-chars) != none
#let from-extra(character) = character.match(extra-chars) != none

#let math-style(body, size: 26pt, weight: 600, informality: 65) = {
  show math.equation: set text(
    font: ((name: primary, covers: primary-chars), support, (name: extra, covers: extra-chars)),
    fallback: false,
    size: size,
    weight: weight,
    variations: (INFM: informality),
  )
  body
}
