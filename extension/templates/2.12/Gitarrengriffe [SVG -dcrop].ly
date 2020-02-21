\include "predefined-guitar-fretboards.ly"
\include "deutsch.ly"

% Eigene Griffbilder können hier ergänzt werden:
% \storePredefinedDiagram \chordmode {c:9}
%                            #guitar-tuning
%                            #"x;3-2;2-1;3-3;3-4;x;"

mychords = \chordmode{
  %{OOoLilyPondCode%}%% Für Dokumentation zu Bund-Diagrammen siehe:
  % http://lilypond.org/doc/stable/Documentation/notation/fretted-string-instruments
  
  c d:m e:aug f:dim \break
  g:7 a:maj h:m7%{OOoLilyPondEnd%}
}

\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
<<
  \context ChordNames { \germanChords
                        \mychords
  }
  \context FretBoards {
    \mychords
  }
>>


#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})
#(define version-seen #t)  

\paper {
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}

  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
}                              % Those 3 font families have to be installed on your system

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}