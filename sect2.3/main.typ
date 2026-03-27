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
= Exercise for Sect. 2.3
#exercise("2.3.1")[
  Show that ergodicity is not preserved under direct products as follows.
  Find a pair of ergodic measure-preserving systems $(X, cal(B)_X, mu, T)$ and $(Y, cal(B)_Y, nu, S)$
  for which $T times S$ is not ergodic with respect to the product measure $mu times nu.$
]
#proof[
  See exercise 2.3.2.
]

#pagebreak()
#exercise("2.3.2")[
  Define a map $R: TT times TT -> TT times TT$ by $R(x, y) = (x + alpha, y + alpha)$ for an irrational $alpha.$
  Show that for any set of the form $A times B$ with $A, B$ measurable subsets of $TT$
  (such a set is called a measurable rectangle) has the property of
  $ R^(-1) (A times B) = A times B quad ("a.e.") => (m_TT times m_TT)(A times B) in {0, 1}, $
  but the transformation $R$ is not ergodic, even if $alpha$ is irrational.
]
#proof[
  Suppose that $A times B$ is a rectangle that $R^(-1)(A times B) = A times B$ up to measure zero sets.
  Since $R$ is just a shift map, $R^(-1) (A times B)$ is still a rectangle and $R^(-1) (A times B) = R^(-1)_alpha (A) times R^(-1)_alpha (B).$
  Thus, we have $ A = R^(-1)_alpha (A) "and" B = R^(-1)_alpha (B) quad "a.e.". $
  By the ergodicity of $R_alpha,$ we have $m_TT (A), m_TT (B) in {0, 1}$ and $m_i(TT^2) (A times B) in {0, 1}.$

  Besides, we can have an invarient set $I = {(x, y): abs(x-y) < 1/3}.$
  The map $R$ is trivially invariant by the criteria of the set.
  And the measure of the set is $2/3.$
]

#pagebreak()
#exercise("2.3.3")[
  + Find an arithmetic condition on $alpha_1$ and $alpha_2$ that is equivalent to the ergodicity of
  $R_(alpha_1) times R_(alpha_2): TT times TT -> TT times TT$ with respect to $m_TT times m_TT.$ 
  + Generalize part 1. to characterize ergodicity of the rotation
    $ R_(alpha_1) times dots.c times R_(alpha_n): TT^n -> TT^n $
    with respect to $m_(TT^n).$
]
#proof[

]

#pagebreak()
#exercise("2.3.4")[
  Prove that any factor of an ergodic measure-preserving system is ergodic.
]
#proof[
]

#pagebreak()
#exercise("2.3.5")[
  Show that for each $p in [1, infinity],$
  a measure-preserving transformation $T$ is ergodic if and only if for any $L^p$ function $f,$
  $f compose T = f$ almost everywhere implies that $f$ is almost everywhere equal to a constant.
]
#proof[
]

#pagebreak()
#exercise("2.3.6")[
  Show that a measure-preserving transformation $T$ is ergodic if and only if any measurable function
  $f: X -> RR$ with $f(T x) >= f(x)$ almost everywhere is equal to a constant almost everywhere. 
]
#proof[
]

#pagebreak()
#exercise("2.3.7")[
  Let $X$ be a compact metric space and let $T: X -> X$ be continuous.
  Suppose that $mu$ is a $T$-invariant ergodic probability measure defined on the Borel subset of $X.$
  Prove that for $mu$-almost every $x in X$ and every $y$ in the support of $mu,$
  there exists a sequence $n_k arrow.tr infinity$ such that $T^(n_k) (x) -> y$ as $k -> infinity.$
  Here the support $supp(mu)$ of $mu$ is the smallest closed subset $A$ of $X$ with $mu(A) = 1;$
  alternatively
  $ supp(mu) = X without union.big_(O subset.eq X "open"\ mu(O) = 0) O. $
  Notice that $X$ has a countable base for its topology, so the union is still a $mu$-null set.
]
#proof[
]
