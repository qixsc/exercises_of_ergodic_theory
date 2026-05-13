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

= Exercise for Sect. 2.6
#exercise("2.6.1")[
  Let $X = {x_1, dots, x_r}$ be a finite set,
  and let $sigma: X -> X$ be a permutation of $X.$
  The orbit of $x_j$ under $sigma$ is the set ${sigma^n (x_j)}_(n >= 0),$
  and $sigma$ is called cyclic if there is an orbit of cardinality $r.$
  + For a cyclic permutation $sigma$ and any function $f: X -> RR,$ prove that #h(1fr)
    $ lim_(n -> infinity) 1/n sum_(j=0)^(n-1) f(sigma^j x) = 1/r (f (x_1) + dots.c + f(x_r)). $
  + More generally, prove that for any permutation $sigma$ and function $f: X -> RR,$ #h(1fr)
    $ lim_(n -> infinity) sum_(j=0)^(n-1) f(sigma^j x) = 1/(p_x) (f(x) + f(sigma(x))) + dots.c + f(sigma^(p_x - 1) (x)) $
    where the orbit of $x$ has cardinality $p_x$ under $sigma.$
]
#proof[
  Let $(X, cal(P) (X), mu, sigma)$ be a measure-preserving system by defining $mu(B) = 1/r abs(B)$ for any set in $cal(P)(X).$ 
  $sigma$ is ergodic if it is cyclic.
  + By the ergodic theorem, for any $f: X -> RR$ (it automatically satisfies measurable and $L^1$),
    we have $lim_(n -> infinity) 1/n sum_(j=0)^(n-1) f compose sigma^j (x) = integral f(x) dif mu = 1/r (f(x_1) + dots.c + f(x_r)).$
  + Just restrict the space to the orbit of $x.$
]

#pagebreak()
#exercise("2.6.2")[
  Minic the proof of finite Vitali covering lemma to prove that for any collection of intervals
  $ I_1 = [a_1, a_1 + l(1)-1], dots, I_K = [a_K, a_K + l(K)-1] $
  in $ZZ$ there is a disjoint subcollection $I_(j(1)), dots, I_(j(k))$ such that 
  $ I_1 union dots.c union I_K subset.eq union.big_(m=1)^k [a_(j(m)) - l(j(m)), a_(j(m)) + 2 l(j(M)) - 1]. $
]
#proof[
  Let $R = {1, 2, dots, K}$ be the remaining set.
  Let $j(1) in R$ that $l(j(1))$ is the biggest one in ${l(k): k in R}.$
  Then, remove the elements $e$ in $R$ such that $I_e inter I_(j(1)) eq.not emptyset.$
  We have $I_e subset [a_(j(1)) - l(j(1)), a_(j(1)) + 2 l(j(1)) - 1]$ since $l(e) <= l(j(1))$ and $abs(a_e - a_(j(1))) < l(e) + l(j(1)) <= 2l(j(1))$
  by $I_e inter I_(j(1)) eq.not emptyset.$
  Then, do the same procedure again and again until there is nothing left in $R$.
  We have the disjoint subcollection $I_(j_1), dots, I_(j_k).$
]

#pagebreak()
#exercise("2.6.3")[
  Let $(X, cal(B), mu, T)$ be an invertible measure-preserving system.
  Prove that, for any $f in L^1_mu,$
  $ lim_(N -> infinity) 1/N sum_(n=0)^(N-1) f(T^n x) = lim_(N -> infinity) 1/N sum_(n=0)^(N-1) f(T^(-n) x) $
  almost everywhere.
]
#proof[
]

#pagebreak()
#exercise("2.6.4")[
  Fill in the details to prove the estimate in $(2.28).$
]
#proof[
]

#pagebreak()
#exercise("2.6.5")[
  Formulate and prove a pointwise ergodic theorem for a measurable function $f >= 0$ with $integral f dif mu = infinity,$
  under the assumption of ergodicity.
]
#proof[
]
