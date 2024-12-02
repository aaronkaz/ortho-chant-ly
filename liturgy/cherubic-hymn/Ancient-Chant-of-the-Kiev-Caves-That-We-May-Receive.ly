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
    "That We May Receive" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Ancient Chant of the Kiev Caves"} 
    
  arranger = "English Arr. by Aaron Kaczmarek"
  tagline = "Cherubic Hymn: English" 
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
  b2 c4 r4 \bar "||"
  
  c4. b8 c(e) d(c) \bar "|" b2. r4 \bar "|"
  e4. e8 d4 e8(d) \bar "|" c4(b8 c d4) c \bar "|" b4. b8 c4 r4 \bar "|"
  
  e4.(d8) f4 e \bar "|" d4 c d r4 \bar "|"
  d4.(c8) e4 d8(e16 d16) \bar "|" c4 b c r \bar "|"
  
  d8(c b c) b2 \bar "|" b8(c) d e f(e d c16 d \bar "|" 
  e4 d c) b \bar "|" c2. r4 \bar "||"
  
  c4. b8 c(e) d(c) \bar "|" b2. r4 \bar "|"
  e4. e8 d4 e8(d) \bar "|" c4(b8 c d4) c \bar "|" b4. b8 c2 \fermata \bar "||"
} 

tenor_two = 
\relative c'' { 
  \global 
  gs2 a4 r4 \bar "||"
  
  a4. gs8 a(c) b(a) \bar "|" gs2. r4 \bar "|"
  c4. c8 b4 c8(b) \bar "|" a4(gs8 a b4) a \bar "|" gs4. gs8 a4 r4 \bar "|"
  
  c4.(b8) d4 c \bar "|" b4 a b r4 \bar "|" 
  b4.(a8) c4 b8(c16 b) \bar "|" a4 gs a r4 \bar "|"
  
  b8(a gs a) gs2 \bar "|" gs8(a) b c d(c b a \bar "|"
  b2 a4) gs \bar "|" a2. r4 \bar "||"

  a4. gs8 a(c) b(a) \bar "|" gs2. r4 \bar "|"
  c4. c8 b4 c8(b) \bar "|" a4(gs8 a b4) a \bar "|" gs4. gs8 a2 \bar "||"
} 

bass_one = 
\relative c { 
  \global 
  e2 e4 r4 \bar "||"
  
  e4. e8 e4 e8(f) \bar "|" e2. r4 \bar "|"
  g4. g8 g4 gs4 \bar "|" a4(e f4) f4 \bar "|" e4. e8 e4 r4 \bar "|"
  
  r1 \bar "|" g4 fs g r4 \bar "|"
  r1 \bar "|" e4 e e4 r4 \bar "|"
  r2 e2 \bar "|" e4 e4 a2( \bar "|" gs2 e4) e e2. r4 \bar "||"
  
  e4. e8 e4 e8(f) \bar "|" e2. r4 \bar "|"
  g4. g8 g4 gs4 \bar "|" a4(e f4) f4 \bar "|" e4. e8 e2 \fermata \bar "||"
} 

bass_two = 
\relative c { 
  \global 
  e8(d c b) a4 r4 \bar "||"
  
  a4. b8 c4 c8(d) \bar "|" e2. r4 \bar "|"
  c4. c8 c4 e4 \bar "|" e4(e d4) d4 \bar "|" e8(d c) b a4 r4 \bar "|"
  
  r1 \bar "|" g'4 d g, r4 \bar "|"
  r1 \bar "|" e'4 e a,4 r4 \bar "|"
  r2 e'2 \bar "|" e4 e4 d2( \bar "|" e2 e4) e a,2. r4 \bar "||"

  a4. b8 c4 c8(d) \bar "|" e2. r4 \bar "|"
  c4. c8 c4 e4 \bar "|" e4(e d4) d4 \bar "|" e8(d c) b a2 \bar "|"
} 


verse = \lyricmode { 
  % Lyrics follow here. 
  A -- men
  
  That we may __ re__ -- ceive
  That we may re __ -- ceive __ the king of all
  who __ comes in -- vi -- si -- bly
  who __ comes in __ -- vi -- si -- bly
  up __ -- borne by __ the an -- gel __ ic hosts
  
  A -- le -- lu __ -- i __ -- a
  A -- le -- lu -- ia A __ -- le -- lu -- i -- a
} 

verse_bass = \lyricmode { 
  \override LyricText.font-size = #0.75
  ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  vi4 -- si4 -- bly4 ""4
  ""1
  vi4 -- si4 -- bly4 ""4
  ""2 by2 -- the4 an4 -- gel__4  ""4 ""1 ""1
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
    \new Lyrics \verse_bass 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" "B2" } 
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