\version "2.24.1"
\include "gregorian.ly" 

\layout { 
  \context{ 
    \Score \override SpacingSpanner.packed-spacing = ##f 
  } 
  \context{ 
    \Lyrics \override LyricHyphen.minimum-distance = #2 
    \override LyricSpace.minimum-distance = #2
  } 
} 

\header {
  title = "Receive the Body of Christ"
  
  composer =  \markup\bold\fontsize #1.5 
    {"Georgian Melody"} 
  arranger = "English Arr: Rdr. Aaron Kaczmarek"
  
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
}

global = { 
  \key f \major 
  \set Score.timing = ##f
} 


melody = \relative c'' {
  \global
  a4 (g) f8 (g a) a f (g a bes) a4 g8 (a) g (a g f f g f e) r \fermata \bar "|"
  e4 (f) g8 (a) f (g) a4 g8 f f (g) f (e) f (g f) e d1 \bar "||"
  
  a'4 (g  f8 g a4)  f8 (g a bes) a4 g8 a g (a) g (f) f (g) f e r \fermata \bar "|"
  f2 (g f f8 g f e f4) e8 (f) d4 c d1 \bar "||"
  
}

harmony = \relative c'' {
  \global
  c2 c4. c8 d2 c4 bes8 (c) bes4 (a a4. g8) r
  g4 (a) bes4 d c4 c8 c bes4 c a4. g8 a1
  
  c1 d2 c4 bes8 c bes4 a g4 g8 g8 r
  bes2 (bes4 c4 bes8 c bes a g2 a4) g8 (a) f4 e d1
}

bass = \relative c {
  \global
  f2 f4. f8 f2 f4 f c1 r8 \fermata \bar "|"
  c2 c4 bes4 c4 c8 c8 c4 c d4 (c8) c d1
  
  f1 f2 f4 f8 f c4 c c c8 c8 r \fermata \bar "|"
  d2 (ees d4 bes c4. bes8 a4) a bes c d1 \bar "||"
}

verse = \lyricmode {
  Re __ -- ceive __ the bo __ -- dy of __ christ __
  taste __ of __ the __ foun -- tain of i __ -- mor __ -- ta __ -- li -- ty
  
  Al __ -- le __ -- lu -- i -- a al __ -- le __ -- lu __ -- i __ -- a
  Al __ -- le __ -- lu -- i -- a
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "harmony" { \voiceOne \harmony }
      \new Voice = "melody" { \voiceTwo \melody }
    >>
    \new Lyrics \with {
    } \lyricsto "melody" \verse
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      %instrumentName = \markup \center-column { "Tenor/Bass" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceOne \bass } 
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
    indent = 0\cm 
    \context { 
      \Staff 
      %\override VerticalAxisGroup.staff-staff-spacing = 
      %  #'((basic-distance . 0) 
       %    (minimum-distance . 2) 
       %    (padding . 2)) 
    } 
  } 
  \midi { }
}
