#import "@preview/thmbox:0.3.0": * 
#show: thmbox-init()

#set text(font: ("Fira Sans", "Noto Sans TC"), size: 12pt)
#show math.equation: set text(font: "Fira math")
#set par(leading: 1.5em, spacing: 1.5em, first-line-indent: 2em)
#set heading(numbering: none)
#show link: set text(fill: blue)
#let exercise = note.with(
  variant: "Exercise",
  color: orange,
)
#let supp = math.op("supp")
#let closure = math.op("cl")

#align(center+horizon)[
  *Exercises of Ergodic Theory*\
  Last update in #datetime.today().display() by Qi-Xiang Huang.
]
#pagebreak()
= Exercise for Sect. 2.4
#exercise("2.4.1")[
  Give a different proof that the circle rotation $R_alpha: TT -> TT$ is ergodic if $alpha$ is irraional,
  using Lebesgue's density theorem as follows.
  Suppose if possible that $A$ and $B$ are measurable invariant sets with $0 < m_TT (A), m_TT (B) < 1$ and $A inter B = emptyset,$
  and use the fact that the orbit of a point of density for $A$ is dense to show that $A inter B$ must be non-empty.
]
#proof[
]

#pagebreak()
#exercise("2.4.2")[
  Prove that an ergodic toral automorphism is not measurably isomorphic an ergodic circle rotation.
]
#proof[
]

#pagebreak()
#exercise("2.4.3")[
  If $X$ is a compact abelian group, prove that the group rotation $R_g (x) = g x$ is ergodic respect to Haar measure
  if and only if the subgroup ${g^n: n in ZZ}$ generate by $g$ is dense in $X.$ 
]
#proof[
]

#pagebreak()
#theorem("2.19")[
  Let $T: X -> X$ be a continuous surjective homomorphism of a compact abelian group $X.$
  Then $T$ is ergodic with respect the Haar measure $m_X$ if and only if the identity $chi(T^n x) = chi(x)$ for some $n > 0$
  and character $chi in hat(X)$ implies that $chi$ is the trivial character with $chi(x) = 1$ for all $x in X.$
]
#corollary("2.20")[
  Let $A in "Mat"_(d d)(ZZ)$ be an integer matrix with $det(A) eq.not 0.$
  Then $A$ indices a surjective endomorphism $T_A$ of $TT^d = RR^d\/ZZ^d$ which preserves the Lebesgue measure $m_(TT^d).$
  The transformation $T_A$ is ergodic if and only if no eigenvalue of $A$ is a root of unity.
]

#exercise("2.4.4")[
  Prove that $A$ is injective if and only if $abs(det(A)) = 1,$
  and general that $A: TT^d -> TT^d$ is $abs(det(A))$-to-one if $det(A) eq.not 0.$

  And prove corollary 2.20 using theorem 2.19 and the explicit description of characters on the torus.
]
#proof[
]
