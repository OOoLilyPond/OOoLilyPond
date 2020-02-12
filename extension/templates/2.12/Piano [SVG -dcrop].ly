#(set-global-staff-size %{OOoLilyPondStaffSize%} 20 %{OOoLilyPondEnd%})
#(define version-seen #t)  

\paper {
  line-width = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
  
  % If LilyPond's default fonts are not installed and therefore "invisible" to other applications, 
  % you can define a replacement font here:

  % {
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{OOoLilyPondCode%}
{
  \new PianoStaff {
    <<
      \new Staff {c'4 d' e' f'    g'2 g'}
      \new Staff {\clef bass c2 c4 d    e2 e}
    >>
  }
}

% -------------------------------------------------------

\paper {
  short-indent = 0\cm
  indent = 0\cm
  ragged-right = ##t
}

\header {
  % tagline = ##f
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%{OOoLilyPondEnd%}
