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
    "Tone IV, Troparion" 
  subtitle = \markup\bold\fontsize #1 
        {"Troparion of the Archangel Michael and the Bodiless Hosts"} 
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
\relative c'' { 
  \global 
  % 1
  a4 a4 a2 bf4 bf a2 \bar "|"
  % 2
  bf4 bf bf1 a2 \bar "|"
  
  % 1
  a4 a a2 bf2 a2 \bar "|"
  % 2
  bf4 bf bf1 a2 \bar "|"
  
  % 1
  a4 a4 a2 bf4 bf a2 \bar "|"
  % 2
  bf4 bf bf1 a2 \bar "|"
  
  % last 
  a4 a4 a2 g a1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  % 1
  f4 f4 f2 g4 g fs2 \bar "|"
  % 2
  g4 g g1 f!2 \bar "|"
  
  % 1
  f4 f f2 g2 fs2 \bar "|"
  % 2
  g4 g  g1 f!2 \bar "|"
  
  % 1
  f4 f4 f2 g4 g fs2 \bar "|"
  % 2
  g4 g g1 f!2 \bar "|"
  
  %last
  f4 f4 f2 e f1 \bar "||"
}

tenor = 
\relative c' { 
  \global 
  % 1
  c4 c4 c2 d4 d d2 \bar "|"
  % 2
  d4 d c1 c2 \bar "|"
  
  % 1
  c4 c c2 d d2 \bar "|"
  % 2
  d4 d c1 c2 \bar "|"

  % 1
  c4 c4 c2 d4 d d2 \bar "|"
  % 2
  d4 d c1 c2 \bar "|"
  
  %last
  c4 c4 c2 c c1 \fermata \bar "||"
} 


bass = 
\relative c { 
  \global 
  % 1
  f4 f4 a2 g4 g d2 \bar "|"
  % 2
  g4 g c,1 f2 \bar "|"
  
  % 1
  f4 f a2 g2 d2 \bar "|"
  % 2
  g4 g c,1 f2 \bar "|"

  % 1
  f4 f4 a2 g4 g d2 \bar "|"
  % 2
  g4 g c,1 f2 \bar "|"
  
  %last
  f4 f4 f2 c f1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  "Supreme Commanders of" the hea -- ven -- ly hosts
  "we unworthy ones" imp -- lore you
  
  "that by your supplications ye will" en -- cir -- cle us
  "with the shelter of the wings" "of your immaterial" glo -- ry
  
  "and guard us who fall down before you" and fer -- vent -- ly cry
  "Deliver us" from dan -- gers 
  
  "since ye are the Marshals of" the Hosts on high
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