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
        {"Kontakion of St. Nicholas"} 
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

  d4 d e f f f e(f) g(a) a2 \bar "|"
  a4 a a g2(f4) e d2 \bar "|"
  
  d4 e f f f f e f g(a) a2 \bar "|"
  a4 a a a bf2 bf4 bf bf a2 \bar "|"
  
  a4 a a g f g8(a bf a g f g4) g f1 \bar "||"
}

alto = 
\relative c' { 
  \global 
  a4 a bf c c c c2 e4(f) f2 \bar "|"
  f4 f f c2. c4 a2 \bar "|"
  
  a4 bf c c c c c c e4(f) f2 \bar "|"
  f4 f f f f2 f4 f f f2 \bar "|"
  
  f4 f f e f f2(e8 f e4) e c1 \bar "||"
}

tenor = 
\relative c { 
  \global 
  f4 f g a a a g(a) bf(c) c2 \bar "|"
  c4 c c bf2(a4) g f2 \bar "|"
  
  f4 g a a a a g a bf(c) c2 \bar "|"
  c4 c c c d2 d4 d d c2 \bar "|"
  
  c4 c c bf a bf8(c d c bf a bf4) bf a1 \bar "||"
} 


bass = 
\relative c { 
  \global 
  d4 d c f f f c(f) c(f) f2 \bar "|"
  f4 f f e2(f4) c d2 \bar "|"
  
  d4 c f f f f c f c(f) f2 \bar "|"
  f4 f f f bf,2 bf4 bf d f2 \bar "|"
  
  f4 f f c f bf,2(c) c4 f1 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  In Myra O "Saint thou didst prove" "to be a minister" of things __ sa __ -- cred
  "for having fulfilled" "the gospel of Christ" O right __ -- eous one
  
  thou didst lay down thy life for thy peo __ -- ple
  and didst save the in -- no -- cent from death
  
  "wherefore thou wast" "sanctified as a great" initiate of the grace __ of God
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