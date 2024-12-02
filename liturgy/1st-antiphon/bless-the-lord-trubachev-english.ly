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
    "Bless the Lord O my Soul" 
  subtitle = \markup\bold\fontsize #3.5 
    {"1st Antiphon"} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Deacon C. Trubachev"} 
  arranger = "English Arr: Aaron Kaczmarek"
  tagline = "Bless the Lord O my Soul: Trubachev"   
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
\relative c'' { 
  \global 
  c2 d4 e2(d4 e) f2 f4 e2  \breathe
  e4 e f g(f e) e d2 d4 e2 \bar "|"
  
  c2 d4 e2(d4 e) f2 f4 e2  \breathe
  e4(f) g f e e e e d c d2 d4 c2 \bar "|"
  
  c2 d4 e2(d4 e) f2 f4 e2  \breathe
  e4 f g f e e e d2 d4 e2 \bar "|"
  
  e4 f g g g f f c d e2  \breathe
  e4(f) g f e e e d2(d4) e2 \bar "|"
  
  c4 d e d e f2 f4 e2  \breathe
  f4 g2 f4 e e e d c d2(d4) e2 \bar "|"
  
  e4(f) g g g g g g g f2 c4 d e2  \breathe
  e4 e f g f e e e e d2(d4) e2 \bar "|"
  
  g4 g2 f4 g a a a a a a g2  \breathe
  e4(f) g f e e e e d2(d4) e2 \bar "|"
  
  c2 d4 e2(d4 e) f2 f4 e2  \breathe
  e4(f) g f e e e e d e f2 c4(d) e2 \bar "|"
  
  e2(f4 g f) e e d2 d2 e1 \fermata \bar "||"
  
  e2^\markup { \bold { Small Litany } }(d4) e f2 e2 \bar "||"
  e2(d4) c d2 c2 \bar "||"
  e2 f1 e4(f e d) c1 \bar "||"
  c2 d1(e) \bar "||"
} 

alto = 
\relative c'' { 
  \global 
  c2 c4 c1 c2 c4 c2
  c4 c c c2. c4 a2 b4 c2 \bar "|"
  
  c2 c4 c1 c2 c4 c2
  c2 c4 c c c c c a a a2 b4 a2 \bar "|"
  
  a2 a4 c1 c2 c4 c2
  c4 c c c c b c a2 b4 c2 \bar "|"
  
  c4 c c c c c c c c c2 
  c2 c4 c c b c a2(b4) c2 \bar "|"
  
  c4 c c c c c2 c4 c2
  c4 c2 c4 c c c b c a2(b4) c2 \bar "|"
  
  c2 c4 c c c c c c c2 c4 c c2 
  c4 c c c c c c b c a2(b4) c2 \bar "|"
  
  e4 e2 d4 e f f f f e d e2
  c2 c4 c c c c c a2(b4) c2 \bar "|"
  
  c2 c4 c1 c2 c4 c2
  c2 c4 c c c c c c c d2 c2 c2 \bar "|"
  
  c1(c4) c4 c a4(c) b2 c1 \bar "||"
  
  c2. c4 c2 c2 \bar "||"
  c2(b4) a a(b) g2 \bar "||"
  c2 c1 c2.(b4) a1 \bar "||"
  a2 a(b c1) \bar "||"
} 

tenor = 
\relative c { 
  \global 
  e2 f4 g2(f4 g) a2 a4 g2 
  g4 g g g(a g) g f2 g4 g2 \bar "|"
  
  e2 f4 g2(f4 g) a2 a4 a2 
  a2 g4 a g g g g f e f2 g4 e2 \bar "|"
  
  e2 f4 g2(f4 g) a2 a4 g2 
  a4 a g a g g g f2 g4 g2 \bar "|"
  
  g4 g g f g a a a a a2
  a2 g4 a g g g f2(g4) g2 \bar "|"
  
  e4 f g f g a2 a4 a2
  a4 c2 a4 g4 g g g g f2(g4) g2 \bar "|"
  
  g2 g4 g g g g f g a2 a4 a a2
  a4 a a c a g g g g f2(g4) g2 \bar "|"
  
  c4 c2 c4 c c c c c c c c2
  a2 g4 a4 a a a g f2(g4) g2 \bar "|"
  
  e2 f4 g2(f4 g) a2 a4 g2 
  a2 a4 a a a a a a a a2 a a \bar "|"
  
  a2.(c4 a) a4 g4 f2 g2 g1 \bar "||"
  
  g2(f4) g a2 g2 \bar "||"
  g2. a4 f(g) e2 \bar "||"
  g2 a1 g4(a g f) e1 \bar "||"
  e2 f(g g1) \bar "||"
} 

bass = 
\relative c { 
  \global 

} 

verse = \lyricmode { 
  % Lyrics follow here. 
  Bless the Lord __ O my soul
  bles -- sed art thou __ His ho -- ly name
  Bless the Lord __ O my soul
  And __ all that is with -- in me bless his ho -- ly name
  
  Bless the Lord O __ my soul
  and for -- get not all of his be -- ne -- fits
  Who for -- gives all of your i -- ni -- qui -- ties,
  Who __ heals all of your di -- sea -- __ -- ses,
  
  Who re -- deems your life from the pit,
  Who crowns you with stead -- fast love and mer __ -- cy,
  Who __ sa -- tis -- fies you with good as long as you live,
  so that your life is re -- newed as the ea __ -- gles
  
  The Lord is com -- pa -- ssion -- ate and mer -- ci -- ful,
  long __ suf -- fer -- ing and of great good __ -- ness
  Bless the Lord __ O my soul
  And __ all that is with -- in me bless his ho -- ly __ name
  
  Ble __ -- ssed art thou O Lord
  
  Lord __ have mer -- cy
  Lord __ have mer -- cy
  To Thee O __ Lord
  A -- men __
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
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