#import "@preview/muchpdf:0.1.2": muchpdf
#set page(margin: (x: 0pt, y: 0pt))

#muchpdf(
  read("sect2.1/main.pdf", encoding: none),
  pages: (start: 1),
  width: auto,
)

#muchpdf(
  read("sect2.2/main.pdf", encoding: none),
  pages: (start: 1),
  width: auto,
)

#muchpdf(
  read("sect2.3/main.pdf", encoding: none),
  pages: (start: 1),
  width: auto,
)
