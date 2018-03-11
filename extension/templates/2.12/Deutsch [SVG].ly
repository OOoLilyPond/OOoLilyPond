\include "deutsch.ly"
\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Hilfen zum Einstieg (URL in Web-Browser kopieren):
% https://github.com/openlilylib/LO-ly (Englisch)
% http://lilypond.org/doc/stable/Documentation/learning/simple-notation%

\key e \major e8 fis gis e fis h,4. | e2\fermata \bar "|."
%{OOoLilyPondEnd%}
}

% -------------------------------------------------------

#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})
#(define version-seen #t)  % nicht entfernen, denn
% die Warnung über eine fehlende Versionsangabe hat ein leicht anderes Format,
% das OLy beim Verarbeiten der Fehlermeldungen durcheinanderbringen würde.


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
  
  % Wenn die Standard-Text-Schriftart von LilyPond auf Ihrem System nicht installiert ist, 
  % und deshalb für andere Programme "unsichtbar" ist, 
  % können Sie hier eine andere Schriftart als Ersatz angeben:
  
  %{
  #(define fonts
     (make-pango-font-tree
      "TeXGyreSchola"           ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      "TeXGyreHeros"            ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      "TeXGyreCursor"           ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      (/ staff-height pt 20)))
  %}

  %{
  % Wenn Sie nur die Serif-Schriftart ersetzen möchten, während "sans" und "typewriter" unverändert bleiben sollen:
  #(define fonts
     (make-pango-font-tree
      "Century Schoolbook L"	; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      "sans-serif"              ; bleibt unverändert
      "monospace"               ; bleibt unverändert
      (/ staff-height pt 20)))
  %}

  %{
  % für LilyPond 2.19.12 und neuere Versionen können Sie auch das folgende anpassen:
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Century Schoolbook L"	; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      #:sans "sans-serif"           	; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      #:typewriter "monospace"      	; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      #:factor (/ staff-height pt 20)
  ))
  % gefunden auf http://lilypondblog.org/2015/03/managing-alternative-fonts-with-lilypond/

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
