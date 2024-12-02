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
  title = \markup\normal-text\fontsize #0.25 
    "Tone III, Kontakion" 
  subtitle = \markup\bold\fontsize #1 
        {"Kontakion of Martyr Eustratius"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
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

soprano = 
\relative c' { 
  \global 

  d4 e f f f e f g(a) a a2 \bar "|"
  a4 a g2 f4 (e) d2 \bar "|"
  
  d4 e f f f f e f g(a) a a2 \bar "|"
  a4 a a a bf2 bf4 a2 \bar "|"
  a4 a g2 (f4 e) d2 \bar "|"
  
  a4' a a a g f g8(a bf a g f g4) g f1 \bar "||"
}

alto = 
\relative c' { 
  \global 
  a4 bf c c c c c e4(f) f f2 \bar "|"
  f4 f c2 c2 a2 \bar "|"
  
  a4 bf c c c c c c e4(f) f f2 \bar "|"
  f4 f f f f2 f4 f2 \bar "|"
  f4 f c1 a2 \bar "|"
  
  f4' f f f e f f2(e8 f e4) e c1 \bar "||"
}

tenor = 
\relative c { 
  \global 
  f4 g a a a g a bf(c) c c2 \bar "|"
  c4 c bf2 a4 (g) f2 \bar "|"
  
  f4 g a a a a g a bf(c) c c2 \bar "|"
  c4 c c c d2 d4 c2 \bar "|"
  c4 c bf2 (a4 g) f2 \bar "|"
  
  c4' c c c  bf a bf8(c d c bf a bf4) bf a1 \bar "||"
} 


bass = 
\relative c { 
  \global 
  d4 c f f f c f c(f) f f2 \bar "|"
  f4 f e2 (f4 c) d2 \bar "|"
  
  d4 c f f f f c f c(f) f f2 \bar "|"
  f4 f f f bf,2 bf4f2 \bar "|"
  f4 f e2 f4 (c) d2 \bar "|"
  
  f4' f f f c f bf,2(c) c4 f1 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  Speak -- ing "eloquently of" "divine things" before the i -- ni __ -- qui -- tous
  O all won -- drous __ one
  
  "thou didst" en -- dure beat -- ings with most cour -- a __ -- geous heart
  didst shine forth with god -- ly signs
  "and didst extinguish the towering flame" of false __ -- hood
  
  "Wherefore we honor thee, O most blessed" Eu -- stra -- ti -- us mar -- tyr __ of Christ
}


\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" "A" } 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T" "B" } 
    } << 
      \clef bass 
      \new Voice = "tenor" { \voiceThree \tenor } 
      \new Voice = "bass" { \voiceFour \bass } 
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