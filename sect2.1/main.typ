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

#set document(title: [Exercise for Sect. 2.1], author: "黃琦翔", date: datetime.today())
Written in #datetime.today().display() by Qi-Xiang, Huang.

#counter(heading).update(2)
= Exercise for Sect. 2.1
#exercise("2.1.1")[
 Show that the space $(TT, cal(B)_TT, m_TT)$ is isomorphic as a measure space to $(TT^2, cal(B)_(TT^2), m_(TT^2)).$
]
#proof[

]

#exercise("2.1.2")[
  Show that the measure-preserving system $(TT, cal(B)_TT, m_TT, T_4)$, 
  where $T_4 (x) = 4 x (mod 1)$, is measurably isomorphic to the product system 
  $(TT^2, cal(B)_(TT^2), m_(TT^2), T_2 times T_2).$
]

#proof[

]

#exercise("2.1.3")[
  For a map $T: X -> X$ and sets $A, B subset.eq X,$ prove the following.
  - $chi_A (T(x)) = chi_(T^(-1)(A)) (x);$
  - $T^(-1) (A inter B) = T^(-1) (A) inter T^(-1) (B);$
  - $T^(-1) (A union B) = T^(-1) (A) union T^(-1) (B);$
  - $T^(-1) (A laplace B) = T^(-1) (A) laplace T^(-1) (B).$
  Which of thexe properties also hold with the pre-image under $T^(-1)$ replaced by the forward image under $T$?
]
