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
  title = "Тело Христово"
  
  composer =  \markup\bold\fontsize #1.5 
    {"Грузинская (Деметре Первели, XII в.)"} 
  %arranger = "English Arr: Rdr. Aaron Kaczmarek"
  
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
}

global = { 
  \key f \major 
  \set Score.timing = ##f
} 


melody = \relative c'' {
  \global
  a4 (g f8 g) a4 f8 (g a bes) a4 g8 (a) g (a) g (f) f (g f) e r \fermata \bar "|"
  e4 (f) g8 (a) f (g) a4 g8 (f) f g f e f (g f e) d1 \bar "||"
  
  a'4 (g  f8 g a4)  f8 (g a bes) a4 g8 a g (a) g (f) f (g) f e r \fermata \bar "|"
  f2 (g f f8 g f e f4) e8 (f) d4 c d1 \bar "||"
  
}

harmony = \relative c'' {
  \global
  c2.  c4 d2 c4 bes8 (c) bes4 (a) a4. g8 r
  g4 (a) bes4 d c4 c4 bes8 bes c c a4. g8 a1
  
  c1 d2 c4 bes8 c bes4 a g4 g8 g8 r
  bes2 (bes4 c4 bes8 c bes a g2 a4) g8 (a) f4 e d1
}

bass = \relative c {
  \global
  f2. f4 f2 f4 f c2 c4. c8 r8 \fermata \bar "|"
  c2 c4 bes4 c4 c c8 c c c d4 (c) d1 \bar "|"
  
  f1 f2 f4 f8 f c4 c c c8 c8 r \fermata \bar "|"
  d2 (ees d4 bes c4. bes8 a4) a bes c d1 \bar "||"
}

verse = \lyricmode {
  Те __ --  ло Хри __ -- сто -- во __  при __ -- и __ -- ми __ -- те,
  ис __ -- точ __ -- ни __ -- ка без __ -- смерт -- на -- го вку -- си __ -- те.
  
  Ал __ -- ли __ -- лу -- и -- я, ал __ -- ли __ --  лу __ -- и -- я,
  ал __ -- ли __ -- лу -- и -- я.
  
}

trans = \lyricmode {
  Tye __ --  lo Hri __ -- sto -- vo __  pree __ -- ee __ -- mee __ -- tye,
  ees __ -- toch __ -- nee __ -- ka byez __ -- smert -- na -- go vkoo -- see __ -- tye.
  
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
    \new Lyrics \lyricsto "melody" \verse
    \new Lyrics \lyricsto "melody" \trans
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
