\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
{
  %{OOoLilyPondCode%}% Example for music notation with lyrics.
  % Smaller notes are used to indicate the targeted pitch range of the exercise
  % Documentation about vocal music:
  % http://lilypond.org/doc/stable/Documentation/notation/vocal-music
  
  % Use the "Custom 1" to transpose your music expression. E. g. try "e a'".
  
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
  }
  %{OOoLilyPondEnd%}
}

\include "lilypond-book-preamble.ly"
#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)

\paper {
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}