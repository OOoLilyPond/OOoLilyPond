#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)
#(define version-seen #t)  

\paper {
  paper-width  = %{OOoLilyPondLineWidth%}8 \cm%{OOoLilyPondEnd%}
  paper-height = %{OOoLilyPondCustom2%}4 \cm%{OOoLilyPondEnd%}
  
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
}                              % Those 3 font families have to be installed on your system

\paper {
  indent = %{OOoLilyPondCustom1%}2.5 \mm%{OOoLilyPondEnd%}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{OOoLilyPondCode%}% Use "Custom 1" for indent
% Use "Custom 2" for paper height

% http://lilypond.org/doc/stable/Documentation/notation/keyboard-and-other-multi_002dstaff-instruments

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
  short-indent = \indent
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
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%{OOoLilyPondEnd%}

% %{OOoLilyPondCustom1Label%}Indent:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}Image height:%{OOoLilyPondEnd%}