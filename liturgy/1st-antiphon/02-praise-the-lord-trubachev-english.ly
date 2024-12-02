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
    "Praise the Lord" 
  subtitle = \markup\bold\fontsize #3.5 
    {"2nd Antiphon"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Deacon C. Trubachev"} 
  arranger = "English Arr: Aaron Kaczmarek"
  tagline = "Praise the Lord O my Soul: Trubachev"   
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
  c4 d e e e d e f2 \breathe 
  e4 f g f e e e e e e e e d2(d4) e2 \bar "|"
  
  c4 d e f g g f e f2 c4(d) e2  \breathe 
  e4 e e f e e d2(d4) c2 \bar "|"
  
  c4 c d e e e d e f2 f4 f e2 \breathe 
  e4 f g(f) e e e d d2(d4) c2 \bar "|"
  
  d4 e e e e e e d e f2 f4 c d e2 \breathe 
  e4(f) g(f) e e e d2 d4 e2 \bar "|"
  
  e4 g g2 g4 f2 f4 c d e2  \breathe 
  g4 g2. g4 g f(e) d2 d4 e2 \bar "|"
  
  e4 g g g g g g f2 c4(d) e2  \breathe 
  e4 e e d e f2 f4 f f e2  \breathe 
  f4 g f e e e e d2(d4) e2 \bar "|"
  
  c4 e2 e4 d e f2 e2  \breathe 
  e 4 e d e f2 f4 e2  \breathe 
  e4 f g g g f e f2(c4 d) e2  \breathe 
  e4 e e d c d2.(d4) e2 \bar "|"
  
  e4 g2 g4 g g g f2 f4 e2  \breathe 
  e4 e e e e e e e e e d e f2 e2  \breathe 
  e4 e e e e e e d2 d2 e2 \bar "|"
  
  e4 e e f g g f g a2 a4 g2 \bar "|"
  g4 g(f) e e e e e e e e e d c d1 e1 \bar "||"
} 

alto = 
\relative c'' { 
  \global 
  c2 c4 c1 c2 c4 c2
  c4 c c c c c c c2
  c4 c c c c c c c c c b c a2(b4) c2 \bar "|"
  
  c4 c c c c c c c c2 c2 c2 
  c4 c c c c c a2(b4) a2 \bar "|"
  
  a4 a b c c c b c d2 c4 b c2
  c4 c c2 c4 b c a g(a b) a2 \bar "|"
  
  a4 c c c c c c c c c2 c4 c c c2
  c2 c2 c4 b c a2 b4 c2 \bar "|"
  
  c4 c c2 c4 c2 c4 c c c2 
  c4 c2. c4 c c2 a b4 c2 \bar "|"
  
  c4 c c c c c c c2 c c
  c4 c c b c d2 d4 d d c2
  c4 c c c c b c a2(b4) c2 \bar "|"
  
  c4 c2 c4 c c c2 c2
  c4 c c c c2 b4 c2
  c4 c c c c c c c1 c2
  c4 c c d c a2.(b4) c2 \bar "|"
  
  c4 c2 c4 c c c c2 c4 c2
  c4 c c c c c c c c c b c d2 c2
  c4 c c c c c c a(g) a(b) c2 \bar "|"
  
  c4 c c d e e d e f2 d4 e2
  c4 c2 c4 c c c c c c c c b a a(c b2) c1 \bar "||"
} 

tenor = 
\relative c { 
  \global 
  e2 g4 g2(f4 g) a2 a4 g2
  e4 f g g g f g a2
  g4 g4 c a g g g g g g g g f2(g4) g2 \bar "|"
  
  e4 f g g g g a g a2 a2 a2
  a4 a a a g g f2(g4) e2 \bar "|"
  
  e4 e e a a a a a a2 a4 a a2
  a4 a c(a) g g g f e(f g) e2 \bar "|"
  
  f4 g g g g g g f g a2 a4 a a a2
  g2 g4(a) g g g f2 g4 g2 \bar "|"
  
  g4 g g(f) g a2 a4 a a a2
  a4 a2. a4 a a2 f2 g4 g2 \bar "|"
  
  g4 g g g g f g a2 a g
  a4 a a a a a2 a4 a a a2
  a4 g a g g g g f2(g4) g2 \bar "|"
  
  e4 g2 g4 f g a2 g
  g4 g f g a2 a4 a2
  a4 a g g g a g a1 a2
  a4 a a a a a(g f g) g2 \bar "|"
  
  g4 g2 g4 g f g a2 a4 g2
  a4 a a a a a a a a a a a a2 a
  a4 a a a a a g f4(e) f(g) g2 \bar "|"
  
  c4 c c c c c c c c2 c4 c2 \bar "|"
  a4 a2 g4 g g g g g g g g g g f2(g) g1 \bar "||"
} 

bass = 
\relative c { 
  \global 

} 

verse = \lyricmode { 
  % Lyrics follow here. 
  Praise the Lord __ O my soul,
  I will praise the Lord in my life,
  I will chant unto my God for as long as I have be __ -- ing
  
  trust ye not in prin -- ces, in the sons of __ men
  in whom there is no sal -- va -- tion
  
  His Spir -- it shall go forth and re -- turn to His earth
  in that day __ all his thoughts shall per __ -- ish
  
  Bless -- ed is he of whom the God of Ja -- cob is his help,
  whose __ hope __ is in the Lord his God
  
  Who hath made the hea -- vens and the earth
  the sea and all that __ is there -- in
  
  Who keep -- eth truth un -- to e -- ter -- ni __ -- ty
  who ex -- e -- cu -- teth judge -- ment for the wronged,
  who giv -- eth food un -- to the hun __ -- gry
  
  the Lord loos -- eth the fe -- ttered,
  the Lord mak -- eth wise the blind,
  the Lord set -- eth a -- right the fa __ -- llen
  the Lord lov -- eth the right __ -- eous
  
  The Lord pre -- ser -- veth the pro -- se -- lytes
  he shall a -- dopt for his own the or -- phan and the wi -- dow
  and the way of sinn -- ers shall he de -- stroy
  
  the Lord shall be king un -- to e -- ter -- ni -- ty
  Thy God __ O Sion, un -- to ge -- ner -- a -- tion and ge -- ner -- a -- tion
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