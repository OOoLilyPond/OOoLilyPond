#(set-global-staff-size %{OOoLilyPondStaffSize%} 20 %{OOoLilyPondEnd%})
#(define version-seen #t)  

\paper {
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
  
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
}                              % Those 3 font families have to be installed on your system

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
