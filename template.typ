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

#set document(title: [Exercise for Sect. ], author: "黃琦翔", date: datetime.today())
Written in #datetime.today().display() by Qi-Xiang, Huang.

#counter(heading).update(2)
= Exercise for Sect. 
