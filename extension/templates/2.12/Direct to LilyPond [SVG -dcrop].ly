% This template file is exactly the same as "Direct to LilyPond [SVG].ly"

%{OOoLilyPondCode%}% By using this template you can use the full power of LilyPond.
% For more information plase read the LilyPond documentation:
% http://lilypond.org/doc/stable/Documentation/notation/index

\include "deutsch.ly"
#(set-global-staff-size 20)

\paper {
  paper-width  = 17\cm
  paper-height = 8\cm

  ragged-right = ##t

  left-margin   = 0
  right-margin  = 0
  top-margin    = 0
  bottom-margin = 0
  print-page-number = ##f

  page-count = 1
}

\header {
  tagline = ##f
}

\layout {
  indent = #0
  short-indent = \indent
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

{
\key e \major e'8 fis' gis' e' fis'4 h | e'2\fermata \bar "|."
}
% -------------------------------------------------------------------------------

#(define version-seen #t)

\paper {
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
}                              % Those 3 font families have to be installed on your system
%{OOoLilyPondEnd%}