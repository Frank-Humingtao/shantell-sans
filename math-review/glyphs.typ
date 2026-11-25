// IDs are stable so that feedback can refer directly to a specimen.
#let greek-lower = (
  ("G01", "α", $upright(alpha)$), ("G02", "β", $upright(beta)$),
  ("G03", "γ", $upright(gamma)$), ("G04", "δ", $upright(delta)$),
  ("G05", "ε", $upright(ε)$), ("G06", "ζ", $upright(zeta)$),
  ("G07", "η", $upright(eta)$), ("G08", "θ", $upright(theta)$),
  ("G09", "ι", $upright(iota)$), ("G10", "κ", $upright(kappa)$),
  ("G11", "λ", $upright(lambda)$), ("G12", "μ", $upright(mu)$),
  ("G13", "ν", $upright(nu)$), ("G14", "ξ", $upright(xi)$),
  ("G15", "ο", $upright(ο)$), ("G16", "π", $upright(pi)$),
  ("G17", "ρ", $upright(rho)$), ("G18", "σ", $upright(sigma)$),
  ("G19", "τ", $upright(tau)$), ("G20", "υ", $upright(upsilon)$),
  ("G21", "φ", $upright(φ)$), ("G22", "χ", $upright(chi)$),
  ("G23", "ψ", $upright(psi)$), ("G24", "ω", $upright(omega)$),
)

#let greek-upper = (
  ("G25", "Α", $upright(Α)$), ("G26", "Β", $upright(Β)$),
  ("G27", "Γ", $upright(Γ)$), ("G28", "Δ", $upright(Δ)$),
  ("G29", "Ε", $upright(Ε)$), ("G30", "Ζ", $upright(Ζ)$),
  ("G31", "Η", $upright(Η)$), ("G32", "Θ", $upright(Θ)$),
  ("G33", "Ι", $upright(Ι)$), ("G34", "Κ", $upright(Κ)$),
  ("G35", "Λ", $upright(Λ)$), ("G36", "Μ", $upright(Μ)$),
  ("G37", "Ν", $upright(Ν)$), ("G38", "Ξ", $upright(Ξ)$),
  ("G39", "Ο", $upright(Ο)$), ("G40", "Π", $upright(Π)$),
  ("G41", "Ρ", $upright(Ρ)$), ("G42", "Σ", $upright(Σ)$),
  ("G43", "Τ", $upright(Τ)$), ("G44", "Υ", $upright(Υ)$),
  ("G45", "Φ", $upright(Φ)$), ("G46", "Χ", $upright(Χ)$),
  ("G47", "Ψ", $upright(Ψ)$), ("G48", "Ω", $upright(Ω)$),
)

#let greek-variants = (
  ("G49", "ϵ", $upright(ϵ)$), ("G50", "ϑ", $upright(ϑ)$),
  ("G51", "ϰ", $upright(ϰ)$), ("G52", "ϖ", $upright(ϖ)$),
  ("G53", "ϱ", $upright(ϱ)$), ("G54", "ς", $upright(ς)$),
  ("G55", "ϕ", $upright(ϕ)$),
)

#let relation = (
  ("S01", "=", $=$), ("S02", "≠", $≠$), ("S03", "≈", $≈$),
  ("S04", "≡", $≡$), ("S05", "≤", $≤$), ("S06", "≥", $≥$),
  ("S07", "≪", $≪$), ("S08", "≫", $≫$), ("S09", "∝", $∝$),
  ("S10", "∼", $∼$), ("S11", "⟂", $⟂$), ("S12", "∥", $∥$),
)

#let operators = (
  ("S13", "±", $±$), ("S14", "−", $−$), ("S15", "×", $×$),
  ("S16", "÷", $÷$), ("S17", "·", $·$), ("S18", "√", $#symbol("√")$),
  ("S19", "∞", $∞$), ("S20", "∫", $∫$), ("S21", "∮", $∮$),
  ("S22", "∑", $∑$), ("S23", "∏", $∏$), ("S24", "∂", $upright(partial)$),
)

#let sets = (
  ("S25", "∈", $∈$), ("S26", "∉", $∉$), ("S27", "⊆", $⊆$),
  ("S28", "⊂", $⊂$), ("S29", "∪", $∪$), ("S30", "∩", $∩$),
  ("S31", "∅", $∅$), ("S32", "ℕ", $ℕ$), ("S33", "ℤ", $ℤ$),
  ("S34", "ℚ", $ℚ$), ("S35", "ℝ", $ℝ$), ("S36", "ℂ", $ℂ$),
)

#let arrows = (
  ("S37", "→", $→$), ("S38", "←", $←$), ("S39", "↔", $↔$),
  ("S40", "⇒", $⇒$), ("S41", "⇔", $⇔$), ("S42", "↦", $↦$),
  ("S43", "∀", $∀$), ("S44", "∃", $∃$), ("S45", "¬", $¬$),
  ("S46", "∧", $∧$), ("S47", "∨", $∨$), ("S48", "∇", $∇$),
)

#let compatibility = (("S49", "⊥", $⊥$),)
