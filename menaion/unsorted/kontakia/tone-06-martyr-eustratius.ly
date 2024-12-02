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
    "Tone VI, Kontakion" 
  subtitle = \markup\bold\fontsize #1 
        {"Kontakion of the Martyr Eustratius"} 
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
  f4 f g a2 g \bar "|"
  e4 e(f) g2 f e \bar "|"
  
  f4 f g a2 g \bar "|"
  e4 e f g2 f e \bar "|"
  
  f4 f g a2 g \bar "|"
  e4 e f g2 f4 f e2 \bar "|"
  
  f4 f g a2 a g \bar "|"
  e4 e f g2 (f) e1 \fermata \bar "|"
}

alto = 
\relative c' { 
  \global 
  c4 c c f(fs) d2 
  c4 c2 c c c
  
  c4 c c f(fs) d2 
  c4 c c c2 c c
  
  c4 c c f(fs) d2 
  c4 c c c2 c4 c c2
  
  c4 c c f2 fs d2 
  c4 c c c1 c1
}

tenor = 
\relative c' { 
  \global 
  a4 a bf c2 bf \bar "|"
  g4 g(a) bf2 a g \bar "|"
  
  a4 a bf c2 bf \bar "|"
  g4 g a bf2 a g \bar "|"
  
  a4 a bf c2 bf \bar "|"
  g4 g a bf2 a4 a g2 \bar "|"
  
  a4 a bf c2 c bf \bar "|"
  g4 g a bf2 (a) g1 \fermata \bar "|"
} 


bass = 
\relative c { 
  \global 
  f4 f f f(d) g2
  c,4 c(f) e2 f c
  
  f4 f f f(d) g2
  c,4 c f e2 f c
  
  f4 f f f(d) g2
  c,4 c f e2 f4 f c2
  
  f4 f f f2 d g2
  c,4 c f e2 (f) c1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "A hand-wrought" "image ye would" not wor -- ship
  O thrice __ bless -- ed ones
  
  "but armed with the" Indescriba -- ble Ess -- ence
  "ye were glorified in" your or -- deal by fire
  
  "Standing in the midst" "of the irresistible flame, ye called" u -- pon God
  "Speed Thou" O Com -- pass -- ion -- ate One
  
  "and hasten as" Thou art Mer -- ci -- ful
  "to come unto our aid for Thou art able" if Thou will __ it
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