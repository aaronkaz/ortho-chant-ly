\version "2.18.0" 
\include "english.ly" 
\include "gregorian.ly" 

\layout { 
  \context{ 
    \Score \override SpacingSpanner.packed-spacing = ##f 
  } 
  \context{ 
    \Lyrics \override LyricHyphen.minimum-distance = #2.25 
    \override LyricSpace.minimum-distance = #2.25 
  } 
} 

\header { 
  title = \markup\normal-text\fontsize #0.25 
    "Tone III, Octoechos" 
  subtitle = \markup\bold\fontsize #1 
        {"Dogmatic Theotokion"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Reader:"
          \bold "(Glory) Both now, The Dogmatic Theotokion in the 3rd Tone:"
          " "
          " "
        }
      }
  }
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
} 


global = { 
  \key g \major 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
} 
move = { \bar "" \break }

sop_refrain = 
\relative c'' { 
  \global 
  b4 b a(b) fs g a2 g4 g fs1 \fermata \bar "||"
}

alto_refrain = 
\relative c'' { 
  \global 
  g4 g fs(g) d e fs2 e4 e d1 \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  g4 g d2 d d2 a4 a d1 \bar "||"
}



refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Both now and ever, and unto" the a -- ges of a -- ges A -- men
}

soprano = 
\relative c'' { 
  \global 
  % 1
  a2 b4 c b2(a4 b a2) \bar "|" 
  % 2
  a4 a2 b4 g a2. g4 fs2 \bar "|"
  
  % 1
  a4 a2 b4 c b2 a4 b a2 \bar "|"
   % 2
  a4 a2 b4 g a2. g4 g fs2 \bar "|"
  
  % 1
  a4 a2 b4 c b2(a4 b) a2 \bar "|" 
  % 2
  a4 a2 b4 g a2.(g4 fs2) \bar "|"
  
  % 1
  a4 a2 b4 c b2 a4(b) a2 \bar "|" 
  % 2
  a2 b4 g a2.(g4) fs2 \bar "|"
  
  % 1
  a4 a2 b4 c b2 a4(b) a2 \bar "|" 
  
  % last 
  b4 a b fs(g) a2(g) fs1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  % 1
  fs2 g4 a g2(fs4 g fs2) \bar "|" 
  % 2
  fs4 fs2 g4 e fs2. e4 d2 \bar "|"
  
  % 1
  fs4 fs2 g4 a g2 fs4 g fs2 \bar "|" 
  % 2
  fs4 fs2 g4 e fs2. e4 e d2 \bar "|"
  
  % 1
  fs4 fs2 g4 a g2(fs4 g) fs2 \bar "|" 
  % 2
  fs4 fs2 g4 e fs2.(e4 d2) \bar "|"
  
  % 1
  fs4 fs2 g4 a g2 fs4(g) fs2 \bar "|"
  % 2
  fs2 g4 e fs2.(e4) d2 \bar "|"
  
  % 1
  fs4 fs2 g4 a g2 fs4(g) fs2 \bar "|"
  
  % last 
  g4 fs g d(e) fs2(e) d1 \bar "||"
}

bass = 
\relative c { 
  \global 
  % 1
  d2 g4 g g2(d4 g d2) \bar "|"
  % 2
  d4 d2 g4 g a2. a,4 d2 \bar "|"
  
  % 1
  d4 d2 g4 g g2 d4 g d2 \bar "|"
  % 2
  d4 d2 g4 g a2. a,4 a d2 \bar "|"
  
  % 1
  d4 d2 g4 g g2(d4 g) d2 \bar "|"
  % 2
  d4 d2 g4 g a2.(a,4 d2) \bar "|"
  
  % 1
  d4 d2 d4 g4 g2 d4(g) d2 \bar "|"
  % 2
  d2 g4 g a2.(a,4) d2 \bar "|"
  
  % 1
  d4 d2 d4 g4 g2 d4(g) d2 \bar "|"
  
  % last
  d4 d d d2 d2(fs) d1 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  How "can we" not marvel __
  "at thy" gi -- "ving birth to the God-man, O" all ho -- noured one? 
  
  "For with" -- out "having accepted the temptation of a man, O all-" im -- ma -- cu -- late one, 
  "without a" fa -- "ther thou gavest birth in" the flesh to a Son
  
  "Who was be" -- got -- "ten without a mother before" the a __ -- ges
  with -- out "His undergoing change, confusion or" di -- vision __
  
  and yet "preserving intact the character of" both es -- sen __ -- ces. 
  Where "fore, O Virgin Mother" and Mis __ -- tress,
  en -- treat "Him, that" the souls be __ saved
  
  "of them that in Orthodox manner confess thee to" be the Theo __ -- to __ -- kos.
}

% 
%
%
% 
% 
% 
%
%
%
%

\score {
  \header {
    piece = "refrain"
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" "A" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain } 
      \new Voice = "alto" { \voiceTwo \alto_refrain } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceThree \bass_refrain } 
    >> 
  >>
  \layout { 
    ragged-last=##t 
    #(layout-set-staff-size 22) 
    \context { 
      \Lyrics 
      \override VerticalAxisGroup.staff-affinity = ##f 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 2) 
           (padding . 2)) 
    } 
    indent = 1.25\cm 
    \context { 
      \Staff 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 2) 
           (padding . 2)) 
    } 
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" "A" } 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceFour \bass } 
    >> 
  >>
  \layout { 
    ragged-last=##t 
    #(layout-set-staff-size 22) 
    \context { 
      \Lyrics 
      \override VerticalAxisGroup.staff-affinity = ##f 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 2) 
           (padding . 2)) 
    } 
    indent = 1.25\cm 
    \context { 
      \Staff 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 2) 
           (padding . 2)) 
    } 
  } 
}