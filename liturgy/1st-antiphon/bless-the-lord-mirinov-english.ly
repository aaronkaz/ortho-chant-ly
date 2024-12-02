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
  \key d \major 
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
  a2 a4 b2 b4(a) a a2 \bar "|" 
  a4 a2 b4 a b2 b4 b2 \bar "|"
  b2 b4 b4(a g a) b2 b4 b2 \bar "|"
  a4 a a a a a a g2(fs4) a a2(a4) a2 \bar "|"
  
  a2 a4 b2 b4(a) a a2 \bar "|" 
  a4 a a b b b a b2 b4 b2 \bar "|"
  b2 b4 b a g a b2 b4 b2 \bar "|"
  a4 a2 a4 a g2(fs4) a a2(a4) a2 \bar "|"
  
  a4 a a b b a a a2 \bar "|" 
  a4 a a b b b b a b2 b2 \bar "|"
  b4 b b b b b b(a g) a b2 b4 b b2 \bar "|"
  a2 a4 a a a a g2 fs4 a a2(a4) a2 \bar "|"
  
  a4 a2 a4 b b b b a a2 a4 a2 \bar "|" 
  a2 a4 a b b b a b2 b2 \bar "|"
  b2 b4 b4(a g a) b2 b4 b2 \bar "|"
  a4 a a a a a a g2(fs4) a a2(a4) a2 \bar "|"
  
  a2 b4 b a2 a2 a1 \fermata \bar "|."
} 

alto = 
\relative c' { 
  \global 
  % Music follows here. 
  fs2 fs4 fs2 fs fs4 fs2 \bar "|"
  e4 fs2 g4 fs fs2 fs4 fs2 \bar "|"
  fs2 fs4 g4(fs e fs) g2 g4 g2 \bar "|"
  e4 fs fs fs fs fs e e2(cs4) fs e2(e4) fs2 \bar "|"
  
  fs2 fs4 fs2 fs fs4 fs2 \bar "|"
  e4 e fs g g g fs fs2 fs4 fs2 \bar "|"
  fs2 fs4 g fs e fs g2 g4 g2 \bar "|"
  e4 fs2 fs4 e e2(cs4) fs e2(e4) fs2 \bar "|"
  
  fs4 fs fs fs fs fs fs fs2 \bar "|"
  e4 e fs g g g g fs fs2 fs \bar "|"
  fs4 fs g g g g g(fs e) fs g2 g4 g g2 \bar "|"
  e2 e4 fs fs fs e e2 cs4 fs e2(e4) fs2 \bar "|"
  
  fs4 fs2 fs4 fs fs fs fs fs fs2 fs4 fs2 \bar "|"
  e2 e4 fs g g g fs fs2 fs2 \bar "|"
  fs2 fs4 g4(fs e fs) g2 g4 g2 \bar "|"
  e4 fs fs fs fs fs e e2(cs4) fs e2(e4) fs2 \bar "|"
  
  fs2 g4 g e2 e fs1 \bar "|."
} 

tenor = 
\relative c' { 
  \global 
  % Music follows here. 
  d2 e4 d2 d4(e) d d2 \bar "|"
  cs4 cs2 e4 cs d2 d4 d2 \bar "|"
  d2 d4 d1 d2 d4 d2 \bar "|"
  cs4 cs cs cs cs cs cs b2(a4) cs cs2(cs4) d2 \bar "|"
  
  d2 e4 d2 d4(e) d d2 \bar "|"
  cs4 cs cs e e e cs d2 d4 d2 \bar "|"
  d2 d4 d d d d d2 d4 d2 \bar "|"
  cs4 cs2 cs4 cs b2(a4) cs cs2(cs4) d2 \bar "|"
  
  d4 d e d d e d d2 \bar "|"
  cs4 cs cs e e e e cs d2 d2 \bar "|"
  d4 d d d d d d d d d d2 d4 d d2 \bar "|"
  cs2 cs4 cs cs cs cs b2 a4 cs cs2(cs4) d2 \bar "|"
  
  d4 d2 e4 d d d d e d2 d4 d2 \bar "|"
  cs2 cs4 cs e e e cs d2 d2 \bar "|"
  d2 d4 d1 d2 d4 d2 \bar "|"
  cs4 cs cs cs cs cs cs b2(a4) cs cs2(cs4) d2 \bar "|"
  
  d2 d4 e cs2 cs d1 \fermata \bar "|."
} 

bass = 
\relative c { 
  \global 
  % Music follows here. 
  d2 cs4 b2 b4(cs) d d2 \bar "|"
  \relative c' {
    a4 fs2 e4 fs b2 b4 b2 \bar "|"
    b2 a4 g(a b a) g2 g4 g2 \bar "|"
    a4 fs fs fs fs fs a e2(fs4) fs a2(a4) 
  } d2 \bar "|"
  
  d2 cs4 b2 b4(cs) d d2 \bar "|"
  \relative c' {
    a4 a fs e e e fs b2 b4 b2 \bar "|"
    b2 a4 g a b a g2 g4 g2 \bar "|"
    a4 fs2 fs4 a e2(fs4) fs a2(a4) 
  } d2 \bar "|"
  
  d4 d cs b b cs d d2 \bar "|"
  \relative c' {
    a4 a fs e e e e fs b2 b2 \bar "|"
    b4 a g g g g g a b a g2 g4 g g2 \bar "|"
    a2 a4 fs fs fs a e2 fs4 fs a2(a4) 
  } d2 \bar "|"
  
  d4 d2 cs4 b b b b cs d2 d4 d2 \bar "|"
  \relative c' {
    a2 a4 fs e e e fs b2 b2 \bar "|"
    b2 a4 g(a b a) g2 g4 g2 \bar "|"
    a4 fs fs fs fs fs a e2(fs4) fs a2(a4) 
  } d2 \bar "|"
  
  d2 
  \relative c' {
    g4 e a2 <a a,>
  } d1 \bar "|."
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  Bless the Lord O __ my soul
  And bless -- ed art thou O Lord
  Bless the Lord __ O my soul
  And all that is with -- in me bless __ his holy __ name
  
  Bless the Lord O __ my soul
  and for -- get not all of his be -- ne -- fits
  Who for -- gives all your i -- ni -- qui -- ties,
  Who heals all of your __ di -- sea -- __ -- ses,
  
  Who re -- deems your life from the pit,
  Who crowns you with stead -- fast love and mer -- cy,
  Who sa -- tis -- fies you with good __ as long as you live,
  so that your life is re -- newed as the ea -- __ -- gles
  
  The Lord is com -- pa -- ssion -- ate and mer -- ci -- ful,
  long suf -- fer -- ing and of great good -- ness
  Bless the Lord __ O my soul
  And all that is with -- in me bless __ his holy __ name
  
  Ble -- ssed art thou O Lord
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
      instrumentName = \markup \center-column { "Tenor" "Bass" } 
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