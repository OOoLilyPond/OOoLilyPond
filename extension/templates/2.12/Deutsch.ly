\language "deutsch"
\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Hilfen zum Einstieg (URL in Web-Browser kopieren):
% https://github.com/OOoLilyPond (Englisch)
% http://lilypond.org/doc/stable/Documentation/learning/simple-notation%

\key e \major e8 fis gis e fis h,4. | e2\fermata \bar "|."
%{OOoLilyPondEnd%}
}

\include "lilypond-book-preamble.ly"
#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)

\paper {
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
