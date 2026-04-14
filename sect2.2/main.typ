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
    Suppose that $mu$ is a $T$-invariant probability measure defined on the Borel subsets of $X.$
    Prove that for $mu$-almost every $x in X$
    there is a sequence $n_k -> infinity$ with $T^(n_k) (x) -> x$ as $k -> infinity.$
  + Prove that the same conclusion holds under the assumption that $X$ is a metric space,
    $T: X -> X$ is Borel measurable,
    and $mu$ is a $T$-invariant probability measure.
]
#proof[
  + For all $k in NN,$ let $union_(x in X) D(x, 1/k)$ be the union of open disks on $X.$     
    Since $X$ is compact, there is finite set $I_k$ such that $union_(x in I) D(x, 1/k)$ cover $X$.
    Then, suppose $F_k subset I_k$ such that $mu(D(x, 1/k)) > 0$ for all $x in I_k without F_k$ and is $0$ for all $x in F_k.$ 
    By Poincare's theorem, for $x in I_k without F_k$ and a.e. $y in D(x, 1/k),$ $T^n (y) in D(x, 1/k)$ i.o.
    Thus, let $G_(x, k) = {y in D(x, 1/k): T^n (y) "not back to" D(x, 1/k "i.o.")}$ and it is measure zero.
    Union of the sets $D(x, 1/k)$ for $x in F_k$ and $G_(x, k),$ called $E_k$, is measure zero since it is union of finite measure zero sets.
    Last, the union of $E_k$ for all $k in NN$ is still measure zero and for all $x in X without (union E_k)$
    satisfies $T^(n_k) x -> x$ as $k -> infinity$ by choosing indices from each step. 
  + Suppose $S = supp(mu) := {x in X: mu(D(x, r)) > 0 forall r > 0}$ is derived from delete the biggest null open set from the space.
    / Prove for the existence of $S$:
      Let $G$ is a null open set and there is some $x in X without G$ such that $mu(D(x, r)) = 0$ for some $r > 0.$     
      Then $G' = G union D(x, r) supset G$ is a null open set.
      From Zorn's lemma, we can get a maximal element $M$ that is a null open set and $mu(D(x, r)) > 0$ for all $r > 0$ and $x in X without M.$
    Then, for any $r > 0.$
    / Claim that $S$ is cover by at most countable open ball with radius $r$:
      Suppose $R$ is a collection of points in $S$ such that $x, y in R,$ $d(x, y) > r.$
      Then, the set $C = union_(x in R) D(x, r/2)$ is a union of disjoint sets in $R.$
      By the assumption that $D(x, r/2)$ has positive measure for any $x in S, r/2 > 0,$
      we have $mu(C) = sum_(x in R) mu(D(x, r/2)).$
      If $R$ is uncountable, the summation of uncountable positive real numbers goes to infinity, contradicts to the condition of probability space.
      Thus, $R$ is at most countable and $S$ is cover by $union_(x in RR) D(x, r)$
      by finding the biggest $R$ satisfies the assumption.
    Let $r = 1/k$ for each $k,$ and by the similar prove of 1., we have for almost every $x in S$ returns to its neighborhood infinitely often with distance at most $2r.$ 
    Then take intersection of each $k,$ we have for almost every $x,$ $T^(n_k) x$ converges to $x.$    
]
