\include "deutsch.ly"
\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Hilfen zum Einstieg (URL in Web-Browser kopieren):
% http://ooolilypond.sourceforge.net (Englisch)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.de.html

\key e \major e8 fis gis e fis h,4. | e2\fermata \bar "|."
%{OOoLilyPondEnd%}
}

\include "lilypond-book-preamble.ly"
#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})

\paper {
  #(define dump-extents #t)
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
