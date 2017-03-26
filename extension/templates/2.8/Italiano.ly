\include "italiano.ly"
\transpose %{OOoLilyPondCustom1%}do do'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% For getting started read (copy URL into your web browser):
% https://github.com/openlilylib/LO-ly
% English:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation
% Deutsch:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.de.html
% Français:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.fr.html
% Español:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.es.html

\key mi \major mi8 fad sold mi fad si,4. | mi2\fermata \bar "|."
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
