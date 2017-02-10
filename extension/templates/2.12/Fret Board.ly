\include "predefined-guitar-fretboards.ly"

% add your own diagrams here:
% \storePredefinedDiagram \chordmode {c:9}
%                            #guitar-tuning
%                            #"x;3-2;2-1;3-3;3-4;x;"

mychords = \chordmode{
%{OOoLilyPondCode%}% For documentation about fret diagrams visit:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings#Predefined-fret-diagrams (english)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings.de.html#Predefined-fret-diagrams (Deutsch)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings.fr.html#Predefined-fret-diagrams (français)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings.es.html#Predefined-fret-diagrams (español)

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
