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
  Suppose that $alpha$ is irrational and $A$ are measurable $R_alpha$-invarant set that $m_TT (A) in (0, 1).$
  Then, let $B = TT without A,$ $B$ is $R$-invariant and $m_TT (B) in (0, 1).$

  By the Lebesgue's density theorem, almost every points in $A$ and $B$ is the density point of $A$ or $B.$ 
  For a density point $x in A, y in B$ and any constant $c in (0, 1),$ there is an $epsilon > 0$ such that
  $ m_TT (D(x, epsilon) inter A) &> 2c epsilon\
  "and" m_TT (D(y, epsilon) inter B) &> 2c epsilon. $ 
  Since $A$ is $R_alpha$-invariant and Lebesgue measure is translation invariant,
  $ m_TT (D(R_alpha^n x, epsilon) inter A) = m_TT (D(x, epsilon) inter A) > 2c epsilon. $
  Thus, the points on the orbit of $x$ are density point of $A.$

  Using the fact that $alpha$ is irrational implies the orbit of any point is dense on $TT.$
  Then, for the $epsilon$, there is an $n in NN$ such that $abs(R_alpha^n x - y) < 1/2 epsilon.$  
  To simplify the symbols, we rename $R_alpha^n x$ as $x$ and thus $m_TT (D(x, epsilon) union D(y, epsilon)) < 5/2 epsilon.$

  By the assumption,
  $ m_TT ((D(x, epsilon) inter A) union (D(y, epsilon) inter B)) &= m_TT (D(x, epsilon) inter A) + m_TT (D(y, epsilon) inter B)\
  &> 2c epsilon + 2c epsilon = 4c epsilon. $
  Since the constant $c in (0, 1)$ is arbitrary, take any $c > 5/8$ and get a contradiction by
  $ 4c epsilon < m_TT ((D(x, epsilon) inter A) union (D(y, epsilon) inter B)) <= m_TT (D(x, epsilon) union D(y, epsilon)) < 5/2 epsilon. $

  Therefore, any $R_alpha$-invariant can only have measure zero or one if $alpha$ is irrational,
  and the other side is trivial.
]

#pagebreak()
#exercise("2.4.2")[
  Prove that an ergodic toral automorphism is not measurably isomorphic an ergodic circle rotation.
]
#proof[
  Suppose both are the map from $TT^d -> TT^d.$
  Suppose $T$ is an ergodic (hyperbolic) toral automorphism with the form $T(x) = A x mod 1,$
  where $A$ is an integer matrix with $det(A) eq.not 0$ and the eigenvalues of $A$ are not on the unit circle.
  
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
