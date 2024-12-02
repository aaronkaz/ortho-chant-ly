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
    "Tone VI, Octoechos" 
  subtitle = \markup\bold\fontsize #1 
        {"Resurrectional Stichera"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "}  
  
  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Reader:"
          \bold "Both now and ever..."
          " "
          " "
        }
      }
  }
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
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

sop_refrain = 
\relative c'' { 
  \global 
  a4 a g(a b a) g2 a b(c4 b) a2 gs a1 \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  a4 d, g2.(d4) e2 a g(c,4 g') a2 e a,1 \fermata \bar "||"
}



refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Both now and ever and unto" the a __ -- ges of a __ -- ges A -- men
}

soprano = 
\relative c'' { 
  \global
  % a
  a4 gs2 gs4 a2 \bar "|"
  %b
  b4 b2 a b \bar "|"
  %c
  c4 c b c b a gs2 \bar "|"
  
  % a
  a4 gs2 gs4 a2 \bar "|"
  %b
  b4 b2 a b \bar "|"
  %c
  c4 c b c b a gs2 \bar "|"
  
  % a
  a4 gs2 gs4 a2 \bar "|"
  %b
  b4 b2 a b \bar "|"
  %c
  c4 c b c b a gs2 \bar "|"
  
  %last
  c2 c4 b a2 gs a1 \fermata \bar "||"
}

bass = 
\relative c' { 
  \global 
  % a
  a4 e2 e4 a2 \bar "|"
  %b
  g4 g2 g g \bar "|"
  %c
  c,4 e g g g a e2 \bar "|"
  
  % a
  a4 e2 e4 a2 \bar "|"
  %b
  g4 g2 g g \bar "|"
  %c
  c,4 e g g g a e2 \bar "|"
  
  % a
  a4 e2 e4 a2 \bar "|"
  %b
  g4 g2 g g \bar "|"
  %c
  c,4 e g g g a e2 \bar "|"
  
  %last
  c2 c4 g' a2 e a1 \fermata \bar "||"

} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Who doth not call thee blessed, O all-holy" "Vir__" -- "" gin
  "Who will not hymn thine all-pure birth" "gi__" -- "" -- ving
  "For the only-begotten Son Who shone forth timelessly from" the "Fa__" -- "" -- "" -- "" ther

  "came forth, ineffably incarnate of thee, the" "pure__" -- "" one
  "and being God by" "na__" -- "" ture
  "He be" -- came "man__" -- "" for our sake

  "not divided into two" "Per__" -- "" sons
  "but known in two natures without con" -- "fu__" -- "" -- sion
  "Him do thou beseech, O pure and" most "ble__" -- "" --"" ssed one
  
  "that our souls" -- "" find "mer__" -- "" -- cy
}

\score {
  \header {
    piece = "refrain"
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceThree \bass_refrain } 
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

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
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
      \hide Stem
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 2) 
           (padding . 2)) 
    } 
  } 
}