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

% -------------------------------------------------------

#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)
#(define version-seen #t)

\paper {
  paper-width  = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
  paper-height = 8\cm
  indent = #0
  short-indent = \indent
  ragged-right = ##t
  
  left-margin   = 0
  right-margin  = 0
  top-margin    = 0
  bottom-margin = 0
  print-page-number = ##f
  
  page-count = 1
  
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
}                              % Those 3 font families have to be installed on your system

\header {
  tagline = ##f
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}\relative:%{OOoLilyPondEnd%}