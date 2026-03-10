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
= Exercise for Sect. 2.1
#exercise("2.1.1")[
 Show that the space $(TT, cal(B)_TT, m_TT)$ is isomorphic as a measure space to $(TT^2, cal(B)_(TT^2), m_(TT^2)).$
]
#proof[
  For any $x in TT,$ express $x$ in an infinite series $(x_i)_(i in NN)$ by $x_i$ is the $i$-th binary place of $x$.
  Let $D = {a/2^k: a, k in NN "and" a < 2^k}$ denote the set of dyadic rationals and $D$ is measure zero since $D$ is countable.
  Then, define $A^2 subset TT^2$ by $A^2 = T^2 without (TT times D union D times TT).$
  $A^2$ is measure $1$ since $D times TT$ and $TT times D$ are measure zero.
  In this construction, $A^2$ is the set only containing the points have infinitely many $0$ and $1$ digits.
  Define $f: 0.x_1 x_2 x_3 dots.c |-> (0.x_1 x_3 x_5 dots.c, 0.x_2 x_4 x_6 dots.c)$ and $A = f^(-1)(A^2).$
  $A$ is measurable and measure $1$ since $A = TT without (D union D_"odd" union D_"even")$ where the two sets stand for the set of points contiains fintely many $0$ or $1$ in odd or even digits.

  To prove $f$ is bimeasurable, define the cylender set $I_(x_1, x_2, dots, x_n) = {y in A: y_i = x_i "for" i <= n}$ and collection of the intervals $cal(S) := {I_(x_1, dots, x_n): x_i in {0, 1} "and" n in NN}$ which is a $pi$-system on $A$ that $sigma(cal(S)) = cal(B)_TT.$
  Similarly, $cal(S)^2 := {R_((x_1, dots, x_n), (y_1, dots, y_m))}$ where $R_((x_1, dots, x_n), (y_1, dots, y_m)) = {(z, w) in A^2: z_i = x_i, w_j = y_j "for" i <= n "and" j <=m}$ and $sigma(cal(S^2)) = cal(B)_(TT^2).$
  Then, we want to show $f$ and $f^(-1)$ maps the cylinder sets into measurable sets.

  Given an $I_(x_1, x_2, dots, x_(2k)),$ $f(I_(dots, x_(2k))) = R_((x_1, dots, x_(2k-1)), (x_2, dots, x_(2k))),$ 
  and given $I_(x_1, x_2, dots, x_(2k+1))$ get $f(I) = R_((dots, x_(2k+1)), (dots, x_2k)).$
  These two situation is trivially measurable.

  In contrast, for given $R_((dots, x_n), (dots, y_m)),$ we can divide it into finite disjoint union of cylinders $R_((dots, x_k), (dots, y_k))$ where $k <= max(n, m).$ 
  Then the preimage is easy to calculate, $f^(-1) (R_((dots, x_k), (dots, y_k))) = I_(x_1, y_1, dots, x_k, y_k)$ measurable.

  Last is to check if $f$ preserves measure.
  $m_TT (I_(dots, x_k)) = 2^(-k)$ and $m_(TT^2) (R_((dots, x_n), (dots, y_m))) = 2^(-n) times 2^(-m) = 2^(-n m).$
  From the result of mapping above, $f$ and $f^(-1)$ preserves measure on cylinder sets and thus preserves on all measurable sets.
  Thus, $(TT, cal(B)_TT, m_TT)$ is isomorphic as a measure space to $(TT^2, cal(B)_(TT^2), m_(TT^2)).$
]

#pagebreak()
#exercise("2.1.2")[
  Show that the measure-preserving system $(TT, cal(B)_TT, m_TT, T_4)$, 
  where $T_4 (x) = 4 x (mod 1)$, is measurably isomorphic to the product system 
  $(TT^2, cal(B)_(TT^2), m_(TT^2), T_2 times T_2).$
]

#proof[
  By the construction above, this is trivial by treating $T_k$ as moving all digit leftward $k$ times.
]

#pagebreak()
#exercise("2.1.3")[
  For a map $T: X -> X$ and sets $A, B subset.eq X,$ prove the following.
  - $chi_A (T(x)) = chi_(T^(-1)(A)) (x);$
  - $T^(-1) (A inter B) = T^(-1) (A) inter T^(-1) (B);$
  - $T^(-1) (A union B) = T^(-1) (A) union T^(-1) (B);$
  - $T^(-1) (A laplace B) = T^(-1) (A) laplace T^(-1) (B).$
  Which of thexe properties also hold with the pre-image under $T^(-1)$ replaced by the forward image under $T$?
]

#proof[
  The four are easy and after replacing, only union still holds.
]

#pagebreak()
#exercise("2.1.4")[
  Let $X$ be a compact abelian group and let $T: X -> X$ be a countinuous homomorphism.
  Does $T$ still preserve the Haar measure $m_X$ on $X$?
]

#proof[
  Let $T$ be the constant map from $X$ to identity of $X,$ $T$ satisfies the assumption and may not preserve measure if $X$ contains more than one elements.
]

#pagebreak()
#exercise("2.1.5")[
  + Find a measure-preserving system $(X, cal(B), mu, T)$ with a non-trivial factor map $phi: X -> X.$
  + Find an invertible measure-preserving system $(X, cal(B), mu, T)$ with a non-trivial factor map $phi: X -> X.$
]

#proof[
  + $X = {0, 1}^NN$ be the sample space of a infinite series of outcome of Bernoulli trials, and $cal(B)$ is the $sigma$-algebra generate by all cylinder sets.
    $mu$ is the Bernulli measure with probability $1/2$ and $1/2.$
    Define $T$ by $(T x)_n = x_(n+1)$ for $x in X$ which is the left shift map on $X$.
    Then, claim that $phi(x_n) = x_n + x_(n+1) mod 2$ is a non-trivial factor map on $X$ to itself.

    First, $phi$ is not an isomorphism since it maps two elements (one solution and its comjugate) to one element,
    and $phi$ is surjective since for $y in X, y = y+0 mod 2.$
    Then, $(phi compose T(x))_n = phi((T x)_n) = phi(x_(n+1)) = x_(n+1) + x_(n+2) mod 2 = (phi(x))_(n+1) = T((phi(x))_n) = (T compose phi (x))_n.$

    Last, for $C$ is an cylinder set given by ${x in X: x_(n_1) = c_1, dots, x_(n_k) = c_k}.$
    If $n_i$ and $n_j$ are not next to each other, the choice of each one won't affect to another one,
    so we can divides into not adjacency parts and multiply them after computing each part.
    Thus, we only focus on the situation that $n_j = n_i + 1,$ $n_l = n_j+1$ and so on.
    If $k = 1,$ $mu(phi^(-1)(C)) = 1/2 dot 1/2 + 1/2 dot 1/2 = 1/2 = mu(C)$($11$ and $00$ or $01$ and $10$.)
    If $k = 2,$ $mu(phi^(-1)(C)) = 1/2 dot 1/2 dot 1/2 dot 2 = 1/4 = mu(C)$ (the whole process actually depends on the first one.)
    In conclusion, $mu(phi^(-1)(C)) = mu(C)$ for all cylinder sets and thus $phi$ is measure-preserving on $cal(B)$.

  + Just modify $X$ into ${0, 1}^ZZ$, the other settings are still the same.
]

#pagebreak()
#exercise("2.1.6")[
  Prove that the circle rotation $R_alpha: TT -> TT, R_alpha (t) = t + a_alpha (mod 1)$ is not measurably isomorphic to the circle-doubling map $T_2: TT -> TT, T_2 (t) = 2t (mod 1)$.
]

#proof[
  Assume there is an isomorphic measurable function $phi: TT -> TT$ such that $R_alpha compose phi = phi compose T_2$ almost everywhere.
  Then, for almost every $x in (0, 1/2)$ satisfies the equation,
  $
    phi(x) + alpha mod 1 &= phi(2 x)\
    (phi(2 x) - phi(x)) mod 1 &= alpha\
    => cases(phi(2x) - phi(a) &= alpha, phi(2x) - phi(b) &= alpha-1),
  $
  where one of $a, b$ is $x$ and another is $x + 1/2.$
  Minus that two equations can get $phi(b) - phi(a) = 1$;
  however, it is impossible since range of $phi$ is $[0, 1).$
  Thus, the two map are not measurable isomorphic.
]

#pagebreak()
#exercise("2.1.7")[
  Let $frak(X) = (X, cal(B), mu, T)$ be any measure-preserving system.
  A sub-$sigma$-algebra $cal(A) subset.eq cal(B)_X$ with $T^(-1) cal(A) = cal(A)$ modulo $mu$ is called a $T$-_invarient sub-$sigma$-algebra_.
  Show that the system $tilde(frak(X)) = (tilde(X), tilde(cal(B)), tilde(mu), tilde(T))$ defined by 
  - $tilde(X) = {x in X^ZZ: x_(k+1) = T(x_k) "for all" k in ZZ};$
  - $(tilde(T)(x))_k = x_(k+1)$ for all $k in ZZ$ and $x in tilde(X);$
  - $tilde(mu)({x in tilde(X): x_0 in A}) = mu(A)$ for any $A in cal(B),$ and $tilde(mu)$ is invariant under $tilde(T);$
  - $tilde(cal(B))$ is the smallest $tilde(T)$-invariant $sigma$-algebra for which the map $pi: x |-> x_0$ from $tilde(X)$ to $X$ is measurable;
  is an invertible measure-preserving system, and that the map $pi: x |-> x_0$ is a factor map.
  The system $tilde(frak(X))$ is called the invertible extension of $frak(X).$
]
#proof[
  - Invertible: $(tilde(T)^(-1)(x))_k = x_(k-1)$ is clearly the inverse map, and $tilde(T)^(-1)$ is also measurable.
  - Measure-preserving: $tilde(mu)$ is invarant under $tilde(T)$ implies the measure-preserving condition.
  - Factor map: for any $x in tilde(X),$ $pi compose tilde(T)(x) = x_1 = T(x_0) = T(pi(x)).$
]

#pagebreak()
#exercise("2.1.8")[
  Show that the invertible extension $tilde(frak(X))$ of a measure-preserving system $frak(X)$ constructed above has the following universal property.
  For any extension
  $ phi: (Y, cal(B)_Y, nu, S) -> (X, cal(B)_X, mu, T) $
  for which $S$ is invertible, there exists a unique map
  $ tilde(phi): (Y, cal(B)_Y, nu, S) -> (tilde(X), tilde(cal(B)), tilde(mu), tilde(T)) $
  for which $phi = pi compose tilde(phi).$
]
#proof[
  Let $tilde(phi)(y_0) = (dots, phi(S^(-2) y_0), phi(S^(-1) y_0), phi(y_0), phi(S y_0), phi(S^2 y_0), dots)$,
  and $tilde(phi)$ satisfies $phi = pi compose tilde(phi).$
  Also, $tilde(phi) compose S = tilde(T) compose tilde(phi)$ and $tilde(phi) compose S^n = tilde(T^n) compose tilde(phi)$ for all $n in ZZ.$

  If there is another map $tilde(phi)'$ such that $phi = pi compose tilde(phi)',$
  for any $y in Y,$ $pi compose tilde(phi)'(y) = phi(y) = pi compose tilde(phi)(y).$
  Using the projection map and the property above,
  $
    (tilde(phi)'(y))_(k) = pi(tilde(T)^k compose tilde(phi) (y)) = pi(tilde(phi) compose S^n (y)) = (tilde(phi)(y))_k.
  $
  Thus, the map is unique.
]

#pagebreak()
#exercise("2.1.9")[
  + Show that the invertible extension of the circle-doubling map $T_2,$
    $ X_2 = {x in TT^ZZ: x_(k+1) = T_2 x_k "for all" k in ZZ}, $
    is a compact abelian group with respect to the coordinate-wise addition defined by $(x+y)_k = x_k + y_k$ for all $k in ZZ$, 
    and the topology inherited from the product topology on $TT^ZZ.$
  + Show that the diagonal embedding $delta(r) = (r, r)$ embeds $ZZ[1/2]$ as a descrete subgroup of $RR times QQ_2$,
    and that $X_2 tilde.equiv RR times QQ_2\/delta(ZZ[1/2]) tilde.equiv RR times ZZ_2\/ delta(ZZ)$ as compact abelian groups.
    In particular, the map $tilde(T)_2$ (which mau be thought of as the left shift on $X_2$, or as the map that doubles in each coordinate) is conjugate to the map 
    $ (s, r) + delta(ZZ[1/2]) |-> (2s, 2r) + delta(ZZ[1/2]) $
    on $RR times QQ_2\/delta(ZZ[1/2]).$
    The group $X_2$ constructed in this exercise is a simple example of a _solenoid_.
]

#proof[

]
