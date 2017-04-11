%{OOoLilyPondCode%}% By using this template you can use the full power of LilyPond.
% For more information plase read the LilyPond documentation:
% http://lilypond.org/doc/v2.12/Documentation/index.html (english)
% http://lilypond.org/doc/v2.12/Documentation/index.de.html (Deutsch)
% http://lilypond.org/doc/v2.12/Documentation/index.fr.html (français)

\include "deutsch.ly"
#(set-global-staff-size 20)

\paper {
  paper-width  = 17\cm
  paper-height = 8\cm

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
  indent = #0
  short-indent = \indent
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

{
\key e \major e'8 fis' gis' e' fis'4 h | e'2\fermata \bar "|."
}
% -------------------------------------------------------------------------------

#(define version-seen #t)  % don't remove, because
% the version warning has a slightly different format than normal error messages.
% This (still) would crash OLy's message handling...

\paper {
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
%{OOoLilyPondEnd%}