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

= Exercise for Sect. 2.5
#exercise("2.5.1")[
  Show that a measure-preserving system $(X, cal(B), mu, T)$ is ergodic if and only if,
  for any $f, g in L^2_mu,$
  $ lim_(N -> infinity) 1/N sum_(n=0)^(N-1) inner(U^n_T f, g) = inner(f, 1) dot.c inner(1, g). $
]
#proof[
]

#pagebreak()
#exercise("2.5.2")[
  Let $(X, cal(B), mu, T)$ be a measure-preserving system.
  For any function $f$ in $L^p_mu, 1 <= p < infinity,$ prove that
  $ 1/n sum_(i=0)^(n-1) f(T^n x) attach(-->, b: L^p_mu) f^*, $
  with $f^* in L^p_mu$ a $T$-invariant function.
]
#proof[
]

#pagebreak()
#exercise("2.5.3")[
  Show that a measure-preserving system $(X, cal(B), mu, T)$ is ergodic if and only if
  $A_N (f) -> integral f dif mu$ as $N -> infinity$ for all $f$ in a dense subset of $L^1_mu.$
]
#proof[
]

#pagebreak()
#exercise("2.5.4")[
  Show that
  $ lim_(N-M -> infinity) 1/(N-M) sum_(n=M)^(N-1) U^n_T f -> P_T f.$
]
#proof[
]

#pagebreak()
#exercise("2.5.5")[
  For any set $B$ of positive measure in a measure-preserving system $(X, cal(B), mu, T),$
  $ E = {n in NN: mu(B inter T^(-n) B > 0)} $
  is syndetic:
  that is, there are finitely many integers $k_1, dots, k_s$ with the property that $NN subset union_(i=1)^s E - k_i.$
]
#proof[
]

#pagebreak()
#exercise("2.5.6")[
  Let $(X, cal(B), mu, T)$ be a measure-preserving system.
  We say that $T$ is totally ergodic if $T^n$ is ergodic for all $n >= 1.$
  Given $K >= 1$ define a space $X^((K)) = X times {1, dots, K}$
  with measure $mu^((K)) = mu times nu$ defined on the product $sigma$-algebra $cal(B)^((K)),$
  where $nu(A) = 1/K abs(A)$ is the normalized counting measure defined on any subset $A subset.eq {1, dots, K},$
  and a $mu^((K))$-preserving transformation $T^((K))$ by
  $ T^((K))(x, i) = cases((x, i+1) &quad "if" 1 <= i < K, (T x, 1) &quad "if" i = K) $
  for all $x in X.$
  Show that $T^((K))$ is ergodic with respect to $mu^((K))$ if and only if
  $T$ is ergodic with respect to $mu,$
  and that $T^((K))$ is not totally ergodic if $K > 1.$
]
#proof[
]
