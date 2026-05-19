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

= Exercise for Sect. 2.8
#exercise("2.8.1")[
  Is the hypothesis that the sequence $(a_n)$ be bounded necessary in Lemma 2.41.
]
#proof[
  / $(2) => (1)$ fails: Let $J = {k^2: k in NN}$ is density zero, and $a_n = n$ for $n in J$ otherwise $0.$ 
    The sequence converges to $0$ for $n in.not J$ but the subsequence
    $ A_(n^2+1) = 1/(n^2+1) sum_(j=0)^(n^2) a_n = 1/(n^2+1) (n(n+1)(2n+1))/6 -> infinity. $
    Therefore, $lim_(n -> infinity) 1/n sum a_j eq.not 0.$
  / $(2) => (3)$ fails: Same as above.
  / $(1) => (3)$ fails: $J$ is same as above but $a_n = n^(1/4)$ for $n in J.$
    Then the first $m^2+1$ summation is $A_(m^2+1) = 1/m^2 sum_(j=0)^(m^2+1) a_j = 1/m^2 sum_(k=1)^m k^(1/2).$
    The subsequence converges by integral test and it should converges to zero.
    Since the whole sequence is decreasing except $n in J,$ the seqence converges to zero.

    But for squared sequence, $A_(m^2+1) = 1/m^2 sum_(k=1)^m k = 1/m^2 dot.c (m(m+1))/2 -> 1/2.$
    Therefore the whole sequence may not converge to zero.

  / $(3) => (1)$ still true: By Cauchy-Schwarz inequality $(1/n sum_(j=0)^(n-1) a_j)^2 <= 1/n sum_(j=0)^(n-1) a_j^2.$
  / $(1) => (2)$ still true: By the proof in textbook, it doesn't use the bounded condition.
  / $(3) => (1)$ still true: Combine the two above.
]

#pagebreak()
#exercise("2.8.2")[
  Give an alternative proof of $(1) ==> (5)$ by proving the following satements:
  + Any factor of a weak-mixing transformation is weak-mixing.
  + A complex-valued eigenfunction $f$ of $U_T$ has constant modulus.
  + If $f$ is an eigenfunction of $U_T,$ then $x |-> arg(f(x)/abs(f(x)))$ is a factor map
    from $(X, cal(B), mu, T)$ to $(TT, cal(B)_TT, m_TT, R_alpha)$ for some $alpha$.
]
#proof[
  + Suppose $(Y, cal(B)_Y, nu, S)$ is a factor of $(X, cal(B)_X, mu, T)$ with the factor map $phi.$
    Suppose $A, B in cal(B)_Y,$ $A' = phi^(-1) (A), B' = phi^(-1) (B)$ are in $cal(B)_X.$
    By the assumption, $1/N sum_(n=0)^(N-1) abs(mu(A' inter T^(-n) B') - mu(A') mu(B)') -> 0.$
    Then,
    $ 1/N sum_(n=0)^(N-1) abs(nu(A inter S^(-n) B) - nu(A) nu(B)) = 1/N sum_(n=0)^(N-1) abs(mu(phi^(-1) (A inter S^(-n) B)) - mu(phi^(-1) (A)) mu(phi^(-1) (B))) -> 0 $
    by the measure-preserving property of $phi.$
  + Suppose $U_T f = lambda f$ almost everywhere.
    Take norm on both sides and $U_T$ is isometry, $norm(f)_2 = abs(lambda) norm(f)_2$ implies $abs(lambda) = 1.$
    Take absolute value pointwise on both sides yields $U_T abs(f(x)) = abs(U_T f (x)) = abs(lambda) abs(f(x)) = abs(f(x))$ almost everywhere.
    Thus, $abs(f)$ is $T$-invariant and it is constant by the ergodicity of $T$ (from weak-mixing.)
  + 
]

#pagebreak()
#exercise("2.8.3")[
  If a measure-preserving system $(Y, cal(B)_Y, nu, S)$ is not totally ergodic
  then there exists a measure-preserving system $(X, cal(B), mu, T)$ and $K > 1$
  with the property that $(Y, cal(B)_Y, nu, S)$ is measurably isormorphic to the system
  $ (X^((K)), cal(B)^((K)), mu^((K)), T^((K))). $
]
#proof[
]

#pagebreak()
#exercise("2.8.4")[
  For a measure-preserving system $(X, cal(B), mu, T)$ and function $f in L^2_mu,$
  show that the function $n |-> inner(U^n_T f, f)$ is positive-definite.
  Apply the Herglotz-Bochner theorem to translate the problem into one concerned with function on $SS^1,$
  and there use the fact that $1/N sum_(n=1)^N rho^n$ converges for $rho in SS^1.$
]
#proof[
]
