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
    {"K. Mironov"} 
  arranger = "English Arr: Aaron Kaczmarek"
  tagline = "Bless the Lord O my Soul: Mironov"   
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
\relative c' { 
  \global 
  d2 d4 e2 e4(d) d d2 \bar "|"
  d4 d2 e4 c(d) e2 e4 e2 \bar "|"
  e2 e4 e4(d c d) e2 e4 e2 \bar "|"
  d4 d d d d d d c2(b4) b d2 d4 d2 \bar "|"
  
  d2 d4 e2 e4(d) d d2 \bar "|"
  d4 d d e e c d e2 e4 e2 \bar "|"
  e2 e4 e d c d e2 e4 e2 \bar "|"
  d4 d d d c2(b) d4 d2. d2 \bar "|"
  
  d4 d d e e e d d2 \bar "|"
  d4 d d d e e c d e2 e \bar "|"
  e4 e e e e e e(d) c(d) e2 e4 e e2 \bar "|"
  d4 d d d d d c2 b4 d d2. d2 \bar "|"
  
  d4 d d d e e e e d d2 d4 d d d2 \bar "|"
  d4 d d d d d d e e e e e c d e2 e4 e2 \bar "|"
  e4 e2 e4 e d c d e2 e4 e e2 \bar "|"
  d4 d d d d c2 c4 b b d2. d2 \bar "|"
  
  d4 d d d e e e e e e e e e e d d2 d2 \bar "|"
  d4 d d e e e e e e e c d e2 e4 e e2 \bar "|"
  e4 e e e e e e e e e e e e e(d) c(d) e2 e4 e2 \bar "|"
  d4 d d4 c2(b) d1 d1 \fermata \bar "||"
} 

alto = 
\relative c' { 
  \global 
  b2 a4 b2 b4(c) b b2
  a4 b2 c4 c2 b2 b4 b2
  b2 b4 c(b a b) c2 c4 c2
  b4 b a a a a g a2(g4) g4 b2 a4 b2
  
  b2 a4 b2 b4(c) b b2
  a4 a b c c c c b2 b4 b2
  b2 c4 c b a b c2 c4 c2
  b4 a a g a2(g) b4 a2. b2
  
  b4 b a b b b c b2
  a4 a a b c c c c b2 b2
  b4 b c c c c c(b) a(b) c2 c4 c c2
  b4 b a a a g a2 g4 b4 a2. b2
  
  b4 b b a b b b b c b2 b4 b b b2
  a4 a a a a a b c c c c c c c b2 b4 b2
  b4 b2 b4 c b a b c2 c4 c c2
  b4 b a a g a2 a4 g g b2(a4) b2
  
  b4 b b a b b b b b b b b b b c b2 b2
  a4 a b c c c c c c c c c b2 b4 b b2
  b4 b b b b b b b b b b b b c(b) a(b) c2 c4 c2
  b4 a g a2(g2) b2(a) b1
} 

tenor = 
\relative c' { 
  \global 
  % Music follows here. 
  g2 fs4 g2 g4(a) g g2 \bar "|"
  fs4 g2 e4 e(fs) g2 g4 g2 \bar "|"
  g2 g4 g1 g2 g4 g2 \bar "|"
  g4 g fs fs fs fs d e2(d4) d4 fs2 fs4 g2 \bar "|"
  
  g2 fs4 g2 g4(a) g g2 \bar "|"
  fs4 fs g e e e fs g2 g4 g2 \bar "|"
  g2 g4 g g g g g2 g4 g2 \bar "|"
  g4 fs fs d e2(d) fs4 fs2. g2 \bar "|"
  
  g4 g fs g g g a g2 \bar "|"
  fs4 fs fs g e e e fs g2 g2 \bar "|"
  g4 g g g g g g2 g2 g2 g4 g g2 \bar "|"
  g4 g fs fs fs d e2 d4 fs fs2. g2 \bar "|"
  
  g4 g g fs g g g g a g2 g4 g g g2 \bar "|"
  fs4 fs fs fs fs fs g e e e e e e fs g2 g4 g2 \bar "|"
  g4 g2 g4 g g g g g2 g4 g4 g2 \bar "|"
  g4 g fs fs d e2 e4 d d fs2. g2 \bar "|"
  
  g4 g g fs g g g g g g g g g g a g2 g2 \bar "|"
  fs4 fs g e e e e e e e e fs g2 g4 g g2 \bar "|"
  g4 g g g g g g g g g g g g g2 g2 g2 g4 g2 \bar "|"
  g4 fs d e2(d) fs1 g1 \fermata \bar "||"
} 

bass = 
\relative c' { 
  \global 
  g2 fs4 e2 e4(fs) g g2
  d4 b2 a4 a2 e'2 e4 e2
  e2 d4 c(d e d) c2 c4 c2
  d4 d d d d d b a2(b4) b b2 d4 g,2
  
  g'2 fs4 e2 e4(fs) g g2
  d4 d b a a a a e'2 e4 e2
  e2 d4 c d e d c2 c4 c2
  d4 d d b a2(b) b4 d2. g,2
  
  g'4 g fs e e e fs g2
  d4 d d b a a a a e'2 e
  e4 e d c c c c(d) e(d) c2 c4 c c2
  d4 d d d d b a2 b4 b e2. g,2
  
  g'4 g g fs e e e e fs g2 fs4 fs fs fs2
  d4 d d d d d b a a a a a a a e'2 e4 e2
  e4 e2 d4 c d e d c2 c4 c c2
  d4 d d d b a2 a4 b b b2(d4) g,2
  
  g'4 g g fs e e e e e e e e e e fs g2 g2
  d4 d b a a a a a a a a a e'2 e4 e e2
  e4 e e e e e e e e e e e d(c) d(e) d c2 c4 c2
  d4 d b4 a2(b2) b2(d) g,1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  Bless the Lord O __ my soul
  And bless -- ed art __ thou O Lord
  Bless the Lord __ O my soul
  And all that is with -- in me bless __ his ho -- ly name
  
  Bless the Lord O __ my soul
  and for -- get not all of his be -- ne -- fits
  Who for -- gives all your i -- ni -- qui -- ties,
  Who heals all of your __ di -- sea -- ses,
  
  Who re -- deems your life from the pit,
  Who crowns you with stead -- fast love and mer -- cy,
  Who sa -- tis -- fies you with good __ as long as you live,
  so that your life is re -- newed as the ea -- gles
  
  The Lord per -- forms deeds of mer -- cy and just -- ice for the wronged
  His ways he made known un -- to Mo -- ses un -- to the sons of Is -- ra -- el
  com -- pa -- ssion -- ate and mer -- ci -- ful is the Lord
  long suf -- fer -- ing and plen -- te -- ous in good -- ness
  
  Glo -- ry to the Fath -- er and to the Son and to the Ho -- ly Spir -- it
  Both now and ev -- er and un -- to the a -- ges of a -- ges a -- men
  Bless the Lord O my soul And all that is with -- in me bless __ his __ ho -- ly name
  Ble -- ssed art thou __ O Lord
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