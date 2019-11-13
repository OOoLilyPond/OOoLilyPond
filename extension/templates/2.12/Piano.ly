\include "lilypond-book-preamble.ly"
#(set-global-staff-size %{OOoLilyPondStaffSize%} 20 %{OOoLilyPondEnd%})
#(define version-seen #t)  % don't remove, because
% the version warning has a slightly different format than normal error messages.
% This (still) would crash OLy's message handling...

\paper {
  #(define dump-extents #t)
  line-width = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{OOoLilyPondCode%}
{
  \new PianoStaff {
    <<
      \new Staff {c'4 d' e' f'    g'2 g'}
      \new Staff {\clef bass c2 c4 d    e2 e}
    >>
  }
}

% -------------------------------------------------------

\paper {
  short-indent = 0\cm
  indent = 0\cm
  ragged-right = ##t
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%{OOoLilyPondEnd%}
