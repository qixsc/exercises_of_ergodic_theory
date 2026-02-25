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
Last update in #datetime.today().display() by Qi-Xiang Huang.

= Exercise for Sect. 2.1
#exercise("2.1.1")[
 Show that the space $(TT, cal(B)_TT, m_TT)$ is isomorphic as a measure space to $(TT^2, cal(B)_(TT^2), m_(TT^2)).$
]
#proof[
  $f: 0.x_1 x_2 x_3 dots.c |-> (0.x_1 x_3 x_5 dots.c, 0.x_2 x_4 x_6 dots.c)$ is clearly a bijective function from $TT -> TT^2$.
]

#pagebreak()
#exercise("2.1.2")[
  Show that the measure-preserving system $(TT, cal(B)_TT, m_TT, T_4)$, 
  where $T_4 (x) = 4 x (mod 1)$, is measurably isomorphic to the product system 
  $(TT^2, cal(B)_(TT^2), m_(TT^2), T_2 times T_2).$
]

#proof[

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

]

#pagebreak()
#exercise("2.1.4")[
  Let $X$ be a compact abelian group and let $T: X -> X$ be a countinuous homomorphism.
  Does $T$ still preserve the Haar measure $m_X$ on $X$?
]

#proof[

]

#pagebreak()
#exercise("2.1.5")[
  + Find a measure-preserving system $(X, cal(B), mu, T)$ with a non-trivial factor map $phi: X -> X.$
  + Find an invertible measure-preserving system $(X, cal(B), mu, T)$ with a non-trivial factor map $phi: X -> X.$
]

#proof[

]

#pagebreak()
#exercise("2.1.6")[
  Prove that the circle rotation $R_alpha: TT -> TT, R_alpha (t) = t + a (mod 1)$ is not measurably isomorphic to the circle-doubling map $T_2: TT -> TT, T_2 (t) = 2t (mod 1)$.
]

#proof[

]

#pagebreak()
#exercise("2.1.7")[
  Let $frak(X) = (X, cal(B), mu, T)$ be any measure-preserving system.
  A sub-$sigma$-algebra $cal(A) subset.eq cal(B)_X$ with $T^(-1) cal(A) = cal(A)$ modulo $mu$ is called a $T$-_invarient sub-$sigma$-algebra_.
  Show that the system $tilde(frak(X)) = (tilde(X), tilde(cal(B)), tilde(mu), tilde(T))$ defined by 
  - $tilde(X) = {x in X^ZZ: x_(k+1) = T(x_k) "for all" k in ZZ};$
  - $(tilde(T)(x))_k = x_(k+1)$ for all $k in ZZ$ and $x in tilde(X);$
  - $tilde(mu)({x in tilde{X}: x_0 in A}) = mu(A)$ for any $A in cal(B),$ and $mu$ is invariant under $tilde(T);$
  - $tilde(B)$ is the smallest $tilde(T)$-invariant $sigma$-algebra for which the map $pi: x |-> x_0$ from $tilde(X)$ to $X$ is measurable;
  is an invertible measure-preserving system, and that the map $pi: x |-> x_0$ is a factor map.
  The system $tilde(frak(X))$ is called the invertible extension of $frak(X).$
]
#proof[

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
