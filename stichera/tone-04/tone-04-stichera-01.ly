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
    {"Tone IV, at \"Lord I have cried\"..." }
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
  %a
  fs4 g2 g4 g2 \bar "|"
  %b 
  a4 a2 g2 \bar "|"
  %c
  g4 a b2 a4 g4 fs g a2 g2 \bar "|"

  %d
  g4 a4 fs2 g a \bar "|"
  %e
  a4 g2 a4 b a g fs2 \bar "|"
  %f
  g4 a2 g2 \bar "|"
  
  %d
  g4 g a fs2 g a \bar "|"
  %e
  a4 g2 a4 b a g fs2 \bar "|"
  %f
  g4 a2 g2 \bar "|"
  
  %last
  a4 g fs g2 fs e1 \fermata \bar "||"
  
}

bass = 
\relative c { 
  \global 
  %a
  d4 g2 g4 g2 \bar "|"
  %b 
  d4 d2 g2 \bar "|"
  %c
  g4 fs g2 fs4 g4 d g d2 g2 \bar "|"
  
  %d
  g4 d4 d1 d2 \bar "|"
  %e
  g4 g2 g4 g fs g d2 \bar "|"
  %f
  g4 d2 g2 \bar "|"
  
  %d
  g4 g d4 d1 d2 \bar "|"
  %e
  g4 g2 g4 g fs g d2 \bar "|"
  %f
  g4 d2 g2 \bar "|"
  
  %last
  d4 d d g2 d e1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Why believest thou not my words, O Zecha" -- "ri__" -- "" -- ah
  "Why sayest thou that I offer thee false" ti -- dings
  "" "" I am "the arch" -- an -- gel of God
  
  "and those things which I am commanded, these do I" re -- late to thee
  standing here be -- "fore__" -- "" -- "" thee
  "But inasmuch as thou hast not believed, and hast" not faith

  "thou shalt be deaf and mute until" "thou shalt see the divine" ful -- fillment "of my" words
  "And when Elizabeth will give birth for thee un" -- to the voice of the Word
  "the great Forerunner, who will illumine the" na -- tion

  "thou shalt bless the" God of Is -- ra -- el
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