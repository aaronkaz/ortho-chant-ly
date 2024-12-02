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
    "Tone VIII, Troparion" 
  subtitle = \markup\bold\fontsize #1 
        {"Troparion of Unmercenaries Cosmas & Damian"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
} 


global = { 
  \key f \major 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
} 
move = { \bar "" \break }

soprano = 
\relative c' { 
  \global 
  f4 f g a bf bf a a a a a g2 f2 \bar "|"
  f4 g a bf bf a a a a a a g2 g f2 \bar "|"
  
  f4 g a bf bf a a a a bf2 bf a1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  c4 c e f f f f f f f f e2 c2 \bar "|"
  c4 e f f f f f f f f f e2 e c2 \bar "|"
  
  c4 e f f f f f f f e2 e f1 
}

tenor = 
\relative c' { 
  \global 
  a4 a c c d d c c c c c bf2 a2 \bar "|"
  a4 c c d d c c c c c c bf2 bf2 a2 \bar "|"
  
  a4 c c d d c c c c c2 c c1 \fermata \bar "||"
} 

bass = 
\relative c { 
  \global 
  f4 f c f bf, d f f f f f c2 f2 \bar "|"
  f4 c f bf, d f f f f f f c2 c f2 \bar "|"
  
  f4 c f bf, d f f f f c2 c f1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
   O ho -- ly un -- mer -- cen -- ar -- ies and won -- der wor -- kers
   Cos -- mas and Da -- mi -- an, vi -- sit ye our in -- fir -- mi -- ties
   Free -- ly ye have re -- ceived free -- ly give un -- to us
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
      instrumentName = \markup \center-column { "T" "B" } 
    } << 
      \clef bass 
      \new Voice = "tenor" { \voiceThree \tenor } 
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