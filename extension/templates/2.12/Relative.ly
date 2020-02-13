\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
\relative %{OOoLilyPondCustom2%}g,%{OOoLilyPondEnd%} {
%{OOoLilyPondCode%}% This templates lets you enter notes in relative mode.
% See the LilyPond documentation:
% http://lilypond.org/doc/stable/Documentation/notation/pitches
% The start pitch you can specify in the "Custom 2" field.

\key g \major
\clef bass
g8 a b g c a d d, | g2 \bar "|."%{OOoLilyPondEnd%}
}

\include "lilypond-book-preamble.ly"
#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})

\paper {
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

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}\relative:%{OOoLilyPondEnd%}