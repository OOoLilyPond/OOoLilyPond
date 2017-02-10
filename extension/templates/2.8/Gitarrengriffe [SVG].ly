#(ly:set-option (quote no-point-and-click)) 
  % Remove or comment out this command above if you use an external editor 
  % that supports point-and-click
                                              
\include "predefined-guitar-fretboards.ly"
\include "deutsch.ly"

% add your own diagrams here:
% \storePredefinedDiagram \chordmode {c:9}
%                            #guitar-tuning
%                            #"x;3-2;2-1;3-3;3-4;x;"

mychords = \chordmode{
%{OOoLilyPondCode%}%% Für Dokumentation zu Bund-Diagrammen siehe:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings.de.html#Predefined-fret-diagrams

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
#(define version-seen #t)  % don't remove, because
% the version warning has a slightly different format than normal error messages.
% This (still) would crash OLy's message handling...

\paper {
  #(define dump-extents #t)
  paper-width  = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
  paper-height = %{OOoLilyPondCustom2%}6\cm%{OOoLilyPondEnd%}
  indent = #0
  short-indent = \indent
  ragged-right = ##t
  
  left-margin   = 0
  right-margin  = 0
  top-margin    = 0
  bottom-margin = 0
  print-page-number = ##f
  
  page-count = 1
  
  % If LilyPond's default fonts are not installed and therefore "invisible" to other applications, 
  % you can define a replacement font here:

  % {
  % for LilyPond 2.19.11 and older, it only works like this:
  #(define fonts
     (make-pango-font-tree
      "Century Schoolbook L"	; adjust this font name according to your system
      "sans-serif"
      "monospace"
      (/ staff-height pt 20)))
  %}

  %{
  % for LilyPond 2.19.12 and newer, you can alternatively use and modify this:
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Century Schoolbook L"	; adjust this font name according to your system
      #:sans "sans-serif"
      #:typewriter "monospace"
      #:factor (/ staff-height pt 20)
  ))
  % taken from http://lilypondblog.org/2015/03/managing-alternative-fonts-with-lilypond/

  %}
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
