%{OOoLilyPondCode%} #(set-global-staff-size 20)
#(define version-seen #t)  % don't remove, because
% the version warning has a slightly different format than normal error messages.
% This (still) would crash OLy's message handling...

\paper {
  paper-width  = 8\cm
  paper-height = 4\cm
  
  % If LilyPond's default fonts are not installed and therefore "invisible" to other applications, 
  % you can define a replacement font here:
  #(define fonts
    (set-global-fonts
      ; #:music "emmentaler"
      ; #:brace "emmentaler"
      ; #:roman "Century Schoolbook L"
      ; #:sans "sans-serif"
      ; #:typewriter "monospace"
      #:factor (/ staff-height pt 20)
  ))
  % taken from http://lilypondblog.org/2015/03/managing-alternative-fonts-with-lilypond/
}

\layout {
  indent = 2.5\mm
}

\paper {
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
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

% -------------------------------------------------------

{
  \new PianoStaff {
    <<
      \new Staff {c'4 d' e' f'    g'2 g'}
      \new Staff {\clef bass c2 c4 d    e2 e}
    >>
  }
}

%{OOoLilyPondEnd%} 