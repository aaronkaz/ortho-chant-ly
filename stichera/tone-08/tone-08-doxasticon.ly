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
    "Tone VIII, Prosomion: “Lord I Have Cried”" 
  subtitle = \markup\bold\fontsize #1 
        {"Doxasticon for the Icon"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 

  poet = \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Reader:"
          \bold "Glory in the 8th tone"
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
  a4 a a2(g4 a) b2 a g1 \fermata \bar "||"
}

bass_refrain = 
\relative c' { 
  \global 
}

refrain = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "Glory to the Father and to the Son and to" the Ho __ -- ly Spir -- it
}

soprano = 
\relative c'' { 
  \global 
  c2 b4 b c2(b4 a2) \bar "|"
  c4 c4 b c2(d4 c) b2 \bar "|"
  c4 c4 b2(a4 c) b2 a g \bar "|"
  b4 b4 c2.(b4) a2 \bar "|"
  c4 c4 b c2(d4) c b2 \bar "|"
  d4 d4 c2(b) a1 \fermata \bar "||"
  
  c2 b4 b c2(b4) a2 \bar "|"
  c4 c4 b c2 d4(c) b2 \bar "|"
  c4 c4 b2(a4 c) b2 a g \bar "|"
  b4 b4 c2.(b4) a2 \bar "|"
  c4 c4(b) c2 d4 c b2 \bar "|"
  d4 d4 c2 c4 b b a1 \fermata \bar "||"
}

bass = 
\relative c { 
  \global 

} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  Come, "ye assemblies" of Russia __
  "Come, O ye companies" of the faith __ -- ful, 
  "to greet the div" -- ine Mai __ den and Queen! 
  "For, lot the Queen cometh in her pre" -- cious i __ -- mage,
  "to save the city and people assailed" by the pa __ -- gan foe. 
  "O great and all-glorious wonder which passeth un" -- der -- stan __ -- ding! 
  
  O "how the adversary" is van __ -- quished
  "by the arrival of her precious image, the scepters of" kings are made stead __ -- fast, 
  "night hath been abolished" and day __ hath drawn nigh! 
  "Wherefore, our nature receiveth thee as the cause of our" sal -- va __ tion, 
  "and all creation hymneth" thee __  cry -- ing a -- loud: 
  "Rejoice, O intercessor, helper and" sal -- va -- tion of our souls!
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