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
    "Bless the Lord" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Moscow chant in the"
          "harmony of Fr. Sarina"
          "English arrangment"
          "by Aaron Kaczmarek"
          " "
        }
      }
  }
    
  tagline = "Vigil: Bless the Lord" 
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

tenor_one = 
\relative c'' { 
  \global 
  c4 c \bar "|" c2 \bar"|" c4 c c \bar "|" c1( \bar "|" e4 d8 c d4) d \bar "|" c2 \bar"|"
  %refrain 1
  r8 e8 d c \bar "|" f4.(e8 f4 e8 d \bar "|" c4) e d(e8 d) \bar "|" c4.(d8 e4 f \bar "|" e d8 c d4) d \bar "|" e2. \fermata r4 \bar "||"
  
  c1 \bar "|" c4. c8 c2 c4 c4 c \bar "|" c4. c8 c4 c \bar "|" e(d8 c d4) d \bar "|" e2 r2 \bar "|"
  %refrain 1
  r8 e8 d c \bar "|" f4.(e8 f4 e8 d \bar "|" c4) e d(e8 d) \bar "|" c4.(d8 e4 f \bar "|" e d8 c d4) d \bar "|" e2. \fermata r4 \bar "||"
  
  c2. \bar "|" d2.(e8 d) \bar "|" c2 c4 c c \bar "|" c1 \bar "|" c2 c4 c \bar "|" c4. d8 e4(f) \bar "|" e4(d8 c) d4 d \bar "|" e1 \bar "|"
  %refrain 2
  f4.(e8 f4 e8 d \bar "|" c4) e d e8(d) \bar "|" c4.(d8 e4 f) \bar "|" e4(d8 c d4) d \bar "|" e1 \fermata \bar "||"
  
  c4 c c c \bar "|" d2. e8(d) \bar "|" c2 c4 c \bar "|" c2 c4 c \bar "|" c2 c8 c8 c c \bar "|" c4.(d8) e4 f \bar "|" e(d8 c d2) \bar "|" e1 \bar "|"
  %refrain 2
  f4.(e8 f4 e8 d \bar "|" c4) e d e8(d) \bar "|" c4.(d8 e4 f) \bar "|" e4(d8 c d4) d \bar "|" e1 \fermata \bar "||"
  
  c2 c4 c \bar "|" d4. d8 d4 e8(d) \bar "|" c2 c \bar "|" c1 \bar "|" c2 c4 c c8 c \bar "|" c4. d8 e4(f) \bar "|" e4(d8 c d4) d4 \bar "|" c8(e d e) \bar "|"
  %refrain 3
  f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d) \bar "|" c4.(d8 e4 f \bar "|" e4 d8 c d2) \bar "|" c2 \bar "|"
  c2. c8(d) \bar "|" e4 e d e8 d \bar "|" c4.(d8 e4 f) \bar "|" e (d8 c d2) \bar "|" d4 e2. \fermata \bar "||"
  
  c1 \bar "|" d2. e8(d) \bar "|" c2 c c4 \bar "|" c2. c4 \bar "|" c2 c2 \bar "|" c4.(d8 e4 f) \bar "|" e4 d8 c d4 d \bar "|" c8(e d e) \bar "|"
  %refrain 3
  f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d) \bar "|" c4.(d8 e4 f \bar "|" e4 d8 c d2) \bar "|" c2 \bar "|"
  c2. c8(d) \bar "|" e4 e d e8 d \bar "|" c4.(d8 e4 f) \bar "|" e (d8 c d2) \bar "|" d4 e2. \fermata \bar "||"
  
  e4 e e2 \bar "|"
  
  e4 e2 e4 e2 \bar "|"
  e4 e2 e4 e2 \bar "|"
  e4 f2 f2 e1 \fermata \bar "|"
} 

tenor_two = 
\relative c'' { 
  \global 
  c4 c c2 c4 c c c1(c2.) b4 c2
  r8 c8 b c c1(c4) c b(c8 b)
  a4.(b8 c2 c2.) b4 c2. r4
  
  c1 c4. c8 c2 c4 c c c4. c8 c4 c c2. b4 c2 r2
  r8 c8 b c c1(c4) c b(c8 b)
  a4.(b8 c2 c2.) b4 c2. r4
  
  g2(a4) a2.(b4) c2 c4 c c c1 c2 c4 c c4. c8 c2 c c4 b c1
  c1(c4) c4 b c8(b) a4.(b8 c2) c2. b4 c1
  
  g4 g g a a2. b4 c2 c4 c c2 c4 c c2 c8 c c c c2 c4 c c2. b4 c1
  c1(c4) c4 b c8(b) a4.(b8 c2) c2. b4 c1
  
  g2 g4 a4 a4. a8 a4 b c2 c c1 c2 c4 c c8 c8 c4. c8 c2 c2. b4 c2
  c1 c4 c b(c8 b) a4.(b8 c2 c2. b4) c2
  c2. c8(b) c4 c b c8 b a4.(b8 c2) c1 b4 c2.
  
  g2.(a4) a2. b4 c2 c2 c4 c2. c4 c2 c2 c1 c4 c8 c c4 b c2
  c1 c4 c b(c8 b) a4.(b8 c2 c2. b4) c2
  c2. c8(b) c4 c b c8 b a4.(b8 c2) c1 b4 c2.
  
  c4 c c2 
  c4 c2 c4 c2
  c4 c2 c4 c2
  c4 b2 b c1
} 

bass_one = 
\relative c { 
  \global 
  e4 f \bar "|" g(f8 g) \bar "|" a4 g f \bar "|" e4.(f8 g4 a \bar "|" g2.) g4 \bar "|" e2 \bar "|"
  r8 g8 g g \bar "|" a4.(g8 a4 g8 a \bar "|" g8 f) g4 g2 \bar "|" a4.(b8 c4 a \bar "|" g2.) g4 \bar "|" g2. r4 \bar "||"
  
  e2.( f4) \bar "|" g4. f8 e2 e4 e4 f \bar "|" g4. f8 e4 a4 \bar "|" g2. g4 \bar "|" g2 r2 \bar "|"
  r8 g8 g g \bar "|" a4.(g8 a4 g8 a \bar "|" g8 f) g4 g2 \bar "|" a4.(b8 c4 a \bar "|" g2.) g4 \bar "|" g2. r4 \bar "||"

  e2. \bar "|" f4.(g8 a4 g4) \bar "|" g2 e4 e f \bar "|" g4.(f16 g a4 g) \bar "|" g2 e4 f \bar "|" g4. f8 g4(a) \bar "|" g2 g4 g \bar "|" g1 \bar "|"
  a4.(g8 a4 g8 a \bar "|" g8 f) g4 g g \bar "|" a4.(b8 c4 a) \bar "|" g2. g4 \bar "|" g1 \bar "||"
  
  e4 e e e \bar "|" f4.(g8 a4) g \bar "|" g2 e4 f \bar "|" g4.(f16 g) a4 g \bar "|" g2 e8 e8 e f \bar "|" g4.(f8) g4 a \bar "|" g1 \bar "|" g1 \bar "|"
  a4.(g8 a4 g8 a \bar "|" g8 f) g4 g g \bar "|" a4.(b8 c4 a) \bar "|" g2. g4 \bar "|" g1 \bar "||"
 
  e2 e4 e \bar "|" f4. g8 a4 g \bar "|" e2 e4(f) \bar "|" g4.(f16 g a4 g4) \bar "|" g2 e4 e e8 f \bar "|" g4. f8 g4(a) \bar "|" g2. g4 \bar "|" e8(g f g) \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2 \bar "|" a4.(b8 c4 a \bar "|" g1) \bar "|" e8(g f8 g) \bar "|"
  a4.( g8 a4) g \bar "|" g4 g g g8 g \bar "|" a4.(b8 c4 a) \bar "|" g1 \bar "|" g4 g2. \bar "||"
  
  e1 \bar "|" f4.(g8 a4) g \bar "|" e2 e4(f) g \bar "|" g4.(f16 g a4) g \bar "|" g2 e4(f) \bar "|" g4.(f8 g4 a) \bar "|" g4 f8 e f4 g \bar "|" e8(g f g) \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2 \bar "|" a4.(b8 c4 a \bar "|" g1) \bar "|" e8(g f8 g) \bar "|"
  a4.( g8 a4) g \bar "|" g4 g g g8 g \bar "|" a4.(b8 c4 a) \bar "|" g1 \bar "|" g4 g2. \bar "||"

  g4 g g2 \bar "|"
  
  g4 g2 g4 g2 \bar "|"
  g4 g2 g4 g2 \bar "|"
  g4 a2 a2 g1 \bar "|"
} 

bass_two = 
\relative c { 
  \global 

} 


verse = \lyricmode { 
Bless the Lord __ O my soul, bless __ the Lord
Bless -- ed art thou __ O Lord, bless __ the Lord
O __ Lord my God, thou hast been mag -- ni -- fied ex -- cee __ -- ding -- ly
Bless -- ed art thou __ O Lord, bless __ the Lord

Who mak __ -- eth His an -- gels spir __ -- its, and His mi -- ni -- sters a flame of fire
glor __ -- i -- ous are thy __ works o Lord
Who es -- tab -- lish -- eth __ the earth and the sure __ -- ness there -- in, it shall not be turned __ back for -- e __ -- ver
glor __ -- i -- ous are thy __ works o Lord

Af -- ter your spi -- rit they shall be cre __ -- a __ -- ted and Thou shalt re -- new the face __ of the earth __
Glo __ -- ry to thee O __ Lord __ glory __ to __ thee O Lord who cre -- a __ -- ted __ them all

How glor __ -- i -- ous are __ Thy works __ O Lord, in __ wis __ -- dom hast Thou made them all __
Glo __ -- ry to thee O __ Lord __ glory __ to __ thee O Lord who cre -- a __ -- ted __ them all

\override LyricText.self-alignment-X = #LEFT
"Glory... Both now..." A -- men.
"Aleluia Aleluia Aleluia Glory to" Thee our God
"Aleluia Aleluia Aleluia Glory to" Thee our God
"Aleluia Aleluia Aleluia Glory to" Thee our God
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
      \new Voice = "bass2" { \voiceTwo \bass_two } 
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