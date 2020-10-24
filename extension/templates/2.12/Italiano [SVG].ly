\language "italiano"
\transpose %{OOoLilyPondCustom1%}do do'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% For getting started read (copy URL into your web browser):
% https://github.com/OOoLilyPond
% http://lilypond.org/doc/stable/Documentation/learning/simple-notation%

\key mi \major mi8 fad sold mi fad si,4. | mi2\fermata \bar "|."%{OOoLilyPondEnd%}
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