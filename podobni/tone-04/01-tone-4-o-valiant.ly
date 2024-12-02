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
    "Tone IV, Prosomion: “As One Valiant”" 
  subtitle = \markup\bold\fontsize #1 
        {"THE 26th DAY OF THE MONTH OF AUGUST"} 
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
  g4 fs g1 a2 a2 a4(g a b a2 g2 fs1) \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
  g4 d g1 d2 d2 d1(d2 g d1) \bar "||"
}

refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "and the truth of the Lord" a -- bi -- deth for -- ever __
}

soprano = 
\relative c' { 
  \global 
  % 1
  fs4 g2 fs4 g(a g fs) e1 \bar "|"
  %2
  g2 fs4 g2.(a4 b a g) fs g1 \bar "|"
  %3
  a2 g4 a2(g4 fs g2 fs e) d1 \bar "|"
  %4
  fs4 fs(a) g(fs) g1 \bar "|"
  %5
  g4 a2 g4(a) fs(g) a(b) a1 \bar "|"
  
  %3
  a2 a4 g a2(g4 fs g2 fs e) d1 \bar "|"
  %4
  fs4 fs(a) g(fs) g1 \bar "|"
  
  %6
  g4 a2 a4 a2(g4 a) b2 a4 a g1 \bar "|"
  %7
  g4 a2 a4 g4 fs g2(a g) fs1 \fermata \bar "||"
}



bass = 
\relative c { 
  \global 
  % 1
  d4 g2 d4 g(fs g d) e1 \bar "|"
  %2
  g2 d4 g1.(g4) d4 g1 \bar "|"
  %3
  d2 d4 d1(g2 a a,) d1 \bar "|"
  %4
  d4 d2 d2 g1 \bar "|"
  %5
  g4 d2 d2 d d d1 \bar "|"
  
  %3
  d2 d4 d d1(g2 a a,) d1 \bar "|"
  %4
  d4 d2 d g1 \bar "|"
  
  %6
  g4 d2 d4 d1 g2 d4 d g1 \bar "|"
  %7
  g4 fs2 fs4 g4 d g2(fs g) d1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  %1
  The spouse of A __ -- dam
  %2
  caused "him to be driven from" pa __ ra -- dise
  %3
  through "the counsel of the " ser __ -- pent
  %4
  "but Natalia all-wisely led Adrian to" pa __ -- ra __ -- dise,
  %5
  "with her" sacred con __ -- ver __ -- sa __ -- tions
  
  %3
  spur -- "ring him on with" her teach __ -- ings
  %4
  "to endure painful" suf __ -- fer __ -- ings
  
  %6
  "being a medi" -- a -- "tor for him of" hea __ -- ven -- ly re -- wards
  %7
  and e -- ver -- last -- ing glo __ -- ry
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
      \new Voice = "bass" { \voiceTwo \bass_refrain } 
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