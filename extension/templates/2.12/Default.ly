\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% For getting started read (copy URL into your web browser):
% https://github.com/openlilylib/LO-ly
% http://lilypond.org/doc/stable/Documentation/learning/simple-notation%
%
% Use the "Custom 1" to transpose your music expression. E. g. try "e a'".

\key e \major e8 fis gis e fis8 b,4. | e2\fermata \bar "|."
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

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}