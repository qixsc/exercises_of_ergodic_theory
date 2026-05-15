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
  Suppose $T$ is ergodic, by the continuity of inner product,
  $
    lim_(N -> infinity) 1/N sum_(n=0)^(n-1) inner(U^n_T f, g) = inner(lim_(N -> infinity) 1/N sum_(n=0)^(n-1) U^n_T f, g).
  $
  By the mean ergodic theorem, 
  $
    lim_(N -> infinity) 1/N sum_(n=0)^(n-1) U^n_T f = P_T f,
  $
  where $P_T$ is the orthogonal projection to the $T$-invariant subspace.
  By the ergodicity of $T,$ $P_T f$ is equal to constant $c$ almost everywhere.
  Since $T$ is measure-preserving,
  $
    integral_X f compose T^n dif mu = integral_X f dif mu\
    => c = inner(P_T f, 1) = integral_X lim_(N -> infinity) U^n_T f dif mu = integral f dif mu = inner(f, 1).
  $
  Thus,
  $
    inner(lim_(N -> infinity) 1/N sum_(n=0)^(n-1) U^n_T f, g) &= inner(P_T f, g)
    &= inner(c dot.c 1, g)
    &= c dot.c inner(1, g)
    &= inner(f, 1) dot.c inner(1, g).
  $

  Now, suppose for any $f, g in L^2,$
  $ lim_(N -> infinity) 1/N sum_(n=0)^(N-1) inner(U^n_T f, g) = inner(f, 1) dot.c inner(1, g). $
  Suppose $A$ is a $T$-invariant set,
  $
    lim_(N -> infinity) 1/N sum_(n=0)^(N-1) inner(U^n_T chi_A, chi_A) = inner(chi_A, 1) dot.c inner(1, chi_A) = mu(A)^2.
  $
  Since $A$ is invariant, the left hand side can be written as $integral chi_A chi_A dif mu = mu(A).$
  Therefore, $mu(A) = mu(A)^2 => mu(A) in {0, 1}$ and $T$ is ergodic.
]

#pagebreak()
#exercise("2.5.2")[
  Let $(X, cal(B), mu, T)$ be a measure-preserving system.
  For any function $f$ in $L^p_mu, 1 <= p < infinity,$ prove that
  $ 1/n sum_(i=0)^(n-1) f(T^i x) attach(-->, b: L^p_mu) f^*, $
  with $f^* in L^p_mu$ a $T$-invariant function.
]
#proof[
  Let $U_T: L^p_mu -> L^p_mu$ be the Koopman operator defined by $U_T f = f compose T.$
  By the measure-preserving property of $T,$ $U_T$ is isometry.
  Then define $A_N f = 1/N sum_(n=0)^(N-1) U_T^n f$ be the first $n$ average.
  Since $U_T$ is isometry, $norm(A_N) <= 1.$

  For $f in L^p_mu$ and any $epsilon > 0,$ we have a function $g in L^infinity_mu$ that $norm(f - g)_p <= epsilon/3.$
  Since $mu(X) = 1,$ $g in L^2_mu$ and thus $A_N g -> g'$ by the mean ergodic theorem.
  Then, need to show $A_N g$ is Cauchy in $L^p_mu.$

  For $p in [1, 2),$ $norm(dot.c)_p <= norm(dot.c)_2$ (in probability space) implies $A_N g$ is Cauchy in $L^p_mu$ by $A_N g$ is Cauchy in $L^2_mu.$
  For $p in (2. infinity),$ $norm(A_N g)_infinity <= norm(g)_infinity$ and thus $abs(A_n g - A_m g) <= 2 norm(g)_infinity$ almost everywhere.
  Therefore,
  $ integral abs(A_n g - A_m g)^p dif mu = integral abs(A_n g - A_m g)^(p-2) abs(A_n g - A_m g)^2 dif mu <= (2 norm(g)_infinity)^(p-2) integral abs(A_n g - A_m g)^2 dif mu . $
  Then $norm(A_n g - A_m g)_p <= ((2norm(g)_infinity)^(p-2) norm(A_n g)_2^2)^(1/p) -> 0$ as $n, m -> infinity$ by $A_n g$ is Cauchy in $L^2_mu.$

  Thus, choosing $N$ such that for all $n, m >= N,$ $norm(A_n g - A_m g)_p <= epsilon/3$ and get
  $ norm(A_n f - A_m f) <= norm(A_n (f-g))_p + norm(A_n g - A_m g)_p + norm(A_m (f-g))_p <= epsilon $
  By the completeness for $L^p_mu,$ we have $A_n f -> f^*.$

  Since $U_T (A_n f) = A_n f + 1/n (U_T^n f - f),$ $norm(U_T (A_n f) - A_n f)_p <= 1/n (norm(U_T^n f)_p + norm(f)_p) = (2 norm(f)_p)/n.$
  Thus, $U_T (A_n f) -> f^*$ and we also have $U_T (A_n f) -> U_T f^*$ by continuity of $U_T$.
  Therefore, by uniqueness of limit in $L^p_mu,$ $f^*$ is $T$-invariant.
]

#pagebreak()
#exercise("2.5.3")[
  Show that a measure-preserving system $(X, cal(B), mu, T)$ is ergodic if and only if
  $A_N (f) -> integral f dif mu$ as $N -> infinity$ for all $f$ in a dense subset of $L^1_mu.$
]
#proof[
  If $T$ is ergodic, then just use the ergodic theorem.

  Suppose $A_N (f) -> integral f dif mu$ as $N -> infinity$ for all $f$ in a dense subset of $L^1_mu.$
  Let $B$ be a $T$-invariant set in $cal(B)$ and thus $exists f_n in L^1_mu$ such that
  each $f_n$ satisfies $A_N (f_n) -> integral f_n dif mu$ and $f_n-> chi_B$ in $L^1_mu.$

  Since $f_n -> chi_B$ in $L^1_mu,$ $integral f_n dif mu -> mu(B).$
  For any $epsilon > 0,$ we have an $N_1 in NN$ such that $norm(f_n - chi_B)_1 < epsilon$ and $abs(mu(B) - integral f_n dif mu) < epsilon$ for all $n > N_1.$ 
  Then, for all $N in NN$ and fixed an $n > N_1,$
  $
    norm(A_N (f_n) - chi_B)_1 = norm(1/N sum_(i=0)^(N-1) (f_n compose T^i - chi_B))_1 = 1/N norm(sum_(i=0)^(n-1) (f_n - chi_B) compose T^i)_1 <= 1/N (N dot.c epsilon) = epsilon.
  $
  Thus, for $N$ is large such that $norm(A_N (f_n) - integral f_n dif mu)_1 < epsilon,$
  $
    norm(chi_B - integral chi_B dif mu)_1 <= norm(chi_B - A_N (f_n))_1 + norm(A_N (f_n) - integral f_n dif mu)_1 + norm(integral f_n dif mu - integral chi_B dif mu)_1 < 3 epsilon.
  $
  Since $chi_B$ take values on ${0, 1},$ we have $mu(B) = integral chi_B dif mu in {0, 1}$ and $T$ is ergodic.
]

#pagebreak()
#exercise("2.5.4")[
  Show that
  $ lim_(N-M -> infinity) 1/(N-M) sum_(n=M)^(N-1) U^n_T f -> P_T f. $
]
#proof[
  Since $U_T$ is unitary and so continuous,
  $ lim_(N-M -> infinity) 1/(N-M) sum_(n=M)^(N-1) U^n_T f attach(=, b: k=N-M) U_T^M (lim_(k -> infinity) 1/(k) sum_(n=0)^(k-1) U^n_T f) -> U^m_T (P_T f). $
  Since $P_T f in I$ which is invariant subspace, $U^m_T P_T f = P_T f.$
]

#pagebreak()
#exercise("2.5.5")[
  For any set $B$ of positive measure in a measure-preserving system $(X, cal(B), mu, T),$
  $ E = {n in NN: mu(B inter T^(-n) B > 0)} $
  is syndetic:
  that is, there are finitely many integers $k_1, dots, k_s$ with the property that $NN subset union.big_(i=1)^s E - k_i.$
]
#proof[
  Suppose $B$ is a positive measure set,
  $ mu(B inter T^(-n) B) = integral chi_B compose T^n dot.c chi_B dif mu = inner(U_T^n chi_B, chi_B). $  
  By 2.5.4, we have
  $ lim_(N - M -> infinity) 1/(N-M) sum_(n=M)^(N-1) inner(U_T^n chi_B, chi_B) = inner(P_T chi_B, chi_B). $
  Since $P_T$ is orthogonal projection, $inner(P_T chi_B, chi_B) = norm(P_T chi_B)_2^2.$
  Also, since $P_T$ is orthogonal projection and thus self-adjoint,
  $inner(P_T chi_B, chi_X) = inner(chi_B, P_T chi_X) = inner(chi_B, chi_X) = mu(B)$
  since $chi_X$ is $T$-invariant.
  Then, by Cauchy inequality, $0 < mu(B)^2 = (inner(P_T chi_B, chi_X))^2 <= norm(P_T chi_B)_2^2 dot.c norm(chi_X)_2^2 = norm(P_T chi_B)_2^2.$

  For all $epsilon > 0,$ there is an $L in NN$ such that for all $M,$ $abs(1/(N-M) sum inner(U^n_T chi_B, chi_B) - inner(P_T chi_B, chi_B)) < epsilon$ for all $N >= L.$
  Take the $epsilon = mu(B)/2, $ we have $1/(L-M) sum inner(U_T^n chi_B, chi_B) > mu(B)/2 > 0$ for any $M.$
  Since each term is non-negative, the sum is greater than zero if there is some terms is positive. 
  That is, we have no consecutive $L$ intergers from any start point $M$ is not in $E.$
  Thus, take $s = L$ and $k_i = i$ and proved $E$ is syndetic.
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
  If $T$ is ergodic w.r.t. $mu,$ let $B in cal(B)^((K))$ be an $T^((K))$-invariant set.
  By the invariance, we have if $(x, k) in B$ for some $k,$ $(x, k) in B$ for all $k$ and $B|_X$ ($B$ restrict on $X$) should be $T$-invariant set.
  Thus, $mu^(K) (B) = mu(B|_X) in {0, 1}$ implies the ergodicity of $T^((K)).$

  If $T^((K))$ is ergodic w.r.t. $mu^((K)),$ and $B in cal(B)$ is $T$-invariant.
  Then $B^((K)) = {(x, k): x in B, k in {1, dots, k}}$ is $T^((K))$-invariant with measure $mu^((K)) (B^((K))) = mu(B) in {0, 1}.$
  Therefore, $T$ is ergodic.

  For $K > 1,$ $(T^((K)))^(K)$ is not ergodic with the invariant set ${(x, 1): x in B}$ for some invariant set $B$ of $T$ and thus $T^((K))$ is not totally ergodic.
]
