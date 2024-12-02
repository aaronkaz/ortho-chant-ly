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
  title = \markup\bold\fontsize #0.75 
    "The Lord is King" 
  subtitle = \markup\bold\fontsize #1.5 
    {"Saturday Prokeimenon"} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"As sung by St. Innocent's Academy"} 
    
  arranger = \markup {
    \column {
        \left-align {
          "Transcribed by Aaron Kaczmarek"
          " "
          " "
        }
      }
  }
  tagline = "The Lord is King" 
} 

global = { 
  \key bf \major 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
} 
move = { \bar "" \break } 

tenor_one = 
\relative c' { 
  \global 
 
   d4 g4(a8 bf c4) bf4 a4(bf8 c) \bar "|"
   
   d4. ef8 d(c bf) c bf2(a a8) bf8 bf2 \bar "||"
} 

tenor_two = 
\relative c' { 
  \global 
  d4 g2. g4 f2 \bar "|"
  
  bf4. c8 bf(a g) a g2.(f4.) g8 g2 \bar "||"
} 

bass_one = 
\relative c { 
  \global 
  d4 g2. g4 f(d8 c) \bar "|"
  
  bf4. bf8 bf(c d) ef d4(g g f4.) g8 g2 \bar "||"
} 



verse = \lyricmode { 
  % Lyrics follow here. 
  The Lord __ is king __
  He is clothed __ with ma __ -- jes -- ty
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
      \new Voice = "tenor1" { \voiceOne \tenor_one } 
      \new Voice = "tenor2" { \voiceTwo \tenor_two } 
    >>
    \new Lyrics \lyricsto "tenor1" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_one } 
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