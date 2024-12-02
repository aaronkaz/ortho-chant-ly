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
    {"THE 23rd DAY OF THE MONTH OF SEPTEMBER"} 
  subtitle = \markup\bold\fontsize #1 
    {"Tone VI, Aposticha at \"Glory\"..." }
  subsubtitle = \markup\bold\fontsize #4.25 
    {" "} 
  
  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Reader:"
          \bold "Glory..."
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
  a4 a2 a1 \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  a4 a2 a1 \bar "||"
}



refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Glory to the Father and to the Son and to the Holy" Spir -- it
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
  
  % a
  a4 gs2 gs4 a2 \bar "|"
  
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
  
  % a
  a4 e2 e4 a2 \bar "|"
  
  %last
  c,2 c4 g' a2 e a1 \fermata \bar "||"

} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Thou didst come forth from a barren womb as an angel, O" "Bap__" -- "" -- tist
  "from thine earliest childhood thou didst make thine abode in the" wild -- er -- ness
  "and hast shown thyself to be the seal" of all the "pro__" -- "" -- phets
  
  "for Him Whom they foresaw many times and proclaimed in indistinct" i -- ma -- ges
  "wast thou counted worthy to baptize in the" "Jor__" -- "" -- dan
  "and thou didst hear the voice of the Father" from "hea__" -- "" -- "" -- "" -- ven

  "bearing witness to" His Son -- ship
  "and thou didst see the Spirit in the" form "of a" dove
  "drawing down the voice upon the One Who" was be -- ing "bap__" -- "" -- tized
  
  "O thou who art the greatest of all the" "pro__" -- "" -- phets
  
  "cease not to pray in behalf of us who faithfully" ce -- le -- "brate thy" memo -- ry.
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