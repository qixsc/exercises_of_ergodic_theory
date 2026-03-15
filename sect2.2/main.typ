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
#align(center+horizon)[
  *Exercises of Ergodic Theory*\
  Last update in #datetime.today().display() by Qi-Xiang Huang.
]
#pagebreak()
= Exercise for Sect. 2.2
#exercise("2.2.1")[
  Prove the following version of Poincare recurrence with a weaker hypothesis
  (finite additivity in place of countable additivity for the measure)
  and with a stronger conclusion (a bound on the return time).
  Let $(X, cal(B), mu, T)$ be a measure-preserving system with
  $mu$ only assumed to be a finitely additive measure,
  and let $A in cal(B)$ have $mu(A) > 0.$
  Show that there is some positive $n <= 1/mu(A)$ for which $mu(A inter T^(-n) A) > 0.$
]
#proof[
  Suppose $n in NN$ such that $mu(A inter T^(-k) (A)) = 0$ for all $k <= n,$
  then $mu(T^(-j) (A) inter T^(-k) (A)) = 0$ for all $j, k <= n$ by measure-preserving of $T.$
  Therefore, $
    mu(X) &>= mu(union.big_(k=0)^n T^(-k) (A)) = sum_(k=1)^n T^(-k) (A) = n dot mu(A).
  $
  The condition of $(X, cal(B), mu)$ is a probability space implies the upper bound of $n$ is $1/mu(A).$
]

#pagebreak()
#exercise("2.2.2")[
  + If $A subset.eq NN$ has positive density, meaning that
    $ d(A) = lim_(k -> infinity) 1/k abs(A inter [1, k]) $
    exists and is positive,
    prove that there is some $n >= 1$ with $overline(d)(A inter (A - n)) > 0$
    (here $A - n = {a - n : a in A}$), where
    $ overline(d)(B) = limsup_(k -> infinity) 1/k abs(B inter [1, k]). $ 
  + Can you prove this starting with ther weaker assumption that the upper density $overline(d)(A)$ is positive,
    and reaching the same conclusion?
]
#proof[
  + First claim that $overline(d)$ is a finite additive measure on $PP(NN)$.  
    - well-defined: for any $B in PP(NN)$, let $d_k = 1/k abs(B inter [1, k]),$ then $overline(d)(B) = limsup d_k$ uniquely exists since $d_k$ is a real sequence.
    - on $[0, 1]$: $overline(d)(emptyset) = limsup 1/k dot.c 0 = 0,$ $d_k in [0, 1]$ for all $k$ implies $overline(d): PP(BB) -> [0, 1].$
    - finite additive: if $A, B$ are disjoint, $abs((A union B) inter [1, k]) = abs(A inter [1, k]) + abs(B inter [1, k])$ for all $k$ implies the finite additivity.
    Then, $(NN, PP(NN), overline(d))$ is a probility space and claim $T(x) = x + 1$ is a measure-preserving map.
    For all $A in PP(NN)$, $
      overline(d)(T^(-1)(A)) &= limsup_(k -> infinity) 1/k abs((A-1) inter [1, k])\
      &<= limsup_(k -> infinity) 1/k (abs(A inter [1, k]) + 1)\
      &<= limsup_(k -> infinity) 1/k abs(A inter [1, k]) + limsup_(k -> infinity) 1/k\
      &= limsup_(k -> infinity) 1/k abs(A inter [1, k]) = overline(d)(A),
    $
    and $
      overline(d)(T^(-1)(A)) &= limsup_(k -> infinity) 1/k abs((A-1) inter [1, k])\
      &>= limsup_(k -> infinity) 1/k (abs(A inter [1, k]) - 1)\
      &>= limsup_(k -> infinity) 1/k abs(A inter [1, k]) - limsup_(k -> infinity) 1/k\
      &= overline(d)(A).
    $
    Since $A$ has positive density, $overline(d)(A) > 0,$
    then there is an $n in NN$ satisfies that $overline(d)(A inter T^(-n)(A)) > 0$ by the result in 2.2.1.

  + Trivially proved by the arguments above.
]

#pagebreak()
#exercise("2.2.3")[
  + Let $(X, d)$ be a compact metric space and let $T: X -> X$ be a continuous map.
    Suppose that $mu$ is a $T$-invariant probability space defined on the Borel subsets of $X.$
    Prove that for $mu$-almost every $x in X$
    there si a sequence $n_k -> infinity$ with $T^(n_k) (x) -> x$ as $k -> infinity.$
  + Prove that the same conclusion holds under the assumption that $X$ is a metric space,
    $T: X -> X$ is Borel measurable,
    and $mu$ is a $T$-invariant probability measure.
]
#proof[
  
]
