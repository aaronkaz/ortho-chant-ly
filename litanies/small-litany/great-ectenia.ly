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
    "Great Litany" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Archimandrite Matfei"
          " "
        }
      }
  }
    
  tagline = "Great Litany" 
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
  c4 c b c d2 c2 \bar "|"
  c4 c b c d2 e2 \bar "|"
  e4 e d e f2 e2 \bar "|"
  e4 e d e f2 e2 \bar "|"
  e4 e f e d2 c2 \bar "|"
  f4 e d c d2 e2 \bar "||"
  
  d4(e) f2(e4) d2 c2 d2 \bar "||"
  d2 e1 \bar "||"
} 

tenor_two = 
\relative c'' { 
  \global 
  a4 a a a a2 a \bar "|"
  a4 a a a b2 c2 \bar "|"
  c4 c a c c2 c \bar "|"
  c4 c b c d2 c2 \bar "|"
  c4 c c c b2 a2 \bar "|"
  c4 c b a b2 c \bar "||"
  
  a4(c) c2. b2 a b \bar "||"
  b2 c1 \bar "||"
} 

bass_one = 
\relative c { 
  \global 
  e4 e d e f2 e \bar "|"
  e4 e d e g2 g \bar "|"
  g4 g f g a2 g \bar "|"
  a4 a a g a2 a \bar "|"
  a4 a a g g2 e \bar "|"
  a4 g g e g2 g2 \bar "||"
  
  f4(g) a2(g4) g2 e g \bar "||"
  g2 g1 \bar "||"
} 

bass_two = 
\relative c { 
  \global 

} 


verse = \lyricmode { 
Го -- спо -- ди по -- ми -- луй
Го -- спо -- ди по -- ми -- луй
Го -- спо -- ди по -- ми -- луй
Го -- спо -- ди по -- ми -- луй
Го -- спо -- ди по -- ми -- луй
Го -- спо -- ди по -- ми -- луй

Те __ -- бе Го -- спо -- ди
А -- менъ
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





tenor_one_en = 
\relative c'' { 
  \global 
  c2(b4) c d2 c2 \bar "|"
  c2(b4) c d2 e2 \bar "|"
  e2(d4) e f2 e2 \bar "|"
  e2(d4) e f2 e2 \bar "|"
  e2(f4) e d2 c2 \bar "|"
  f4(e d4) c d2 e2 \bar "||"
  
  d4(e) f2(e4 d2) c2 d2 \bar "||"
  d2 e1 \bar "||"
} 

tenor_two_en = 
\relative c'' { 
  \global 
  a2(a4) a a2 a \bar "|"
  a2(a4) a b2 c2 \bar "|"
  c2(a4) c c2 c \bar "|"
  c2(b4) c d2 c2 \bar "|"
  c2(c4) c b2 a2 \bar "|"
  c2(b4) a b2 c \bar "||"
  
  a4(c) c2.(b2) a b \bar "||"
  b2 c1 \bar "||"
} 

bass_one_en = 
\relative c { 
  \global 
  e2(d4) e f2 e \bar "|"
  e2(d4) e g2 g \bar "|"
  g2(f4) g a2 g \bar "|"
  a2(a4) g a2 a \bar "|"
  a2(a4) g g2 e \bar "|"
  a2(g4) e g2 g2 \bar "||"
  
  f4(g) a2(g2.) e2 g \bar "||"
  g2 g1 \bar "||"
} 

bass_two_en = 
\relative c { 
  \global 

} 


verse_en = \lyricmode { 
Lord __ have mer -- cy
Lord __ have mer -- cy
Lord __ have mer -- cy
Lord __ have mer -- cy
Lord __ have mer -- cy
Lord __ have mer -- cy

To __ thee __ O Lord
A -- men
} 


\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
      \new Voice = "tenor1" { \voiceOne \tenor_one_en } 
      \new Voice = "tenor2" { \voiceTwo \tenor_two_en } 
    >>
    \new Lyrics \lyricsto "tenor1" \verse_en
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" "B2" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_one_en } 
      \new Voice = "bass2" { \voiceTwo \bass_two_en } 
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