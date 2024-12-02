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
    "Tone VII, Octoechos" 
  subtitle = \markup\bold\fontsize #1 
        {"Resurrectional Stichera"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "(7) Reader:"
          \bold "Let Thine ears be attentive"
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
  b4 c2 b4 a4(b g a) b1 \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  g4 c,2 g'4 d2(e4 d) g1 \bar "||"
}



refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "To the" voice "of my suppli" -- ca -- tion
}

soprano = 
\relative c'' { 
  \global
  % 1
  b4 a4 b a b c2 c4 b2 \bar "|"
  % 2
  c4 d4(c) b a2 a4 g2 \bar "|"
  
  % 1
  b4 a4 b a4 b c2 c4 b2 \bar "|"
  % 2
  c4 d4(c) b a2 a4 g2 \bar "|"
  
  % 1
  b4 a4 b a4 b c2 c4 b2 \bar "|"
  
  % last 
  d4 d2 d4 c4 b2 c4 b a1 \fermata \bar "||"
}

bass = 
\relative c' { 
  \global 
  % 1
  g4 g4 g4 e d c2 e4 g2 \bar "|"
  %2
  c4 b(c) g4 d2 d4 g2 \bar "|"
  
  % 1
  g4 g4 g4 e4 d c2 e4 g2 \bar "|"
  %2
  c4 b(c) g4 d2 d4 g2 \bar "|"
  
  % 1
  g4 g4 g4 e4 d c2 e4 g2 \bar "|"
  
  %last
  g4 g2 g4 c, g'2 e4 g a1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  Thou wast -- \markup { \underline \bold {"seized"} \normal-text {"by ini"} } -- qui -- tous men, O Christ
  yet Thou __ "art my God, and I am" not a -- shamed
  
  Thou wast -- \markup { \underline \bold {"beat-"} \normal-text {"en on the shoulders"} } yet I shun Thee not
  "Thou wast" nailed __ "to the Cross, and I do not con" -- "ceal__" -- "" it
  
  "" "I" \markup {\underline \bold {"boast"} \normal-text {"in Thine arising"}} for Thy death "is
my" life

  "O Almighty Lord Who lovest man" -- "kind__" -- "" "" glory be to Thee!
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