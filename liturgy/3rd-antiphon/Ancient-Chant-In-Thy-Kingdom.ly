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
    "In Thy Kingdom" 
  subtitle = \markup\bold\fontsize #3.5 
    {"3rd Antiphon"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Ancient Chant"} 
  arranger = "English Arr: Aaron Kaczmarek"
  tagline = "In Thy Kingdom: Ancient Chant"   
} 

global = { 
  \key c \major 
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
  c4 c e2 e4 e d e f(e) d(f) e2 \bar "|"
  d4 d e e e e e d2 e1 \bar "|"
  
  e2 e4 e e d e f(e d f) e2 \bar "|"
  d4 d d d e e e d2 e1 \bar "|"
  
  e2 e4 e f(e) d(f) e2 \bar "|"
  d4 d e e d2 d2 e1 \bar "|"
  
  e2. e4 f(e) d(f) e2 \bar "|"
  d4 d e e d2 d4 d e1 \bar "|"
  
  e2 e4 e e e e e e e d e f(e) d(f) e2 \bar "|"
  d4 e2 d4 d e1 \bar "|"
  
  e2 e4 d e f(e) d(f) e2 \bar "|"
  d4 d e e e d2 e1 \bar "|"
  
  e2 e4 d e f(e) d(f) e2 \bar "|"
  d4 e2 d4 d e1 \bar "|"
  
  e2 e4 d e f(e) d(f) e2 \bar "|"
  d4 d e e e d2 d e1 \bar "|"
  
  e2 e4 e e e e e e e d e f(e) d f e2 \bar "|"
  d4 d d d e e e d2 e1 \bar "|"
  
  e2 e4 e e e e e e e d e f(e) d f e2 \bar "|"
  d4 d d d e e e e e e e e e e e d2 e1 \bar "|"
  
  c4 e2 e4 d e f(d) d f e2 \bar "|"
  d4 d d e e e e e d2 e1 \bar "|"
  
  e2 e4 d e f(e d f) e2 \bar "|"
  d4 d d e2 e4 e e e e d2 e1 \bar "|"
  
  c4 e2 e4 f(e d f) e2 \bar "|"
  d4 d d d e2 e4 e d2 d4 d e1 \bar "||"
} 

alto = 
\relative c' { 
  \global 
  a4 a c2 c4 c b c d(c) b(d) c2 
  b4 b c c c c c b2 a1
  
  c2 c4 c c b c d(c b d) b2
  b4 b b b c c c b2 a1
  
  c2 c4 c d(c) b(d) c2
  b4 b c c b2 b2 a1
  
  c2. c4 d(c) b(d) b2
  b4 b c c b2 b4 b a1
  
  c2 c4 c c c c c c c b c d(c) b(d) c2
  b4 c2 b4 b a1
  
  c2 c4 b c d(c) b(d) c2
  b4 b c c c b2 a1
  
  c2 c4 b c d(c) b(d) c2
  b4 c2 b4 b a1
  
  c2 c4 b c d(c) b(d) c2
  b4 b c c c b2 b a1
  
  c2 c4 c c c c c c c b c d(c) b d c2
  b4 b b b c c c b2 a1
  
  c2 c4 c c c c c c c b c d(c) b d c2
  b4 b b b c c c c c c c c c c c b2 a1
  
  a4 c2 c4 b c d(c) b d c2
  b4 b b c c c c c b2 a1
  
  c2 c4 b c d(c b d) c2
  b4 b b c2 c4 c c c c b2 a1
  
  a4 c2 c4 d(c b d) c2
  b4 b b b c2 c4 c b2 b4 b a1
} 

tenor = 
\relative c' { 
  \global 
  a4 a a2 a4 a a a a2 a2 a2 \bar "|"
  g4 g e e e e e g2 a1 \bar "|"
  
  a2 a4 a a a a a1 a2 \bar "|"
  g4 g g g e e e g2 a1 \bar "|"
  
  a2 a4 a a2 a2 a2 \bar "|"
  g4 g e e g2 g a1 \bar "|"
  
  a2. a4 a2 a a \bar "|"
  g4 g e e g2 g4 g a1 \bar "|"
  
  a2 a4 a a a a a a a a a a2 a a \bar "|"
  g4 e2 g4 g a1 \bar "|"
  
  a2 a4 a a a2 a a \bar "|"
  g4 g e e e g2 a1 \bar "|"
  
  a2 a4 a a a2 a a \bar "|"
  g4 e2 g4 g a1 \bar "|"
  
  a2 a4 a a a2 a a \bar "|"
  g4 g e e e g2 g a1 \bar "|"
  
  a2 a4 a a a a a a a a a a2 a4 a a2 \bar "|"
  g4 g g g e e e g2 a1 \bar "|"
  
  a2 a4 a a a a a a a a a a2 a4 a a2 \bar "|"
  g4 g g g e e e e e e e e e e e g2 a1 \bar "|"
  
  a4 a2 a4 a a a2 a4 a a2 \bar "|"
  g4 g g e e e e e g2 a1 \bar "|"
  
  a2 a4 a a a1 a2 \bar "|"
  g4 g g e2 e4 e e e e g2 a1 \bar "|"
  
  a4 a2 a4 a1 a2 \bar "|"
  g4 g g g e2 e4 e g2 g4 g a1 \bar "||"
} 

bass = 
\relative c { 
  \global 
  a4 a4 e'2 e4 e e e e2 e2 e2
  d4 d e e e e e d2 c1
  
  e2 e4 e e e e e1 e2
  d4 d d d e e e d2 c1
  
  e2 e4 e e2 e e
  d4 d e e d2 d c1
  
  e2. e4 e2 e e 
  d4 d e e d2 d4 d c1
  
  e2 e4 e e e e e e e e e e2 e e
  d4 e2 d4 d c1
  
  e2 e4 e e e2 e e 
  d4 d e e e d2 c1
  
  e2 e4 e e e2 e e 
  d4 e2 d4 d c1
  
  e2 e4 e e e2 e e
  d4 d e e e d2 d c1
  
  e2 e4 e e e e e e e e e e2 e4 e e2
  d4 d d d e e e d2 c1
  
  e2 e4 e e e e e e e e e e2 e4 e e2
  d4 d d d e e e e e e e e e e e d2 c1
  
  a4 e'2 e4 e e e2 e4 e e2
  d4 d d e e e e e d2 c1
  
  e2 e4 e e e1 e2
  d4 d d e2 e4 e e e e d2 c1
  
  a4 e'2 e4 e1 e2
  d4 d d d e2 e4 e d2 d4 d c1
} 

verse = \lyricmode { 
  In Thy king -- dom re -- mem -- ber us, __ O __ Lord,
  when Thou com -- est in -- to Thy king -- dom
  
  Bless -- ed are the poor in spi -- __ rit,
  for theirs is the king -- dom of hea -- ven
  
  Bless -- ed are they __ that __ mourn,
  for they shall be com -- for -- ted
  
  Bless --ed are __ the __ meek,
  for they shall in -- her -- it the earth
  
  Bless -- ed are they that hun -- ger and thirst af -- ter right __ -- eous __ -- ness,
  for they shall be filled
  
  Bless -- ed are the mer __ -- ci __ -- ful,
  for they shall ob -- tain mer -- cy
  
  Bless -- ed are the pure __ in __ heart,
  for they shall see God
  
  Bless -- ed are the peace __ ma __ -- kers,
  for they shall be called sons of God
  
  Bless -- ed are they that are per -- sec -- ut -- ed for right __ -- eous -- ness' sake,
  for theirs is the king -- dom of hea -- ven
  
  Bless -- ed are ye when men shall re -- vile you and per __ -- se -- cute you,
  and shall say all mann -- er of e -- vil a -- gainst you false -- ly for My sake
  
  Re -- joice and be ex -- cee -- ding -- ly glad,
  for great is your re -- ward in the hea -- vens
  
  Glo -- ry to the Fa __ -- ther,
  and to the Son and to the Ho -- ly Spi -- rit
  
  Both now and e __ -- ver
  and un -- to the a -- ges of a -- ges, A -- men
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
      \clef "treble_(8)"
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" "B2" } 
    } << 
      \clef bass 
      \new Voice = "tenor" { \voiceOne \tenor } 
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