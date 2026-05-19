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

= Exercise for Sect. 2.7
#exercise("2.7.1")[
  Show that if a measure-preserving system $(X, cal(B), mu, T)$ has the property that
  for any $A, B in cal(B)$ there exists $N$ such that
  $ mu(A inter T^(-n) B) = mu(A) mu(B) $
  for all $n >= N,$
  then it is trivial in the sense that $mu(A) = 0$ or $1$ for every $A in cal(B).$
]
#proof[
  If $mu(A) = 0$ or $1,$ the equation is trivial true for all $n in NN.$
  Thus, suppose $A in cal(B)$ that $mu(A) = c in (0, 1),$
  $ mu(A inter T^(-n) A)  = mu(A) mu(A) = c^2 $
  for some $N_0 in NN$ and all $n >= N_0.$
  Choose an subsequence ${A_(n_j)}$ of ${A_n = T^(-n) A}$ such that $mu(A_(n_j) inter A_(n_k)) = mu(A_(n_j)) mu(A_(n_k)) = c^2$
  by letting $A_(n_0) = A_0 = A,$ $n_1 >= N_0,$ $n_2 >= N_1$ that $mu(A_1 inter T^(-n) A) = mu(A_1) mu(A)$ for all $n >= N_2.$
  Thus, $mu(A_(n_0) inter A_(n_2)) = mu(A_(n_1) inter A_(n_2)) = c^2$ and then choose $n_3, n_4$ and so on.
  
]

#pagebreak()
#exercise("2.7.2")[
  Show that if a measure-preserving system $(X, cal(B), mu, T)$ has the property that
  $ mu(A inter T^(-n) B) -> mu(A) mu(B) $
  uniformly as $n -> infinity$ for every measruable $A subset.eq B in cal(B),$
  then it is trivial in the sense that $mu(A) = 0$ or $1$ for every $A in cal(B).$]
#proof[
  Suppose $B in cal(B)$ and for all $epsilon > 0,$
  there is an $N in NN$ such that $abs(mu(A inter T^(-n) B) - mu(A) mu(B)) < epsilon$ for all $n >= N.$
  Let $A_n = B inter T^(-n) B$ and we have $A_n inter T^(-n) B = B inter T^(-n) B inter T^(-n) B = A_n.$
  Hence for $n >= N,$
  $ abs(mu(A_n) (1 - mu(B))) = abs(mu(A_n) - mu(A_n) mu(B)) = abs(mu(A_n inter T^(-n) B) - mu(A_n) mu(B)) < epsilon. $
  Apply the equation again,
  $ abs(mu(A_n) - mu(B)^2) = abs(mu(A inter T^(-n) B) - mu(B) mu(B)) < epsilon. $
  Thus,
  $ abs(mu(B)^2 (1 - mu(B))) <= abs(mu(B)^2 (1 - mu(B)) - mu(A_n) (1 - mu(B))) + abs(mu(A_n) (1 - mu(B))) < 2 epsilon. $
  Since $mu(B) in [0, 1]$ and $epsilon$ is arbitrary, we have $mu(B)^2 - mu(B)^3 = 0$ and thus $mu(B) in {0, 1}.$
]

#pagebreak()
#exercise("2.7.3")[
  Asuume that $cal(A)$ is a semi-algebra that generates $cal(B),$
  and prove the following characterizations of the basic mixng properties for a measure-preserving system $(X, cal(B), mu, T)$:
  + $T$ is mixing if and only if #h(1fr)
    $ mu(A inter T^(-n) B) -> mu(A) mu(B) $ as $n -> infinity$
    for all $A, B in cal(A).$
  + $T$ is weak-mixing if and only if
    $ 1/N sum_(n=0)^(N-1) abs(mu(A inter T^(-n) B) - mu(A) mu(B)) -> 0 $
    as $N -> infinity$ for all $A, B in cal(A).$
  + $T$ is ergodic if and only if
    $ 1/N sum_(n=0)^(N-1) mu(A inter T^(-n) B) -> mu(A) mu(B) $
    as $N -> infinity$ for all $A, B in cal(A).$
]
#proof[
  The $=>$ sides are trivial, so just prove the $<=$ sides.
  + Suppose $A, B in cal(B)$ and $epsilon > 0,$ there exists ${A_j}_(j=1)^(r)$ and ${B_k}_(k=1)^(l)$ that
    $ mu(A laplace (union A_j)) < epsilon "and" mu(B laplace (union B_k)) < epsilon. $
]

#pagebreak()
#exercise("2.7.4")[
  Let $cal(A)$ be a generating semi-algebra in $cal(B)$ andassume that for $A in cal(A),$
  $mu(A laplace T^(-1) A) = 0$ implies $mu(A) = 0$ or $1.$
  Does it follow that $T$ is ergodic?
]
#proof[
  Consider $X = TT^2,$ $cal(A)$ is the set of all rectangles and $mu$ is Lebesgue measure.
  $T = R_alpha times R_alpha$ where $R_alpha: TT -> TT$ that $R_alpha x = x + alpha mod 1$ with $alpha$ is irrational.
  $T$ is not ergodic but satisfies the assumption.
]

#pagebreak()
#exercise("2.7.5")[
  Show htat a measure-preserving system $(X, cal(B), mu, T)$ is mixing if and only if
  $ lim_(n -> infinity) inner(U^n_T f, g) = inner(f, 1) inner(1, g) $
  for all $f$ and $g$ lying a dense subset of $L^2_mu.$
]
#proof[
]

#pagebreak()
#exercise("2.7.6")[
  Use exercise $2.7.5$ to prove the following.
  + An ergodic automorphism of a compact abelian group is mixing with respect to Haar measure.
  + An erogidc automorphism of a compact abelian group is mixing of all orders with respect tot Haar measure.
]
#proof[
]

#pagebreak()
#exercise("2.7.7")[
  Show that a measure-preserving system $(X, cal(B), mu, T)$ is weak-mixing if and only if
  $ lim_(N -> infinity) 1/N sum_(n=0)^(N-1) abs(inner(U^n_T f, g) - inner(f, 1) inner(1, g)) = 0 $
  for any $f, g in L^2_mu.$
]
#proof[
]

#pagebreak()
#exercise("2.7.8")[
  Show that a measrue-preserving system $(X, cal(B), mu, T)$ is weak-mixing if and only if
  $ lim_(N -> infinity) 1/N sum_(n=0)^(N-1) abs(inner(U^n_T f, f) - inner(f, 1) inner(1, f)) = 0 $
  for any $f in L^2_mu.$
]
#proof[
]

#pagebreak()
#exercise("2.7.9")[
  Shoe that a Bernoulli shift is mixing of order $k$ for every $k >= 1.$
]
#proof[
]

#pagebreak()
#exercise("2.7.10")[
  Prove that a measure-preserving transformation $T$ is mixing if and only if
  $ mu(A inter T^(-n) A) -> mu(A)^2 $
  for all $A in cal(B).$
  Deduce that $T$ is mixing if and only if $inner(U^n_T f, f) -> 0$ as $n -> infinity$
  for all $f$ in a set of function dense in the set of all $L^2$ functions of zero integral.
]
#proof[
]

#pagebreak()
#exercise("2.7.11")[
  Prove that a measure-preserving transformation $T$ is weak mixing if and only if
  for any measurable sets $A, B, C$ with positive measrue,
  there exists soem $n >= 1$ such that $T^(-n) A inter B eq.not emptyset$ and $T^(-n) A inter C eq.not emptyset.$
]
#proof[
]

#pagebreak()
#exercise("2.7.12")[
  Write $T^(k)$ for the $k$-fold Cartesian product $T times dots.c times T.$
  Prove that $T^(k)$ is ergodic for all $k >= 2$ if and only if $T^(2)$ is ergodic.
]
#proof[
]

#pagebreak()
#exercise("2.7.13")[
  Let $T$ be an ergodic endomorphism of $TT^d.$
  The following exponential error rate for the mixing property,
  $ abs(inner(f_1, U^n_T f_2) - integral f_1 integral f_2) <= S(f_1) S(f_2) theta^n $
  for some $theta < 1$ depending on $T$ and
  for the pair of constants $S(f_1), S(f_2)$ depending on $f_1, f_2 in C^infinity (TT^d),$ is known to hold.
  + Prove an exponential rate of mixing for the map $T_n: TT -> TT$ defined by $T_n (x) = n x mod 1.$
  + Prove an exponential rate of mixing for the automorphism of $TT^2$ defined by $T: vec(x, y) |-> vec(y, x+y).$
  + Could an exponential rate of mixing hold for all continuous functions?
]
#proof[
]
