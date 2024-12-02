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
    "Anaphora" 
  subtitle = \markup\bold\fontsize #3.5 
    {"We praise Thee... (Slavonic)"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Znamenny Anaphora"} 
} 

global = { 
  \key g \minor 
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
  g4 bf4. a8 bf2 \bar "|"
  g4 bf4. bf8 bf a bf2 \bar "|"
  g4 bf4. bf8 bf a bf2 \bar "|"
  g4(a) g8(f) g2 \bar "|"
  a4(bf) c2 c c4(bf) a2 bf1 a1 g8(a bf a bf2 a g1) \bar "||"
} 

alto = 
\relative c' { 
  \global 
  % Music follows here. 
  bf4 d4. c8 d2 \bar "|"
  bf4 d4. d8 d c d2 \bar "|"
  bf4 d4. d8 d c d2 \bar "|"
  d2 d4 d2 \bar "|"
  g2 g g g d f1 ef1 d1(ef4 d d1)
} 

bass = 
\relative c' { 
  \global 
  % Music follows here. 
  g4 g4. g8 g2 \bar "|"
  g4 g4. g8 g g g2 \bar "|"
  g4 g4. g8 g g g2 \bar "|"
  g2 g4 g2 \bar "|"
  g2 g g g g d1 c1 g'1(g2 g1) \bar "||"
} 

tenor = 
\relative c' { 
  \global 
  % Music follows here. 
  g4 g4. g8 g2 \bar "|"
  g4 g4. g8 g g g2 \bar "|"
  g4 g4. g8 g g g2 \bar "|"
  g2 g4 g2 \bar "|"
  c4 (d) ef2 ef ef4 (d) c2 
  bf1 c2(a) bf8(c d c d2 c bf1) \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  Teb -- yeh  po -- yem
  Teb -- yeh Bla -- go -- sla -- veem
  Teb -- yeh Bla -- go -- da -- reem
  Gos __ -- po__ -- di
  ee __ mo -- leem tee __ sya bo -- jhe nash __
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "Soprano" "Alto"} 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "Tenor/Bass" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceOne \tenor } 
      \new Voice = "bass" { \voiceTwo \bass } 
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