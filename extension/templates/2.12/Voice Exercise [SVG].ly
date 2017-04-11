\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Example for music notation with lyrics.
% Smaller notes are used to indicate the targeted pitch range of the exercise
% Documentation about vocal music:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music (english)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.de.html (Deutsch) 
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.fr.html (français)
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Vocal-music.es.html (español)

% Use the "Custom 1" to transpose your music expression. E. g. try "e a'".
% Use the "Custom 2" field for image height of your musical snippet.

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

% -------------------------------------------------------

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

  %{
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; adjust this font name according to your needs
      "TeXGyreHeros"            ; adjust this font name according to your needs
      "TeXGyreCursor"           ; adjust this font name according to your needs
      (/ staff-height pt 20)))
  %}

  %{
  % if you only want to specify a "roman" font and leave "sans" and "typewriter" untouched:
  #(define fonts
     (make-pango-font-tree
      "Century Schoolbook L"	; adjust this font name according to your needs
      "sans-serif"              ; (remains unchanged)
      "monospace"               ; (remains unchanged)
      (/ staff-height pt 20)))
  %}

  %{
  % for LilyPond 2.19.12 and newer, you can alternatively use and modify this:
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Century Schoolbook L"	; adjust this font name according to your needs
      #:sans "sans-serif"               ; adjust this font name according to your needs
      #:typewriter "monospace"          ; adjust this font name according to your needs
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
