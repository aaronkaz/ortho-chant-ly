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
    "It is Truly Meet" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Macedonian Melody"} 
    
  arranger = "Transcribed and Translated to English by Aaron Kaczmarek"
  tagline = ""
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

tenor_one = 
\relative c'' { 
  \global 
  a4 a f8(e) d1 \bar "|"
  g8(a bf4 a8 g f e f2) g8(a f a) a1 \bar "|"
  
  d,2 a'4(g f8 d e f) e2. d4 \bar "|"
  cs8.(d16 cs8 bf a4 cs) bf(a) g8(a bf4) a1 \bar "|"
  
  a'2 f8(e d4 g8 a bf4 a8 g f a) a4.(g8 f d e f) e1 \bar "|"
  f4(a) a8(c bf a g a bf4) a1 \bar "|"
  
  d,4 a'(g f8 d e f) e2. d4 \bar "|"
  cs8.(d16 cs8 bf a4 cs bf a) g8(a bf4 a1) \bar "|"
  
  a'2 f8 e d4 g8(a bf4) a8(g f e) f8(g f4) g8(a f a) a1 \bar "|"
  c2 b4(a) b8(d c b a gs f) a a1 \bar "|"
  
  d,2 a'4 g f8(d e f) e2. d4 \bar "|"
  cs8.(d16 cs8 bf a4 cs) bf(a g8 a bf4) a1 \bar "|"
  
  a'4 a f8(e d4 g8 a bf4) a8(g f a) a1 \bar "|"
  g2 c2 b8.(d16 c8 bf a2) bf4(a) f bf a1 \bar "|"
  
  d,4(a'2) g4 f g8.(bf16 a8 g f d e f) e1 \bar "|"
  a4(g8 f e4 d) cs8.(d16 cs8 bf a4) cs bf(a g8 a bf4) \bar "|"
  
  d2(f a4 f d2 bf' g a1) \bar "||"
} 


verse = \lyricmode { 
  % Lyrics follow here. 
  It is tru __ -- ly
  meet __ and __ right
  to bless __ thee O
  The __ -- o __ -- to __ -- kos
  E -- ver __ bless __ -- ed
  and __ most __ pure
  and Mo __ -- ther of
  our __ God __
  more hon' -- ra -- ble than __ the __ che __ -- ru __ -- bim
  and more __ glo __ -- ri -- ous
  be -- yond com -- pare __ than the
  se __ -- ra __ -- phim
  with -- out de __ -- file __ -- ment
  you gave birth __ to __ God the Word
  true __ The -- o -- to __ -- kos
  we __ mag __ -- ni -- fy __ 
  Thee __
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1"} 
    } <<
      \new Voice = "tenor1" { \voiceOne \tenor_one } 
    >>
    \new Lyrics \lyricsto "tenor1" \verse 
  >>
  \layout { 
    ragged-last=##t 
    #(layout-set-staff-size 22) 
    \context { 
      \Lyrics 
      \override VerticalAxisGroup.staff-affinity = ##f 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 0) 
           (padding . 0)) 
    } 
    indent = 1.25\cm 
    \context { 
      \Staff 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 0) 
           (padding . 0)) 
    } 
  } 
}