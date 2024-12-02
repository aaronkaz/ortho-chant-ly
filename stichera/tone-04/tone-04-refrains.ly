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
    "Tone IV, Octoechos" 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
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


sop_refrain_six = 
\relative c'' { 
  \global 
  g4 fs g2 g2 a2 a2 a4(g a b a2 g) fs1 \fermata \bar "||"
}

bass_refrain_six = 
\relative c' { 
  \global 
  g4 d g2 g2 d2 d2 d1(d2 g) d1 \bar "||"
}

refrain_six = \lyricmode { 
  % Lyrics follow here. 
  For with thee there is for -- give __ -- ness
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
           "(6) Reader:"
          \bold "If Thou shouldest mark iniquities, O Lord, O Lord, who shall stand?"
          " "
          " "
        }
      }
    }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_six } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_six
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_six } 
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





sop_refrain_five = 
\relative c'' { 
  \global 
  g4(fs) g1(a2) a2 a4(g a b) a2 g fs1 \fermata \bar "||"
}

bass_refrain_five = 
\relative c' { 
  \global 
  g4(d) g1(d2) d2 d1 d2 g d1 \bar "||"
}

refrain_five = \lyricmode { 
  % Lyrics follow here. 
  My __ soul __ hath hoped __ in the Lord
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
           " "
          " "
          " "
          "(5) Reader:"
          \bold "For Thy name's sake have I patiently waited for Thee, O Lord;"
          \bold "my soul hath patiently waited for Thy word"
          " "
          " "
        }
      }
    }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_five } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_five 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_five } 
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





sop_refrain_four = 
\relative c'' { 
  \global 
  g4(fs) g1 a2 a2 a4(g a b) a2 g2 fs1 \fermata \bar "||"
}

bass_refrain_four = 
\relative c' { 
  \global 
  g4(d) g1 d2 d2 d1 d2 g d1 \bar "||"
}

refrain_four = \lyricmode { 
  % Lyrics follow here. 
  Let Is -- ra -- el hope __ in the Lord.
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
          " "
          " "
          " "
          "(4) Reader:"
          \bold "From the morning watch until night, from the morning watch"
          " "
          " "
        }
      }
    }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_four } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_four 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_four } 
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





sop_refrain_three = 
\relative c'' { 
  \global 
  g4 fs g1 a2 a2 a4(g a b a2) g2 fs1 \fermata \bar "||"
}

bass_refrain_three = 
\relative c' { 
  \global 
  g4 d g1 d2 d2 d1 d2 g d1 \bar "||"
}

refrain_three = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "and He shall redeem Israel out" of all His i -- ni __ qui -- ties
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
          " "
          " "
          " "
          "(3) Reader:"
          \bold "For with the Lord there is mercy, and with Him there is plenteous redemption;"
          " "
          " "
        }
      }
    }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_three } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_three 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_three } 
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




sop_refrain_two = 
\relative c'' { 
  \global 
  g4 fs g1(a2) a2 a4(g a b a2 g2) fs1 \fermata \bar "||"
}

bass_refrain_two = 
\relative c' { 
  \global 
  g4 d g1(d2) d2 d1(d2 g) d1 \bar "||"
}

refrain_two = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  praise Him, all __ ye peo __ -- ples.
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
          " "
          " "
          " "
          "(2) Reader:"
          \bold "O praise the Lord, all ye nations;"
          " "
          " "
        }
      }
    }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_two } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_two 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_two } 
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


sop_refrain_one = 
\relative c'' { 
  \global 
  g4 fs g1 a2 a2 a4(g a b a2 g2 fs1) \fermata \bar "||"
}

bass_refrain_one = 
\relative c' { 
  \global 
  g4 d g1 d2 d2 d1(d2 g d1) \bar "||"
}

refrain_one = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  "and the truth of the Lord" a -- bi -- deth for -- ever __
}

\score {
  \header {
    piece = \markup {
    \column {
       \fontsize #1.5 \left-align {
          " "
          " "
          " "
          "(1) Reader:"
          \bold "For He hath made His mercy to prevail over us,"
          " "
          " "
        }
      }
  }
  }
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "S" } 
    } <<
      \new Voice = "soprano" { \voiceOne \sop_refrain_one } 
    >>
    \new Lyrics \lyricsto "soprano" \refrain_one 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_refrain_one } 
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
