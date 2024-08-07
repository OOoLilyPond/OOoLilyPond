\include "lilypond-book-preamble.ly"
#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)

\layout {
  indent = %{OOoLilyPondCustom1%}0 \mm%{OOoLilyPondEnd%}
  ragged-right = %{OOoLilyPondCustom3%}##t%{OOoLilyPondEnd%} 
}

% ------------------------------------------------------------
%{OOoLilyPondCode%}{
  \new PianoStaff {  % ChoirStaff {    % StaffGroup {
    <<
      \new Staff \relative c' {
        \clef "treble"
        \key c \major  % c \minor
        \time 4/4
        
        c4 d e f    g2 g
      }
      
      \addlyrics { do re mi fa so so }
      
      \new Staff \relative c {
        \clef "bass" 
        \key c \major  % c \minor
        \time 4/4
        
        c2 c4 d    e2 e
      }
      \addlyrics { do do re mi mi }
    >>
  }
}


\layout { 
  short-indent = \indent
  ragged-last = \ragged-right
}
%{OOoLilyPondEnd%}
% ------------------------------------------------------------

%                         #!  and  !#  enclose block comments in scheme.
%                                      just as  
%                         %{  and  %}  do in LilyPond expressions.

%   In your templates, you can use either of them for tags like "OOoLilyPondStaffSize" etc. 
%   On compilation, OLy will use scheme block comments for OOoLilyPondStaffSize (as above), 
%   all other tags will be written with LilyPond block comments. 

%   NOTE: A pair of tags cannot be used multiple times in a template!
%     Therefore the \remove "Bar_engraver" command is packed into a variable "OptionTwoFalseCommand"
%     that can be used multiple times without problems.
CustomTwoCommand = \with { instrumentName = \markup \fontsize %{OOoLilyPondCustom2%}#4    "1.)"%{OOoLilyPondEnd%} }
OptionTwoFalseCommand   = \with { %{OOoLilyPondOption2False%}\remove "Bar_engraver"%{OOoLilyPondEnd%} }
OptionThreeFalseCommand = \with { %{OOoLilyPondOption3False%}\remove "Time_signature_engraver"%{OOoLilyPondEnd%} }

\paper {
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
}

\layout {
  \context { 
    \Staff
    \OptionTwoFalseCommand
    \OptionThreeFalseCommand
    % \CustomTwoCommand
    \override Clef.full-size-change = ##t 
  }
  \context { \DrumStaff     \OptionTwoFalseCommand \OptionThreeFalseCommand}
  \context { \RhythmicStaff \OptionTwoFalseCommand \OptionThreeFalseCommand}
  \context { \TabStaff      \OptionTwoFalseCommand \OptionThreeFalseCommand}
  \context { \PianoStaff \OptionTwoFalseCommand \OptionThreeFalseCommand \CustomTwoCommand}
  \context { \ChoirStaff \OptionTwoFalseCommand \OptionThreeFalseCommand \CustomTwoCommand}
  \context { \StaffGroup \OptionTwoFalseCommand \OptionThreeFalseCommand \CustomTwoCommand}
  \context {
    \Score
    %      The code between the following two tags will be visible for LilyPond if Option3 is set to TRUE.
    %      (It will be commented out if Option3 is set to FALSE.)
    
    %{OOoLilyPondOption3True%}\numericTimeSignature%{OOoLilyPondEnd%}
    
    %      The code between the following two tags will be visible for LilyPond if Option4 is set to FALSE.
    %      (It will be commented out if Option4 is set to TRUE.)
    
    %{OOoLilyPondOption4False%}\remove "Bar_number_engraver"%{OOoLilyPondEnd%}
    
    \override BarNumber.break-visibility = #end-of-line-invisible
    \override BarNumber.self-alignment-X = #LEFT
    \override BreakAlignment.break-align-orders =
    #(make-vector 3 
       '( left-edge span-bar breathing-sign staff-bar
          clef key-cancellation key-signature time-signature
          ))
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

% %{OOoLilyPondCustom1Label%}Indent:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}#Size + "Name"%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom3Label%}Ragged-right%{OOoLilyPondEnd%}
% %{OOoLilyPondOption1Label%}Stems%{OOoLilyPondEnd%}
% %{OOoLilyPondOption2Label%}Bars%{OOoLilyPondEnd%}
% %{OOoLilyPondOption3Label%}Time signature%{OOoLilyPondEnd%}
% %{OOoLilyPondOption4Label%}Bar numbers%{OOoLilyPondEnd%}

% Even the "Line Width" and "Staff Size" labels can be changed: 
% use "OOoLilyPondLineWidthLabel" or "OOoLilyPondStaffSizeLabel" as above.
