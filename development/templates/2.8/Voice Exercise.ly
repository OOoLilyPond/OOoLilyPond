% use relative input mode
% Custom1: absolute pitch used as reference for first relative note

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

\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Example for music notation with lyrics.
% Smaller notes are used to indicate the targeted pitch range of the exercise
% Documentation about vocal music:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music (english)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.de.html (Deutsch) 
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.fr.html (français)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.es.html (español)

\relative e' {
 \time 3/4 \key e \major
 e8-. gis-. b-. cis-. b-. gis-. 
 e8( gis b cis b gis
 e2.)
 \bar "||"
 \set fontSize = #-4
  e4 \glissando c'
}
\addlyrics {
 o o o o o o
 o __ "" ""
}
\addlyrics {
 a a a a a a
 a __ "" ""
}%{OOoLilyPondEnd%}
}











