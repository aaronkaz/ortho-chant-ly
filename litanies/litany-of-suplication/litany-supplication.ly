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
    "Litany of Fervent Supplication" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup {
    \column {
       \fontsize #1.5 \left-align {
          "from notes of the Odessa Theological Seminary"
          " "
        }
      }
  }
    
  tagline = "Vigil: Litany of Supplication" 
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
  e4 e e e d1 c1 \bar "||"
  e4 e d2 d c1 \bar "||"
  e4 e d2 d c1 \bar "||"
  e2 d1( c1 ) \bar "||"
  
  e4 e e e d2 d c1 \bar "||"
  e4 e d2 d c1 \bar "||"
  e2 d1( c1 ) \bar "||"
} 

tenor_two = 
\relative c'' { 
  \global 
  c4 c c c a2(b) a1 \bar "||"
  c4 c a2 b a1 \bar "||"
  c4 c a2 b a1 \bar "||"
  c2 a(b a1) \bar "||"
  
  c4 c c c a2 b a1 \bar "||"
  c4 c a2 b a1 \bar "||"
  c2 a(b a1) \bar "||"
} 

bass_one = 
\relative c' { 
  \global 
  a4 a a a f2(g) e1 \bar "||"
  a4 a f2 g2  e1 \bar "||"
  a4 a f2 g2  e1 \bar "||"
  a2 f(g e1) \bar "||"
  
  a4 a a a f2 g e1 \bar "||"
  a4 a f2 g2  e1 \bar "||"
  a2 f(g e1) \bar "||"
} 

bass_two = 
\relative c { 
  \global 

} 


verse = \lyricmode { 
Го -- спо -- ди по -- ми -- луй
по -- даи Го -- спо -- ди
Те -- бе Го -- спо -- ди
А -- менъ __
и ду -- хо -- ви тво -- е -- му
Те -- бе Го -- спо -- ди
А -- менъ __
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
  e4 e d1 c1 \bar "||"
  e2 d2 d c1 \bar "||"
  e2 d2 d c1 \bar "||"
  e2 d1( c1 ) \bar "||"
  
  e4 e e d2(d c1) \bar "||"
  e2 d2 d c1 \bar "||"
  e2 d1( c1 ) \bar "||"
} 

tenor_two_en = 
\relative c'' { 
  \global 
  c4 c a2(b) a1 \bar "||"
  c2 a2 b a1 \bar "||"
  c2 a2 b a1 \bar "||"
  c2 a(b a1) \bar "||"
  
  c4 c c a2(b a1) \bar "||"
  c2 a2 b a1 \bar "||"
  c2 a(b a1) \bar "||"
} 

bass_one_en = 
\relative c' { 
  \global 
  a4 a f2(g) e1 \bar "||"
  a2 f2 g2  e1 \bar "||"
  a2 f2 g2  e1 \bar "||"
  a2 f(g e1) \bar "||"
  
  a4 a a f2(g e1) \bar "||"
  a2 f2 g2  e1 \bar "||"
  a2 f(g e1) \bar "||"
} 

bass_two_en = 
\relative c { 
  \global 

} 


verse_en = \lyricmode { 
Lord have mer __ -- cy
Grant this O Lord
To Thee O Lord
A -- men __

and to Thy Spirit
To Thee O Lord
A -- men __
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