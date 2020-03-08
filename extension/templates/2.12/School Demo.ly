\layout {
  indent = %{OOoLilyPondCustom1%}0 \mm%{OOoLilyPondEnd%}
  ragged-right = %{OOoLilyPondCustom2%}##t%{OOoLilyPondEnd%} 
}

% ------------------------------------------------------------
%{OOoLilyPondCode%}% https://github.com/openlilylib/LO-ly/wiki/Understanding-templates#understanding-templates

\new Staff \relative c' {
  % \set Staff.instrumentName = \markup \fontsize #4 "a)"
  \clef "treble"  % "alto", "tenor", "bass", "treble_8", "treble^8", ...
  \key c \major  % c \minor
  \time 4/4
  % \cadenzaOn
  
  c4 d e f  g a b c
  
} 
\addlyrics { 
  do re mi fa so la ti do
}

% \new RhythmicStaff { c4   c8 c   c4   c }
% \addlyrics { "1"  "2"  "+"  "3"  "4" }

\layout { 
  short-indent = \indent
  ragged-last = \ragged-right
}
%{OOoLilyPondEnd%}
% ------------------------------------------------------------

\include "lilypond-book-preamble.ly"
#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)

%                         #!  and  !#  enclose block comments in scheme.
%                                      just as  
%                         %{  and  %}  do in LilyPond expressions.
%
%   In your templates, you can use either of them for tags like "OOoLilyPondStaffSize" etc. 
%   On compilation, OLy will use scheme block comments for OOoLilyPondStaffSize (as above), 
%   all other tags will be written with LilyPond block comments. 

OptionTwoFalseCommand = \with { %{OOoLilyPondOption2False%}\remove "Bar_engraver"%{OOoLilyPondEnd%} }
%   NOTE: A pair of tags cannot be used multiple times in a template!
%     Therefore the \remove "Bar_engraver" command is packed into a variable "OptionTwoFalseCommand"
%     that can be used multiple times without problems.

\paper {
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
}

\layout {
  \context { \Staff         \OptionTwoFalseCommand }
  \context { \DrumStaff     \OptionTwoFalseCommand }
  \context { \RhythmicStaff \OptionTwoFalseCommand }
  \context { \TabStaff      \OptionTwoFalseCommand }
  \context {
    \Score
    %      The code between the following two tags will be visible for LilyPond if Option3 is set to FALSE.
    %      (It will be commented out if Option3 is set to TRUE.)
    %{OOoLilyPondOption3True%}\numericTimeSignature%{OOoLilyPondEnd%}
    
    %      The code between the following two tags will be visible for LilyPond if Option3 is set to TRUE.
    %      (It will be commented out if Option3 is set to FALSE.)
    %{OOoLilyPondOption3False%}\remove "Time_signature_engraver"%{OOoLilyPondEnd%}

    %{OOoLilyPondOption4False%}\remove "Bar_number_engraver"%{OOoLilyPondEnd%}
    \override Score.BarNumber.break-visibility = #'#(#t #t #t)
  }
  \context {
    \Voice
    %{OOoLilyPondOption1False%}\remove "Stem_engraver"%{OOoLilyPondEnd%}
  }
}

% The following OOoLilyPond settings would cause compilation errors, 
% therefore they must be preceeded by a comment sign (%)!

% Values (##t or ##f) for CheckBoxes (Option1 ... Option4)

% %{OOoLilyPondOption1Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption2Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption3Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption4Value%}##f%{OOoLilyPondEnd%}

% Here you can define new labels for dialog control elements:

% %{OOoLilyPondCustom1Label%}indent:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}ragged-right%{OOoLilyPondEnd%}
% %{OOoLilyPondOption1Label%}Stems%{OOoLilyPondEnd%}
% %{OOoLilyPondOption2Label%}Bars%{OOoLilyPondEnd%}
% %{OOoLilyPondOption3Label%}Time signature%{OOoLilyPondEnd%}
% %{OOoLilyPondOption4Label%}Bar numbers%{OOoLilyPondEnd%}

% Even the "Line Width" and "Staff Size" labels can be changed: 
% use "OOoLilyPondLineWidthLabel" or "OOoLilyPondStaffSizeLabel" as above.
