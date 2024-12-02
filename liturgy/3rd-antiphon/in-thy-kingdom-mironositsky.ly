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
  title = "3rd Antiphon"
  
  composer =  \markup\bold\fontsize #1.5 
    {"P. Mironositsky"} 
  arranger = "English Adaptation: Rdr. Aaron Kaczmarek"
  
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
}

global = { 
  \key f \major 
  \set Score.timing = ##f
} 


soprano = \relative c'' {
  \global
  g4 g g2. (f4) g2 a4 a bes a2 g f \bar "|"
  f4 g a g a f f g2 f1 \bar "||"
  
  \section
  \sectionLabel \markup \bold \circle "12."
  
  f4 f f g a2 g4 (a) f (d2 e4) f2 \bar "|"
  f4 g2 g4 a bes2 bes4 bes a1 a2 \bar "||"
  
  f4 (g a2) g4 (a) f (d) d e f2 \bar "|"
  g4 (a) bes2 bes4 bes a2 a a \bar "||"
  
   \section
  \sectionLabel \markup \bold \circle "10."
  
  f4 (g a2) g4 (a) f (d) d (e) f2 \bar "|"
  f2 g g4 a bes2 bes4 bes a2.(g4 a2) \bar "||"
  
  f4 f g a2 g4 g f g a g a f (d2) e4 f2 \bar "|"
  g4 (a) bes2 bes a1 a2 \bar "||"
  
   \section
  \sectionLabel \markup \bold \circle "8."
  
  f4 (g a2) g4 (a) f d d e f2 \bar "|"
  f2 g g4 a bes2 a1 a2 \bar "||"
  
   f4 (g) a2 g4 a f (d2) e4 f2 \bar "|"
   f2 g g4(a) bes1 (a) a2 \bar "||"
   
   \section
  \sectionLabel \markup \bold \circle "6."
  
  f4 (g a) a g a f (d) d(e) f2 \bar "|"
  f2 g g4 a bes2 bes a2. g4 a2 \bar "||"
  
  f4 f g a2 g4 a f d d d e f2 e4 e d2 \bar "|"
  f2 g g4 a bes2 bes4 bes a1 a2 \bar "||"
  
  \section
  \sectionLabel \markup \bold \circle "4."
  
  a2 (d1) c2 bes a2. a4 a a a g2. (f4) g2.  a4 a a a g2. \break
  a4 a a a a a g2 g g a2.(g4) f2 d4 d e1 f2.(e4) d2 \bar "||"
  
  g2(f) g1 a4.(g8) a4 bes a2 g4 g f1 \bar "|"
  d2(a') g1 f2 e d d d a' a1 a \bar "||"
  
  f4 f f g a2 a4 a g a f (d2 e4 f2.)
  f4 f2 g g4(a) bes2 a1 a \bar "||"
  
  g2(f) g1  a4.(g8) a4 (bes a2 g f1)
  d2 a'  g4 g g2 f4 f e2 d1 d2 a'1 \bar "||"
}


alto = \relative c' {
  \global
  d4 d d1 e2 f4 f f e2 e d
  d4 e f e e d d d2 d1
  
  d4 d d e f2 e d1 d2
  d4 e2 e4 f g2 g4 g f1 f2
  
  d4 (e f2) e d d4 d d2 
  e4 (f) g2 g4 g f2 f f
  
  d4 (e f2) e d d2 d2 
  d2 e e4 f g2 g4 g f2.(e4 f2)
  
  d4 d e f2 e4 e d e f e e d4(d2) d4 d2
  e4(f) g2 g f1 f2
  
  d4 (e f2) e d4 d d d d2 
  d2 e e4 f g2 f1 f2
  
  d4 (e) f2 e4 e d (d2) d4 d2
  d2 e e4(f) g1 (f1) f2
  
  d4 (e f) f e e d2 d d2
  d2 e e4 f g2 g f2. e4 f2
  
  d4 d e f2 e4 e d d d d d d2 d4 d d2
  d2 e2 e4 f g2 g4 g f1 f2
  
  f2 (g1) a2 g f2. f4 f f f d2.(d4) d2. f4 f f f d2.
  f4 f f f f f e2 e e f2. (e4) d2 d4 d d1 d1 d2
  
  d1 e f2 f4 f e2 e4 e d1
  d1 d d2 d d d d f f1 f
  
  d4 d d e f2 f4 f e e d1 (d2.)
  d4 d2 e e4(f) g2 f1 f
  
  d1 e f2 f (e1 d) d2 d d4 d d2 d4 d d2 d1 d2 <d f>1
}


tenor = \relative c' {
  \global
  bes4 bes bes2. (a4) c2 c4 c bes c2 c a 
  a4 c c c c a a bes2 a1 
  
  a4 a a c c2 c a2 (bes) a2
  a4 c2 c4 c d2 d4 d d1 d2
  
  a4 (c c2) c a bes4 bes a2
  c2 d d4 d d2 d d
  
  a4 (c c2) c a bes a2
  a2 c c4 c d2 d4 d d1.
  
  a4 a c c2 c4 c a c c c c a2(bes4) bes a2
  c2 d d d1 d2
  
  a4 (c c2) c a4 a bes bes a2
  a2 c c4 c d2 d1 d2
  
  a4 (c) c2 c4 c a2(bes4) bes a2
  a2 c c d1 (d1) d2
  
  a4 (c c) c c c a2 bes a
  a2 c c4 c d2 d d2. d4 d2
  
  a4 a c c2 c4 c a a bes bes bes d (c) bes bes a2
  a2 c c4 c d2 d4 d d1 d2
  
  d2 (d f) e e d2. d4 d d c bes2. a4 bes2. <a d>4 <a d> <a d> <a d> bes2. 
  <a d>4 <a d> <a d> <a d> <a d> <a d>  <bes d>2 <bes d> <bes d> <a d>1 <a d>2 a4 a bes1 a2.(g4) f2
  
  bes2 (a) a1 c4.(bes8) c4 bes c2 c4 c a1
  a1 bes1 a2 bes a a a <a d> <a d>1 <a d>
  
  a4 a a c c2 c4 c c c a2 (bes c2.) 
  a4 a2 c4 (c) c2 c c1 c
  
  bes2(a) a1 c4. (bes8) c4 (bes c1 a) g2 g a4 a a2 g4 g f2 g1 g2 g1
}


bass = \relative c' {
  \global
  g4 g g2. (d4) c2 f4 f d c2 c2 d2 \bar "|"
  d4 c f c c d f g2 d1 \bar "||"
  
  d4 d d c f2 c d4 (f g2) d2 \bar "|"
  d4 c2 bes4 a g2 g4 bes d1 d2 \bar "||"
  
  d4 (c f2) c d4 (f) g g d2 \bar "|"
  c4 (a) g2 g4 bes d2 d d \bar "||"
  
  d4 (c f2) c d4 (f) g2 d2 \bar "|"
  d2 c bes4 a g2 g4 bes d1. \bar "||"
  
  d4 d c f2 c4 c d c f c c d (f g) g4 d2 \bar "|"
  c4 (a) g2 g4(bes) d1 d2 \bar "||"
  
  d4 (c f2) c d4 f g g d2 \bar "|"
  d2 c bes4 a g(bes) d1 d2 \bar "||"
  
  d4(c) f2 c4 c d (f g) g d2 \bar "|"
  d2 c  bes4(a) g2. (bes4 d1) d2 \bar "||"
  
  d4 (c f) f c c d (f) g2 d \bar "|"
  d2 c bes4 a g2 g4 (bes) d2. d4 d2 \bar "||"
  
  d4 d c f2 c4 c d f g g g a2 g4 g f (e) \bar "|"
  d2 c bes4 a g2 g4 bes d1 d2 \bar "||"
  
  d4(c) bes1 c2 c d2. d4 d d d g2.(d4) g2. d4 d d d g2.
  d4 d d d d d g2 g g d1 d2 d4 d g1 d1 d2 \bar "||"
  
  g2(d) d1 f2 f4 d c2 c4 c d1 \bar "|"
  f1 e f2 g f f d d d1 d \bar "||"
  
  d4 d d c f2 f4 f c c d (f g2 d2.) 
  d4 d2 c4 (c') bes (a) f(a) c1 c, \bar "||"
  
  g'2(d) d1 f2 f4(e c1 d1) e2 e d4 d d2 e4 e f2 e1 c2 c1 \bar "||"

}

verse = \lyricmode {
 In Thy king __ -- dom re -- mem -- ber us O Lord,
 when Thou com -- est in -- to Thy King  -- dom.
 
 Bless -- ed are the poor in __ spir __ -- it, 
 for theirs is the King -- dom of heav -- en.
 
 Bless __ --ed are __ those who mourn,
 for __  they shall be com -- fort -- ed.
 
 Bless __ -- ed are __  the __  meek,
 for they shall in -- her -- it the earth. __
 
 Bless -- ed are those who hung -- er and thirst aft -- er right __ -- eous -- ness,
 for __ they shall be filled.
 
 Bless__  -- ed __ are the mer -- ci -- ful,
 for they shall ob -- tain mer -- cy.
 
 Bless __ -- ed are the pure __ in heart,
 for they shall __ see __ God.
 
 Bless __  -- ed are the peace __ -- mak __ -- ers,
 for __ they shall be called the sons of God.
 
 Bless -- ed are those who are per -- se -- cu -- ted for right -- eous -- ness sake,
 for theirs is the King -- dom of Heav -- en.
 
 Bless __ -- ed are you when men shall  re -- vile __  you and per -- se -- cute you,
 and shall say all manner of ev -- il a -- gainst you false -- ly for my sake.
 
 Re __ -- joice and __ be ex -- ceed -- ing -- ly glad,
 for __ great is your re -- ward in the heav -- ens.
 
 Glo -- ry to the Fa -- ther and to the son __
 and to the ho __ -- ly spir -- it.
 
  Both __ now and __ ever __ and un --to the a -- ges of a -- ges a -- men
 
}



\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
    } \lyricsto "soprano" \verse
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      %instrumentName = \markup \center-column { "Tenor/Bass" } 
    } << 
      \clef bass 
      \new Voice = "tenor" { \voiceOne \tenor } 
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
