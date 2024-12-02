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
    "Tone II, Kontakion" 
  subtitle = \markup\bold\fontsize #1 
        {"Kontakion of Unmercenaries Cosmas & Damian"} 
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
  g4 a2 a4 bf c2(bf a) \bar "|"
  a4 a a g2 f2 \bar "|"
  
  g4 a2 a4 bf c2 bf a \bar "|"
  
  a4 g a bf2(a4) bf a2 g f1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  e4 f2 f4 f f1(f2)
  f4 f f e2 c
  
  e4 f2 f4 f f2 f f
  
  f4 d f f2. f4 f2 e c1 
}

tenor = 
\relative c' { 
  \global 
  c4 c2 c4 d ef2(d c) \bar "|"
  c4 c c bf2 a \bar "|"
  
  c4 c2 c4 d ef2 d c \bar "|"
  
  c4 bf c d2(c4) d c2 bf2 a1 \fermata \bar "||"
} 


bass = 
\relative c { 
  \global 
  c4 f2 f4 bf a2(bf f)
  f4 f f c2 f
  
  c4 f2 f4 bf a2 bf f
  
  f4 g f bf,2(f'4) bf, c2 c f1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  "Having re" -- ceived "the grace" of healings __

  "ye extend health to those" "in need O all-glorious physicians and" wonder wor -- kers

  By your "visitation cast down the audacity of" the e -- ne -- my

  hea -- ling the world __ with mi -- ra -- cles
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