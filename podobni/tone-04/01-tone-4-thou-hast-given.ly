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
    "Tone IV, Prosomion: “Thou Hast Given a Sign”" 
  subtitle = \markup\bold\fontsize #1 
        {"THE 22nd DAY OF THE MONTH OF AUGUST"} 
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
  fs4 g2 fs4 g2 fs4 e e1 \bar "|" 
  % 2
  g4 a2 g4 g fs1 \bar "|"
  % 3 
  fs4 g2(fs4 e) ds(e8 fs) g4(fs) e1 \bar "|"
  % 4
  g4 g4(a) b2. b4 b b1 \bar "|"
  % 5
  b4 b4(a) g(a) b1 \bar "|"
  % 6
  b4 a2 g4 g a1 \bar "|"
  % 7
  g4 a b2(a4) gs a1 \bar "|"
  % 8 
  a4 b(a g a b1) \bar "|"
  % 9
  a4 a g b2(a) g1 \fermata \bar "||"
}

bass = 
\relative c { 
  \global 
  % 1
  d4 g2 d4 g2 d4 e e1 \bar "|"
  % 2
  g4 fs2 g4 g d1 \bar "|"
  % 3
  d4 g2(d4 e) b2 b2 e1 \bar "|"
  % 4 
  g4 g4(g) g2. g4 g g1 \bar "|"
  % 5
  g4 g2 g2 g1 \bar "|"
  % 6
  g4 d2 d4 d d1 \bar "|"
  % 7 
  g4 g g2(a4) e a1 \bar "|"
  % 8
  d,4 g1(g1) \bar "|"
  % 9
  d4 g g g2(d) g1 \fermata \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  Thine e -- "nemies, torturing thee with" la -- cer -- a -- tion,
  lacerated one a -- no -- ther,
  "and, loosing" ar __ -- rows __  at __ thee,
  "they wounded themselves," O __ ath -- lete Lup -- pus;
  "and, intending to dismember thee, O" ble __ -- ssed __ one,
  "blinded, they inflicted their" wounds on a tree;
  "for the Lord" pre -- ser __ -- ved thee,
  "for Whose sake thou didst will to" suffer __
  "O intercessor for our souls, converser" with the an __ -- gels.
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