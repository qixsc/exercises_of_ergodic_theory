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
  + Suppose that $T = R_alpha_1 times R_alpha_2$ and $f$ is a $T$-invariant $L^2$ function from $TT^2$ to $CC.$
    By the fourier expansion, $ f(x, y) = sum_(n, m in ZZ) C_(n, m) e^(2 pi i (n x + m y)). $
    Thus, by the invariance, $ f(T(x, y)) &= sum_(n, m in ZZ) C_(n, m) e^(2 pi i (n(x+alpha_1) + m(y+alpha_2)))\
    &= sum_(n, m in ZZ) C_(n, m) e^(2 pi i(n alpha_1 + m alpha_2)) e^(2 pi i (n x + m y)). $
    Therefore, $T$ is ergodic if and only if $n alpha_1 + m alpha_2 in.not ZZ$ for all $n, m in ZZ without {(0, 0)}.$

  + Ergodicity is equivalent to $sum_(i = 1)^n k_i alpha_i in.not ZZ$ for all $k_i in ZZ without {0}.$
]

#pagebreak()
#exercise("2.3.4")[
  Prove that any factor of an ergodic measure-preserving system is ergodic.
]
#proof[
  Suppose $(X, cal(B), mu, T)$ is an ergodic system and $(Y, cal(F), nu, S)$ is a factor of $(X, cal(B), mu, T)$ by the map $phi: X -> Y.$
  Then, if a set $B in cal(F)$ that $S^(-1) B = B,$ let $A = phi^(-1) (B)$ and get
  $ T^(-1) A = T^(-1) compose phi^(-1) (B) = phi^(-1) S^(-1) (B) = phi^(-1) (B) = A. $
  Since $T$ is ergodic, $mu(A) in {0, 1}.$
  By the measure-preserving property of $phi,$ we have $nu(B) in {0, 1}$ and $S$ is ergodic.
]

#pagebreak()
#exercise("2.3.5")[
  Show that for each $p in [1, infinity],$
  a measure-preserving transformation $T$ is ergodic if and only if for any $L^p$ function $f,$
  $f compose T = f$ almost everywhere implies that $f$ is almost everywhere equal to a constant.
]
#proof[
  Since $f compose T = f$ a.e. implies $f$ constant a.e. is equivalent to ergodicity for any $f$ is measurable, thus the ergodicity implies the condition for all $f in L^p,$ $p in [1, infinity].$ 
  Then, for any $B$ that $B = T^(-1) B,$ $chi_B in L^p$ for all $p in [1, infinity]$ and $chi_B compose T = chi_(T^(-1) B) = chi_(B)$ implies $chi_B$ is a constant a.e.
  Therefore, $mu(B)$ must be in ${0, 1}.$
]

#pagebreak()
#exercise("2.3.6")[
  Show that a measure-preserving transformation $T$ is ergodic if and only if any measurable function
  $f: X -> RR$ with $f(T x) >= f(x)$ almost everywhere is equal to a constant almost everywhere. 
]
#proof[
  Suppose $f$ measurable and $f(T x) >= f(x)$ a.e., then for any $n in NN, k in ZZ,$ define
  $ A_n^k = {x in X: f(x) <= k/n}. $
  Suppose $A = A_n^k$ that $mu(A) > 0.$
  Since $T^(-1) (A) = {x in X: f(T x) <= k/n} subset.eq A$ (a.e.) by $f(T x) >= f(x)$ a.e.,
  $mu(union T^(-n) A) = mu(A).$
  By ergodicity of $T,$ $mu(union T^(-n) A) = 1$ if $mu(A) > 0$ implies $mu(A_n^k) in {0, 1}$ for all $n, k.$
  Therefore, $f$ can only be constant a.e.

  Conversely, suppose $B subset X$ that $T^(-1) (B) = B.$
  Then, $chi_B$ is measurable and $chi_B (T x) = chi_(T^(-1) B)(x) = chi(B).$
  Therefore $chi_B$ is constant a.e. implies $mu(B) in {0, 1}.$
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
  For any $k in NN,$ we can find an finite open cover ${D(z^k_j, 1/2k)}$ of $X$ by the compactness of $X.$
  For any $y in supp(mu),$ $y in D(z^k_j, 1/2k)$ for some $j in NN$, then $D(z^k_j, 1/2k) supset D(y, r)$ for some $r > 0$ and thus $mu(D(z^k_j, 1/2k)) >= mu(D(y, r)) > 0.$
  Then, let $E^k_j = {x in X: T^n x in D(z^k_j, 1/2k) "i.o."}$, since $E^k_j$ is $T$-invariant, $mu(E^k_j) in {0, 1}.$
  Since $D(z^k_j, 1/2k)$ has positive measure, by recurrence theorem, almost every points returns to $D(z^k_j, 1/2k)$ implies $mu(E^k_j) > 0.$
  Therefore, let $E_k = inter_j E^k_j,$ $E_k$ has measure one and it goes to somewhere near(with distance less than $1/k$) to any $y in supp(mu)$ infinitely often.
  Hence, let $E = inter_k E_k,$ we have $mu(E) = 1$ and for all $x in E$ and all $y in supp(mu),$ there exists a sequence $n_k arrow.tr infinity$ such that $T^(n_k) x -> y.$
]
