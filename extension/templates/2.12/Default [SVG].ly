#(ly:set-option (quote no-point-and-click)) 
  % Remove or comment out this command above if you use an external editor 
  % that supports point-and-click
                                              
\transpose %{OOoLilyPondCustom1%}c c'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% For getting started read (copy URL into your web browser):
% http://ooolilypond.sourceforge.net
% English:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation
% Deutsch:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.de.html
% Français:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.fr.html
% Español:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.es.html
%
% Use the "Custom 1" to transpose your music expression. E. g. try "e a'".
% Use the "Custom 2" field for image height of your musical snippet.

\key e \major e8 fis gis e fis8 b,4. | e2\fermata \bar "|."
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

  % {
  % for LilyPond 2.19.11 and older, it only works like this:
  #(define fonts
     (make-pango-font-tree
      "Century Schoolbook L"	; adjust this font name according to your system
      "sans-serif"
      "monospace"
      (/ staff-height pt 20)))
  %}

  %{
  % for LilyPond 2.19.12 and newer, you can alternatively use and modify this:
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Century Schoolbook L"	; adjust this font name according to your system
      #:sans "sans-serif"
      #:typewriter "monospace"
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
