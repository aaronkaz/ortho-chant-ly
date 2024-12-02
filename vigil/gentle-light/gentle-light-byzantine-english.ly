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
  title = "O Gentle Light"
  
  composer =  \markup\bold\fontsize #1.5 
    {"Byzantine Melody"} 
  %arranger = "English Arr: Rdr. Aaron Kaczmarek"
  
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
}

global = { 
  \key f \major 
  \set Score.timing = ##f
} 


melody = \relative c' {
  \global
  
 d4 d d e d c d e f(g) f2
  f4 f f e f e8 (d c4) d2 \bar "|"
  d4 f(e) d(e) f(g f) e g8 (f) e(g) f2 \bar "|"
  d4 d d e f(g) f e f e d e g (f8 e f4.) \bar "|"
  f8 f g4 a g f g f e f8(g) f(e) d(c) d(e) f4 d \break 
  e e e (f e8 d c4) d2 \bar "|"
  c4 d e f g a(g) f(e) d f g8(f e g f4.) \bar "|"
  e8 f4 g a4. (c8) a4(g) f(e) g f8 (e) f4. \bar "|"
  e8 f4 (g) f e d8(c d4 e8 f e4 g f8 e f2) \bar "|"
  f4 f e d c d g f e2 d1 \fermata \bar "||"
}

eison = \relative c' {
  \global
  
 d4 d d e d c d d d2 d
  d4 d d c c c c4 d2 \bar "|"
  d4 d2 d2 d2.d4 d d d2 \bar "|"
  d4 d d d d2 d4 d d d d d d2.. \bar "|"
  d8 d d4 d d d d d d d d d8(c) d4 d d
  c c c1 d2 \bar "|"
  c4 d d d d d2 d2 d4 d d2..\bar "|"
  d8 d4 d d2 d2 d2 d4 d4 d4. \bar "|"
  d8 d2 d4 d d8(c d1 d4 d2) \bar "|"
  d4 d d d c c c c c2 d1
}

verse = \lyricmode {
 Oh gen -- tle light of the ho -- ly glo -- ry 
 of the im -- mor -- tal fa __ -- ther
 oh ho __ -- ly __ bless __ -- ed Je __ -- sus __ Christ
 now that we have come __ to the set -- ting of the sun __
 ha -- ving be -- held the eve -- ning light we praise __ God __ fa __ -- ther, 
 Son and ho -- ly spir __ -- it
 For meet it is at all __ times __ to be hymned __ 
 with rev' -- rent voi __ -- ces oh __ son of __ God
 and gi __ -- ver of life __
 where -- fore all the world doth glo -- ri -- fy thee
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "melody" { \voiceOne \melody }
      \new Voice = "eison" { \voiceTwo \eison }
    >>
    \new Lyrics \with {
      
    } \lyricsto "melody" \verse


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
      %\override VerticalAxisGroup.staff-staff-spacing = 
      %  #'((basic-distance . 0) 
       %    (minimum-distance . 2) 
       %    (padding . 2)) 
    } 
  } 
  \midi { }
}
