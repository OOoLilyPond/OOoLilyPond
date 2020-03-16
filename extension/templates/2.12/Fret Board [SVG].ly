\include "predefined-guitar-fretboards.ly"

% add your own diagrams here:
% \storePredefinedDiagram \chordmode {c:9}
%                            #guitar-tuning
%                            #"x;3-2;2-1;3-3;3-4;x;"

mychords = \chordmode{
%{OOoLilyPondCode%}% For documentation about fret diagrams visit:
% http://lilypond.org/doc/stable/Documentation/notation/fretted-string-instruments

% Use the "Custom 2" field for image height of your musical snippet.

c c:m c:aug c:dim \break
c:7 c:maj c:m7
%{OOoLilyPondEnd%}
}

\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
<<
  \context ChordNames {
    \mychords
  }
  \context FretBoards {
    \mychords
  }
>>


#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)
#(define version-seen #t)

\paper {
  paper-width  = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
  paper-height = %{OOoLilyPondCustom2%}6 \cm%{OOoLilyPondEnd%}
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
% %{OOoLilyPondCustom2Label%}Image height:%{OOoLilyPondEnd%}