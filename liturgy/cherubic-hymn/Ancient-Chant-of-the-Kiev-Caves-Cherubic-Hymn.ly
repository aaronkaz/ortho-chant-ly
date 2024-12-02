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
    "Cherubic Hymn" 
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
  c4.(b8) c(e) d(c) \bar "|" b4. b8 b4 r4 \bar "|"
  e2 d4 e8(d) \bar "|" c4(b8 c d4 c \bar "|" b4.) b8 c4 r4 \bar "|"
  
  e4. d8 f4 e \bar "|" d4 c d r4 \bar "|"
  d4. c8 e4 d8(e16 d16) \bar "|" c4 b c r \bar "|"
  
  d8(c) b(c) b4 b \bar "|" b8(c d e f) e d c \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
  
  %section2
  c4.(b8) c(e d c) \bar "|" b2. r4 \bar "|"
  e4. e8 d4 e8(d) \bar "|" c4(b8 c d4) c \bar "|" b4. b8 c4 r4 \bar "|"
  
  e4.(d8 f4 e) \bar "|" d4 c d r4 \bar "|"
  d4.(c8 e4 d8 e16 d16) \bar "|" c4 b c r \bar "|"
  
  d8(c) b c b4. r8 \bar "|" b8 c d e f(e) d(c) \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
  
  %section3
  c4.(b8) c(e) d(c) \bar "|" b2. r4 \bar "|"
  e2 d4 e8(d) \bar "|" c4(b8 c) d4 c \bar "|" b4. b8 c4 r4 \bar "|"
  
  e4.(d8 f4) e \bar "|" d4(c d) r4 \bar "|"
  d4.(c8 e4) d8(e16 d16) \bar "|" c4(b c) r \bar "|"
  
  d8(c) b(c) b4. r8 \bar "|" b8(c) d(e) f(e) d(c16 d) \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
} 

tenor_two = 
\relative c'' { 
  \global 
  a4.(gs8) a(c) b(a) \bar "|" gs4. gs8 gs4 r4 \bar "|"
  c2 b4 c8(b) \bar "|" a4(gs8 a b4 a \bar "|" gs4.) gs8 a4 r4 \bar "|"
  
  c4. b8 d4 c \bar "|" b4 a b r4 \bar "|" 
  b4. a8 c4 b8(c16 b) \bar "|" a4 gs a r4 \bar "|"
  
  b8(a) gs(a) gs4 gs \bar "|" gs8(a b c d) c b a \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
  
  %section2
  a4.(gs8) a(c b a) \bar "|" gs2. r4 \bar "|"
  c4. c8 b4 c8(b) \bar "|" a4(gs8 a) b4 a \bar "|" gs4. gs8 a4 r4 \bar "|"
  
  c4.(b8 d4 c) \bar "|" b4 a b r4 \bar "|" 
  b4.(a8 c4 b8 c16 b) \bar "|" a4 gs a r4 \bar "|"
  
  b8(a) gs a gs4. r8 \bar "|" gs8 a b c d(c) b(a) \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
  
  %section3
  a4.(gs8) a(c) b(a) \bar "|" gs2. r4 \bar "|"
  c2 b4 c8(b) \bar "|" a4(gs8 a) b4 a \bar "|" gs4. gs8 a4 r4 \bar "|"
  
  c4.(b8 d4) c \bar "|" b4(a b) r4 \bar "|" 
  b4.(a8 c4) b8(c16 b) \bar "|" a4(gs a) r4 \bar "|"
  
  b8(a) gs(a) gs4. r8 \bar "|" gs8(a) b(c) d(c) b(a) \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
} 

bass_one = 
\relative c { 
  \global 
  e2 e4 e8(f) \bar "|" e4. e8 e4 r4 \bar "|"
  g2 g4 gs4 \bar "|" a4(e f2 \bar "|" e4.) e8 e4 r4 \bar "|"
  
  r1 \bar "|" g4 fs g r4 \bar "|"
  r1 \bar "|" e4 e e4 r4 \bar "|"
  r2 e2( \bar "|" e4) e4 a4 a \bar "|" gs2(e4) e e2. r4 \bar "||"
  
  %section2
  e2 e4.(f8) \bar "|" e2. r4 \bar "|"
  g4. g8 g4 gs4 \bar "|" a4(e f) f \bar "|" e4. e8 e4 r4 \bar "|"
  
  r1 \bar "|" g4 fs g r4 \bar "|"
  r1 \bar "|" e4 e e4 r4 \bar "|"
  r2 e4 e4 \bar "|" e4 e a a \bar "|" gs2(e4) e e2. r4 \bar "||"
  
  %section3
  e2 e4 e8(f) \bar "|" e2. r4 \bar "|"
  g2 g4 gs4 \bar "|" a4(e f) f \bar "|" e4. e8 e4 r4 \bar "|"
  
  r1 \bar "|" g4 fs g r4 \bar "|"
  r1 \bar "|" e4 e e4 r4 \bar "|"
  r2 e2( \bar "|" e4) e4 a4 a \bar "|" gs2(e4) e e2. r4 \bar "||"
} 

bass_two = 
\relative c { 
  \global 
  a4.(b8) c4 c8(d) \bar "|" e4. e8 e4 r4 \bar "|"
  c2 c4 e4 \bar "|" e4(e d2 \bar "|" e8 d c) b a4 r4 \bar "|"
  
  r1 \bar "|" g'4 d g, r4 \bar "|"
  r1 \bar "|" e'4 e a,4 r4 \bar "|"
  r2 e'2( \bar "|" e4) e4 d4 d \bar "|" e2(e4) e a,2. r4 \bar "||"
  
  a4.(b8) c4.(d8) \bar "|" e2. r4 \bar "|"
  c4. c8 c4 e4 \bar "|" e4(e d4 d \bar "|" e8 d c) b a4 r4 \bar "|"
  
  r1 \bar "|" g'4 d g, r4 \bar "|"
  r1 \bar "|" e'4 e a,4 r4 \bar "|"
  r2 e'4 e \bar "|" e4 e4 d4 d \bar "|" e2(e4) e a,2. r4 \bar "||"
  
  a4.(b8) c4 c8(d) \bar "|" e2. r4 \bar "|"
  c2 c4 e4 \bar "|" e4(e d4) d \bar "|" e8(d c) b a4 r4 \bar "|"
  
  r1 \bar "|" g'4 d g, r4 \bar "|"
  r1 \bar "|" e'4 e a,4 r4 \bar "|"
  r2 e'2( \bar "|" e4) e4 d4 d \bar "|" e2(e4) e a,2. r4 \bar "||"
} 


verse = \lyricmode { 
  % Lyrics follow here. 
  Let __ us __ who __ my -- stic -- ly
  Let us who __ my __ stic -- ly
  rep -- re -- sent the che -- ru -- bim,
  rep -- re -- sent the __ che -- ru -- bim,
  rep __ -- re __ -- sent the che __ -- ru -- bim the che __ -- ru -- bim
  
  and __ who __ sing
  and who sing the __ thri __ -- ce ho -- ly hymn
  thrice __ ho -- ly hymn 
  thrice __ ho -- ly hymn 
  thrice __ ho -- ly hymn, to the life cre -- a __ -- ting __ tri __ -- ni -- ty
  
  now __ lay __ a __ -- side
  now lay a __ -- si __ -- de all earth -- ly cares
  lay __ a -- side __
  lay __ a __ -- side __
  lay __ a __ -- side
  lay __ a __ -- side __ all __ ear __ -- thly cares
} 

verse_bass = \lyricmode { 
  \override LyricText.font-size = #0.75
  ""1 ""1 ""1 ""1 ""1 ""1
  re4 -- pre4 -- sent4 ""4
  ""1
  re4 -- pre4 -- sent4 ""4
  ""2 rep2 -- ""4 re4 -- sent4  the4 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  and4 -- who4 -- sing4 ""4
  ""1
  and4 -- who4 -- sing4 ""4
  ""2 to4 the4 life4 cre4 -- a4 -- ting4 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  lay4 -- a4 -- side4 ""4
  ""1
  lay4 -- a4 -- side4 ""4
  ""2 lay2 -- ""4 a4 -- side4  all8 ""1 ""1
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