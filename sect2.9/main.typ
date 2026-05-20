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
#let range = math.op("Ran")
#let inner(a, b) = $chevron.l #a, #b chevron.r$

= Exercise for Sect. 2.9
#exercise("2.9.1")[
  Let $(X, cal(B), mu, T)$ be a measure-preserving system,
  and ket $r: X -> NN_0$ be a map in $L^1_mu.$
  The suspension defined by $r$ is the system
  $(X^((r)), cal(B)^((r)), mu^((r)), T^((r))),$
  where
  - $X^((r)) = {(x, n): 0 <= n < r(x)};$
  - $cal(B)^((r))$ is the product $sigma$-algebra of $cal(B)$ and the Borel $sigma$-algebra on $NN$
    (which comprise all subsets);
  - $mu^((r))$ is defined by $mu^((r)) (X times N) = 1/(integral r dif mu) mu(A) times abs(N)$
    for $A in cal(B)$ and $N subset.eq NN$;
  and
  - #h(1fr) $ T^((r)) (x, n) = cases(
      (x, n+1) quad &"if" n+1 < r(x),
      (T(x), 0) quad &"if" n+1 = r(x).
    ) $ 
  + Verify that this defines a finite measure-preserving system.
  + Show that the induced map on the set $A = {(x, 0): x in X}$
    is isomorphic to the original system $(X, cal(B), mu, T).$
]
#proof[
]

#pagebreak()
#exercise("2.9.2")[
  An invertible measure-preserving system $(X, cal(B), mu, T)$ is call aperidic
  if $mu({x in X: T^k (x) = x}) = 0$ for all $k in ZZ without {0}.$
  + Show that an ergodic transformation on a non-atomic space is aperiodic.
  + Find an example of an aperiodic transformation on a non-atomic space that is not ergodic.
  + Prove Kautani-Rokhlin lemma for an invertible aperiodic transformation on a non-atomic space.
]
#proof[
]

#pagebreak()
#exercise("2.9.3")[
  Show that for an ergodic measure-preserving sustem $(X, cal(B), mu, T),$
  sequence $a_1, dots, a_n$ of distinct integers,
  and $epsilon > 0$ it is not always possible to find a measurable set $A$
  with the properties that $T^(a_1) (A), dots, T^(a_n) (A)$ are disjoint and $mu(union.big_(i=1)^n T^(a_i) (A)) > epsilon.$
]
#proof[
]

#pagebreak()
#exercise("2.9.4")[
  Let $(X, cal(B), mu, T)$ be an invertible aperiodic measure-preserving system on a non-atomic space.
  Then, for any $epsilon > 0,$ there is a set $A in cal(B)$ with $mu(A) < epsilon$
  with the property that for any finite set $F subset.eq X,$
  there is some $j = j(F)$ with $F subset.eq T^(-j) (A).$
]
#proof[
]
