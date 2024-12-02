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
    "Tone VIII, Prokeimenon" 
  subtitle = \markup\bold\fontsize #1 
        {"Their Sound Hath Gone Forth"} 
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

soprano = 
\relative c'' { 
  \global 
  a4 a a b c c8 (b) a4 b2 (a4 b c2 b4) r4 \bar "|"
  b4 b a g (a b c b2. a4) g (b a2) g4 g1 \bar "||"
}

alto = 
\relative c' { 
  \global 
  fs4 fs fs g a a8 (g) fs4 g2 (fs4 g a2 g4) r4 \bar "|"
  g4 g fs e (fs g a g2. fs4) e (g fs2) e4 e1 \bar "||"
}

tenor = 
\relative c' { 
  \global 
  d4 d d d d d d d1 (e2 d4) r4 \bar "|"
  d4 d d b (d1. d4) b (d2.) b4 b1 \bar "||"
} 

bass = 
\relative c { 
  \global 
  d4 d d d d d d g2 (d4 b a2 b4) r4
  b4 b d e (d g fs g2. d4) e (b d2) e4 e1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  Their sound hath gone "forth into" all __ the earth __
  "and their words" unto the ends __ of __ the world
}


\score {
  \header {
    piece = "melody in the alto"
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