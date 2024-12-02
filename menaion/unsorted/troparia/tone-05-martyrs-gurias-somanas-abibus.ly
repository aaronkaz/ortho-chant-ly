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
    "Tone V, Troparion" 
  subtitle = \markup\bold\fontsize #1 
        {"Troparion of the Martyrs Gurias, Samonas, and Abibus"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
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

soprano = 
\relative c'' { 
  \global 
  % 1
  a4 a2 a4 a g a b2 g2 \bar "|"
  %2
  b4 b a b2 a \bar "|"
  %3 
  a4 a2 a4 a fs g(a g fs) e2 \bar "|"
  
  % 1
  a4 a2 a4 a g a b2 g2 \bar "|"
  
  %last
  b4 b a2 g4 fs2 g4 fs e1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  % 1
  fs4 fs2 fs4 fs4 e fs g2 d 
  %2
  g4 g g g2 fs
  %3
  fs4 fs2 fs4 fs fs e1 e2
  
  % 1
  fs4 fs2 fs4 fs4 e fs g2 d 
  
  %last
  g4 g d2 d4 d2 d4 ds b1
}

tenor = 
\relative c' { 
  \global 
  % 1
  d4 d2 d4 d b d d2 b \bar "|"
  %2
  d4 d d d2 d \bar "|"
  %3
  c4 c2 c4 c a b(c b a) g2 \bar "|"
  
  % 1
  d'4 d2 d4 d b d d2 b \bar "|"
  
  %last
  d4 d4 c2 b4 a2 b4 a g1 \fermata \bar "||"
} 


bass = 
\relative c { 
  \global 
  % 1
  d4 d2 d4 d e d g2 g2
  %2
  g4 g g g2 d
  %3
  d4 d2 d4 d d e1 e2
  
  % 1
  d4 d2 d4 d e d g2 g2
  
  %last
  g4 g fs2 g4 d2 b4 d e1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  "O Christ" God "Thou hast given us an im" -- preg -- na -- ble ram -- part

  "in the miracles of Thy" ho -- ly mar -- tyrs

  "Through their suppli" -- ca -- "tions destroy Thou the councils" of the hea __ -- then

  and streng -- "then the" scep -- ters of king -- doms

  "in that Thou" art good and lo -- vest man -- kind
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