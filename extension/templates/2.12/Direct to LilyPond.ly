%{OOoLilyPondCode%}% By using this template you can use the full power of LilyPond.
% For more information plase read the LilyPond documentation:
% http://lilypond.org/doc/stable/Documentation/notation/index

\include "lilypond-book-preamble.ly"
\language "deutsch"
#(set-global-staff-size 20)

\paper {
  ragged-right = ##t
  line-width = 17\cm
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

{
\key e \major e'8 fis' gis' e' fis'4 h | e'2\fermata \bar "|."
}
%{OOoLilyPondEnd%}