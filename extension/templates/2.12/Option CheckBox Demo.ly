\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%} 
{
%{OOoLilyPondCode%}\key c \major

\relative c' {
  c4 d e f  g a b c
  c b a g   f e d c
  c4 d e f  g a b c
  c b a g   f e d c
  c4 d e f  g a b c
  c b a g   f e d c
  c4 d e f  g a b c
  c b a g   f e d c
} 
\addlyrics { 
  do re mi fa so la ti do
  do ti la so fa mi re do
  do re mi fa so la ti do
  do ti la so fa mi re do
  do re mi fa so la ti do
  do ti la so fa mi re do
  do re mi fa so la ti do
  do ti la so fa mi re do
}
%{OOoLilyPondEnd%}
}

\include "lilypond-book-preamble.ly"
#(set-global-staff-size #!OOoLilyPondStaffSize!# 20 #!OOoLilyPondEnd!#)

%                         #!  and  !#  enclose block comments in scheme.
%                                      just as  
%                         %{  and  %}  do in LilyPond expressions.
%
%   In your templates, you can use either of them for tags like "OOoLilyPondStaffSize" etc. 
%   On compilation, OLy will use scheme block comments for OOoLilyPondStaffSize (as above), 
%   all other tags will be written with LilyPond block comments. 

\paper {
  ragged-right = %{OOoLilyPondCustom2%}##t%{OOoLilyPondEnd%} 
  line-width = %{OOoLilyPondLineWidth%}17 \cm%{OOoLilyPondEnd%}
}

\layout {
  indent = 0 \cm
  \context {
    \Staff
    
%      The code between the following two tags will be visible for LilyPond if Option3 is set to FALSE.
%      (It will be commented out if Option3 is set to TRUE.)

    %{OOoLilyPondOption3False%}\remove "Time_signature_engraver"%{OOoLilyPondEnd%}
    
%      The code between the following two tags will be visible for LilyPond if Option3 is set to TRUE.
%      (It will be commented out if Option3 is set to FALSE.)

    %{OOoLilyPondOption3True%}\numericTimeSignature%{OOoLilyPondEnd%}
    
%      NOTE: A pair of tags cannot be used multiple times in a template!
    
    %{OOoLilyPondOption2False%}\remove "Bar_engraver"%{OOoLilyPondEnd%}
  }
  \context {
    \Score
    %{OOoLilyPondOption1False%}\remove "Bar_number_engraver"%{OOoLilyPondEnd%}
    \override Score.BarNumber.break-visibility = #'#(#t #t #t)
  }
  \context {
    \Voice
    %{OOoLilyPondOption4False%}\remove "Stem_engraver"%{OOoLilyPondEnd%}
  }
}

% The following OOoLilyPond settings would cause compilation errors, 
% therefore they must be preceeded by a comment sign (%)!

% Values (##t or ##f) for CheckBoxes (Option1 ... Option4)

% %{OOoLilyPondOption1Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption2Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption3Value%}##t%{OOoLilyPondEnd%}
% %{OOoLilyPondOption4Value%}##t%{OOoLilyPondEnd%}

% Here you can define new labels for dialog control elements:

% %{OOoLilyPondCustom1Label%}Transpose:%{OOoLilyPondEnd%}
% %{OOoLilyPondCustom2Label%}ragged-right%{OOoLilyPondEnd%}
% %{OOoLilyPondOption1Label%}Bar numbers%{OOoLilyPondEnd%}
% %{OOoLilyPondOption2Label%}Bars%{OOoLilyPondEnd%}
% %{OOoLilyPondOption3Label%}Time sig.%{OOoLilyPondEnd%}
% %{OOoLilyPondOption4Label%}Stems%{OOoLilyPondEnd%}

% Even the "Line Width" and "Staff Size" labels can be changed: 
% use "OOoLilyPondLineWidthLabel" or "OOoLilyPondStaffSizeLabel" as above.
