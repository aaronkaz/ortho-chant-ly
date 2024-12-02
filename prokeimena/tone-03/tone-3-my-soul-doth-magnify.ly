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
    "Tone III, Prokeimenon" 
  subtitle = \markup\bold\fontsize #1 
        {"My Soul Doth Magnify"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
} 


global = { 
  \key d \major 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
} 
move = { \bar "" \break }

soprano = 
\relative c'' { 
  \global 
  a4 a a a a a a a2 r4 \bar "|"
  a4 a a a g8 a b1 (a4 g a b a2.)
  a4 a2 (b4 a g a1) g4(fs) g2 fs1 \bar "||"
}

alto = 
\relative c' { 
  \global 
  fs4 fs fs fs fs fs fs fs2 r4 \bar "|"
  fs4 fs fs fs e8 fs g1( fs4 e fs g fs2.)
  fs4 fs2 (g4 fs e fs1) e4(d) e2 d1 \bar "||"
}

tenor = 
\relative c' { 
  \global 
  d4 d d d d d d d2 r4 \bar "|"
  d4 d d d b8 d d1 (d4 b d2 d2.)
  d4 d2.(d4 b d1) b4 (a) b(cs) a1 \bar "||"
} 

bass = 
\relative c { 
  \global 
  d4 d d d d d d d2 r4 \bar "|"
  d4 d d d e8 d g1 (d4 e d b d2.)
  d4 d2 (b4 d e d1) e4 (fs) d(a) d1 \bar "||"
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  My soul doth mag -- ni -- fy the Lord,
  and my spi -- rit hath re -- joiced __ in God __ my __ sa -- viour
}


\score {
  \header {
    piece = "Melody in the Soprano"
  }
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