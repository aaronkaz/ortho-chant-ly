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
        {"Kontakion of Martyrs Adrian & Natalia"} 
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
  %1
  a4 a4 a2 bf2 a2 \bar "|"
  % 2
  bf4 bf bf bf bf2 a2 \bar "|"
  
  % last 
  a4 a4 a2 g4 g a1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  % 1
  f4 f4 f2 g fs2 \bar "|"
  % 2
  g4 g g g g2 f!2 \bar "|"
  
  
  %last
  f4 f4 f2 e4 e f1 \bar "||"
}

bass = 
\relative c { 
  \global 
  % 1
  f4 f4 a2 g d2 \bar "|"
  % 2
  g4 g g g c,2 f2 \bar "|"
  
  %last
  f4 f4 f2 c4 c f1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  "The divine commemoration of the mar" -- tyrs hath shone forth
  "and radiantly illumined all the ends" "of the earth with the gladness of" 
  those who cry out
  
  "Thou art the joy of" the mar -- tyrs, O Christ!
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