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
    Take norm on the both sides and $U_T$ is isometry, $norm(f)_2 = abs(lambda) norm(f)_2$ implies $abs(lambda) = 1.$
    Take absolute value pointwisely on the both sides yields $U_T abs(f(x)) = abs(U_T f (x)) = abs(lambda) abs(f(x)) = abs(f(x))$ almost everywhere.
    Thus, $abs(f)$ is $T$-invariant and it is constant by the ergodicity of $T$ (from weak-mixing.)
  + By the arguments above, let $lambda = e^(2 pi i alpha)$ for some $alpha in TT.$
    If $abs(f) = 0$ almost everywhere, the map is trivial.
    Suppose $abs(f) = c > 0,$ $f(x)/abs(f(x)) in SS^1$ and let $e^(2 pi i phi(x)) = f(x)/abs(f(x)).$
    Now prove that $phi$ is the factor map.
    First, since $phi(x) = arg(f(x)/abs(f(x))),$ $phi$ is automatically measurable.
    Second, since $U_T f/abs(f) = lambda f/abs(f),$ $e^(2 pi i phi (T x)) = e^(2 pi i alpha) e^(2 pi i phi(x)) = e^(2 pi i (phi(x) + alpha)).$
    This proves $phi compose T = R_alpha compose phi.$
    Since $$
    Last, let $nu = mu compose phi^(-1)$ be the push-forward measure. 
    For a measurable set $A in cal(B)_TT$ and $t in TT,$
    $nu(t + A) = mu(phi^(-1) (t + A)) = mu()$
]

#pagebreak()
#exercise("2.8.3")[
  If a measure-preserving system $(Y, cal(B)_Y, nu, S)$ is not totally ergodic
  then there exists a measure-preserving system $(X, cal(B), mu, T)$ and $K > 1$
  with the property that $(Y, cal(B)_Y, nu, S)$ is measurably isormorphic to the system
  $ (X^((K)), cal(B)^((K)), mu^((K)), T^((K))). $
]
#proof[
  First suppose $S$ is ergodic.
  Suppose $K$ is the smallest integer such that $S^K$ is not ergodic.
  Since $S^K$ is not ergodic, $U_(S^K) = (U_S)^K$ contains non-constant eigenfunction $g$ such that $(U_S)^K g = g.$
  Let $lambda = e^((2 pi i)/K)$ and $U_S g = lambda g.$
  Since $U_S abs(g) = abs(U_S g) = abs(lambda) abs(g) = abs(g),$ $abs(g)$ is $S$-invariant and then is constant almost everywhere.
  Without loss of generality, assume $abs(g) = 1$ a.e.

  For $g^K,$ $g^K (S y) = (g(S y))^K = (lambda g(y))^K = g^K (y)$ is $S$-invariant.
  Thus, $g^K = 1$ a.e. and $g(y) in {lambda^k: k in [0, K-1] inter NN}$ a.e.
  Let $A_k = g^(-1) ({lambda^k})$ for $k in [0, K-1] inter NN$ and then ${A_k}$ is a partition of $Y.$
  The sets also have the cyclic property, which is, $S^(-1) A_k = A_(k+1 mod K).$
  By $S$ is measure-preseving, $nu(A_k) = 1/K$ for all $k.$

  Let $X = A_0, cal(B) = cal(B)_Y|_(A_0), mu = K nu|_(A_0),$ and $T = S^K.$
  And ...
]

#pagebreak()
#exercise("2.8.4")[
  For a measure-preserving system $(X, cal(B), mu, T)$ and function $f in L^2_mu,$
  show that the function $n |-> inner(U^n_T f, f)$ is positive-definite.
  Apply the Herglotz-Bochner theorem to translate the problem into one concerned with function on $SS^1,$
  and there use the fact that $1/N sum_(n=1)^N rho^n$ converges for $rho in SS^1.$
]
#proof[
  For any $c_1, c_2, dots, c_k in CC$ and $n_1, n_2, dots, n_k in NN,$
  $
    sum_(i=1)^k sum_(j=1)^k c_i overline(c_j) inner(U^(n_i-n_j)_T f, f)
    &= sum_(i=1)^k sum_(j=1)^k inner(c_i U^(n_i)_T f,  c_j U^(n_j)_T f)\
    &= inner(sum_(i=1)^k c_i U^(n_i)_T f, sum_(j=1)^k c_j U^(n_j)_T f)\
    &= norm(sum_(i=1)^k c_i U^(n_i)_T f)_2 >= 0.
  $
]
