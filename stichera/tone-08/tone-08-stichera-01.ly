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
    {"THE 24th DAY OF THE MONTH OF SEPTEMBER"} 
  subtitle = \markup\bold\fontsize #1 
    {"Tone VIII, at \"Lord I have cried\"..." }
  subsubtitle = \markup\bold\fontsize #4.25 
    {" "} 
  
  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "(1) Reader:"
          \bold "For He hath made His mercy to prevail over us,"
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
  b4 a g2 a4 b1(a4 b c d c2 b) g1 \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  g4 d e2 d4 g1(d1 g2 d2) e1 \bar "||"
}



refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  and the truth "of the Lord abideth for" -- e __ -- ver
}

soprano = 
\relative c'' { 
  \global
  % 1
  c2 b4 c2(b4) a2 \bar "|"
  % 2
  c4 b c2(d4 c b2) \bar "|"
  % 3
  c4 b2 a4(c) b2 a2 g2 \bar "|"
  
  % 1
  b4 c2 b4 c2 c4 b a2 \bar "|"
  % 2
  c4 b c2 d4(c) b2 \bar "|"
  % 3
  c4 b2 a4(c) b2 a2 g2 \bar "|"
  
  % last 
  d'4 c2 b a1 \fermata \bar "||"
}

bass = 
\relative c { 
  \global 
  % 1
  c2 g'4 c,2(g'4) a2 \bar "|"
  %2
  c,4 g' c,2(b4 c g'2) \bar "|"
  %3
  c,4 g'2 e4(c) d2 d g \bar "|"
  
  % 1
  g4 c,2 g'4 c,2 c4 g'4 a2 \bar "|"
  %2
  c,4 g' c,2 b4(c) g'2 \bar "|"
  %3
  c,4 g'2 e4(c) d2 d g \bar "|"
  
  %last
  d4 e2 e a1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "O Lord" "though Thy pure proto" mar __ tyr,
  "was committed to" the fire__
  "yet she was" not con __ -- sumed there -- in
  
  having Thee "as a" coo-- "ler of" the flames
  "and preserved by" the hand of__ Thee
  the Sav -- ior__ of our souls,
  
  "she remained unconsumed amid many" wi -- ld beasts
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