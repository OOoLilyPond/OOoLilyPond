\language "deutsch"
\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% Hilfen zum Einstieg (URL in Web-Browser kopieren):
% https://github.com/OOoLilyPond (Englisch)
% http://lilypond.org/doc/stable/Documentation/learning/simple-notation%

\key e \major e8 fis gis e fis h,4. | e2\fermata \bar "|."
%{OOoLilyPondEnd%}
}

% -------------------------------------------------------

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
      "TeXGyreSchola"           ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      "TeXGyreHeros"            ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      "TeXGyreCursor"           ; hier den Namen der Schriftart eingeben, die Sie auf Ihrem System verwenden möchten
      (/ staff-height pt 20)))
}                              % Diese 3 Schriftarten müssen auf Ihrem System installiert sein!

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