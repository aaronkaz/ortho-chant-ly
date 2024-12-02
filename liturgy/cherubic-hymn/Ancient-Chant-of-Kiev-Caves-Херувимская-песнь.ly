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
    "Херувимская песнь" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Древний Напев Киево-Печерских"} 
    
  arranger = "Переписано: Аарон Казмарек"
  tagline = "Cherubic Hymn: Slavonic" 
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
  c4. b8 c(e) d(c) \bar "|" b2 b4 r4 \bar "|"
  e4. e8 d4 e8(d) \bar "|" c4 b8(c) d4 c \bar "|" b2 c4 r4 \bar "|"
  
  e4. d8 f4 e \bar "|" d4 c d r4 \bar "|"
  d4. c8 e4 d8(e16 d16) \bar "|" c4 b c r \bar "|"
  
  d8(c b c) b4. r8 \bar "|" b8(c) d(e f e) d(c16 d) \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
  
  %section2
  c4. b8 c(e) d(c) \bar "|" b2 b4 r4 \bar "|"
  e4. e8 d4 e8(d) \bar "|" c4(b8 c d4) c \bar "|" b2 c4 r4 \bar "|"
  
  e4. d8 f4 e \bar "|" d4(c) d r4 \bar "|"
  d4. c8 e4 d8(e16 d16) \bar "|" c4(b) c r \bar "|"
  
  d8(c b c) b4. r8 \bar "|" b8(c d e) f(e d c16 d) \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
  
  %section3
  c4.(b8) c(e) d(c) \bar "|" b2 b4 r4 \bar "|"
  e2 d4 e8(d) \bar "|" c4(b8 c) d4 c \bar "|" b4. b8 c4 r4 \bar "|"
  
  e4.(d8) f4 e \bar "|" d4 c d r4 \bar "|"
  d4.(c8) e4 d8(e16 d16) \bar "|" c4 b c r \bar "|"
  
  d8(c) b(c) b4. r8 \bar "|" b8(c) d(e) f(e) d c \bar "|" 
  e4(d c) b \bar "|" c2. r4 \bar "||"
} 

tenor_two = 
\relative c'' { 
  \global 
  a4. gs8 a(c) b(a) \bar "|" gs2 gs4 r4 \bar "|"
  c4. c8 b4 c8(b) \bar "|" a4 gs8(a) b4 a \bar "|" gs2 a4 r4 \bar "|"
  
  c4. b8 d4 c \bar "|" b4 a b r4 \bar "|" 
  b4. a8 c4 b8(c16 b) \bar "|" a4 gs a r4 \bar "|"
  
  b8(a gs a) gs4. r8 \bar "|" gs8(a) b(c d c) b(a) \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
  
  %section2
  a4. gs8 a(c) b(a) \bar "|" gs2 gs4 r4 \bar "|"
  c4. c8 b4 c8(b) \bar "|" a4(gs8 a) b4 a \bar "|" gs2 a4 r4 \bar "|"
  
  c4. b8 d4 c \bar "|" b4(a) b r4 \bar "|" 
  b4. a8 c4 b8(c16 b) \bar "|" a4(gs) a r4 \bar "|"
  
  b8(a gs a) gs4. r8 \bar "|" gs8(a b c) d(c b a) \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
  
  %section3
  a4.(gs8) a(c) b(a) \bar "|" gs2 gs4 r4 \bar "|"
  c2 b4 c8(b) \bar "|" a4(gs8 a) b4 a \bar "|" gs4. gs8 a4 r4 \bar "|"
  
  c4.(b8) d4 c \bar "|" b4 a b r4 \bar "|" 
  b4.(a8) c4 b8(c16 b) \bar "|" a4 gs a r4 \bar "|"
  
  b8(a) gs(a) gs4. r8 \bar "|" gs8(a) b(c) d(c) b a \bar "|"
  b2(a4) gs \bar "|" a2. r4 \bar "||"
} 

bass_one = 
\relative c { 
  \global 
  e4. e8 e4 e8(f) \bar "|" e2 e4 r \bar "|"
  g4. g8 g4 gs4 \bar "|" a4 e f f \bar "|" e8(d c b) e4 r4 \bar "|"
  
  r1 \bar "|" g4(fs) g r4 \bar "|"
  r1 \bar "|" e2 e4 r4 \bar "|"
  r2 e2 \bar "|" e4 e4(a) a \bar "|" gs2(e4) e e2. r4 \bar "||"
  
  %section2
  e4. e8 e4 e8(f) \bar "|" e2 e4 r \bar "|"
  g4. g8 g4 gs4 \bar "|" a4(e f) f \bar "|" e8(d c b) e4 r4 \bar "|"
  
  r1 \bar "|" g4(fs) g r4 \bar "|"
  r1 \bar "|" e2 e4 r4 \bar "|"
  r2 e2 \bar "|" e2 a \bar "|" gs2(e4) e e2. r4 \bar "||"
  
  %section3
  e2 e4 e8(f) \bar "|" e2 e4 r \bar "|"
  g2 g4 gs4 \bar "|" a4(e) f f \bar "|" e8(d c) b e4 r4 \bar "|"
  
  r1 \bar "|" g4 fs g r4 \bar "|"
  r1 \bar "|" e4 e e4 r4 \bar "|"
  r2 e2 \bar "|" e4 e a4 a8 a \bar "|" gs2(e4) e e2. r4 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  И -- же хе __ -- ру __ -- ви -- мы 
  И -- же хе -- ру __ -- ви -- мы __ хе -- ру -- ви -- мы
  тай -- но о -- бра -- зу -- ю -- щие,
  тай -- но о -- бра __ -- зу -- ю -- щие,
  тай -- но, тай __ -- но __ бра __ -- зу __ -- ю -- щие
  
  и жи -- вот __ -- вор __ я -- щей 
  и жи -- вот __ -- вор __ я __ -- щей Трои -- це
  три -- свя -- ту -- ю пе __ -- снь 
  три -- свя -- ту -- ю пе __ -- снь 
  пе __ -- снь, при __ -- пе __ -- ва __ -- ю -- ще, 
  
  вся __ -- ко __ -- е __ ны -- не
  вся -- ко __ -- е __ ны -- не жи -- тей -- ско -- е
  ны __ не жи -- тей -- ско -- е
  ны __ не жи -- тей -- ско -- е
  от __ -- ло __ жим
  от __ -- ло __ жим __ по -- пе -- че __ ни -- е
} 

translit = \lyricmode { 
  % Lyrics follow here. 
  ee -- zhe he __ -- roo __ -- vee -- muy 
  ee -- zhe hе -- roo __ -- vee -- muy __ he -- roo -- vee -- muy
  tay -- no o -- bra -- zoo -- yoo -- shey,
  tay -- no o -- bra __ -- zoo -- yoo -- shey,
  tay -- no, tay __ -- no __ bra __ -- zoo __ -- yoo -- shey
  
  ee zhe -- vot __ -- var __ ya -- shey 
  ee zhe -- vot __ -- var __ ya __ -- shey troy -- tsye
  tree -- svya -- too -- yoo pyee __ -- sn 
  tree -- svya -- too -- yoo pyee __ -- sn 
  pyee __ -- sn, pree __ -- pee __ -- va __ -- yoo -- shey, 
  
  vsya __ -- ko __ -- ye __ nee -- nye
  vsya -- ko __ -- ye __ nee -- nye zhee -- tey -- sko -- ye
  nee __ nye zhee -- tey -- sko -- ye
  nee __ nye zhee -- tey -- sko -- ye
  ot __ -- lo __ zheem
  ot __ -- lo __ zheem __ po -- pe -- che __ nee -- ye
} 

verse_bass = \lyricmode { 
  % Lyrics follow here. 
  ""1 ""1 ""1 ""1 ""1 ""1
  тай2 __ -- но4 ""4
  ""1
  тай2 __ -- но4 ""4
  ""1 ""1 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  Трои2 __ -- це4 ""4
  ""1
  Трои2 __ -- це4 ""4
  ""1 ""1 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  от4 -- ло4 -- жим4 ""4
  ""1
  от4 -- ло4 -- жим4 ""4
  ""1 ""1 ""1 ""1
}

verse_bass_translit = \lyricmode { 
  % Lyrics follow here. 
  ""1 ""1 ""1 ""1 ""1 ""1
  tay2 __ -- no4 ""4
  ""1
  tay2 __ -- no4 ""4
  ""1 ""1 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  troy2 __ -- tsye4 ""4
  ""1
  troy2 __ -- tsye4 ""4
  ""1 ""1 ""1 ""1
  
  ""1 ""1 ""1 ""1 ""1 ""1
  ot4 -- lo4 -- zheem4 ""4
  ""1
  ot4 -- lo4 -- zheem4 ""4
  ""1 ""1 ""1 ""1
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
    \new Lyrics \lyricsto "tenor1" \translit 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_one } 
    >> 
    \new Lyrics \verse_bass
    \new Lyrics \verse_bass_translit
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