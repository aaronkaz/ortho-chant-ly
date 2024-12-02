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
    "Tone IV, Kontakion" 
  subtitle = \markup\bold\fontsize #1 
        {"Kontakion of the Vladimir Icon"} 
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
  %1
  f4 g a bf bf a g2 f2 \bar "|"
  f4 g a a bf bf a g2 f2 \bar "|"
  f4 g a a bf bf a g2 g4 g f2 \bar "|"
  f4 g a a bf bf a bf2 bf4 bf a1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  % 1
  c4 e f f f f e2 c \bar "|"
  c4 e f f f f f e2 c \bar "|"
  c4 e f f f f f e2 e4 e c2 \bar "|"
  c4 e f f f f f e2 e4 e f1 \bar "||"
}

bass = 
\relative c { 
  \global 
  % 1
  f4 c f bf, d f c2 f \bar "|"
  f4 c f f bf, d f c2 f \bar "|"
  f4 c f f bf, d f c2 c4 c f2 \bar "|"
  f4 c f f bf, d f c2 c4 c f1 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  O Cham -- pion Lea -- der, "defender of" our souls,
  we joy -- ful -- ly ce -- le -- "brate the festival of thy meeting, O our Lady Theo" -- to -- kos
  for thou hast de -- liv -- ered "us from evils by the coming of thy" pre -- cious i -- con, 
  and as is meet we cry "unto thee: Rejoice, O" Bride Un -- wed -- ded.
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