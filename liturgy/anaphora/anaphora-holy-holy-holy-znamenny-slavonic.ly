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
  title = \markup\bold\fontsize #0.75 
    "Anaphora" 
  subtitle = \markup\bold\fontsize #3.5 
    {"Holy, Holy, Holy... (Slavonic)"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Znamenny Anaphora"} 
    tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
} 

global = { 
  \key bf \major 
  \set Score.timing = ##f
} 


soprano = 
\relative c'' { 
  \global 
  g4. (a8 bf2) bf bf g8 bf4 bf8 a bf4 \bar "|"
  g8 bf4 bf8 bf bf a bf4 \bar "|"
  bf4 bf8 a a g4 \bar "|"
  g4 a bf c bf \bar  "|" 
  bf8 a bf c4 bf8 c4 bf8 c bf a bf2 (a g4 a g8 f) g2 \bar "|"
  g2 a4 (bf c bf a8 bf c4) bf (a8 bf) c2 (a8 bf a2) g2 \bar "||"
} 

alto = 
\relative c'' { 
  \global 
  d,1 d2 d2 g8 g4 g8 g g4
  g8 g4 g8 g g g g4
  f4 f8 c c g'4
  g4 g g g g 
  g8 g g g4 g8 g4 g8 g g g g4 (d d2 d d4 ) d2
  g2 g1. g2 g2 ( f8 d8 c2) g'2
} 

bass = 
\relative c' { 
  \global 
  g4. (a8 bf2) bf bf g8 g4 g8 g g4 \bar "|"
  g8 g4 g8 g g g g4 \bar "|"
  d4 d8 f f g4 \bar "|"
  g4 g g g g \bar "|"
  g8 g g g4 g8 g4 g8 g g g g1 (g2.) g2 \bar "|"
  g2 g1. g4. (f8) ef (c4 ef8 f4 f2) g2 \bar "||"
} 

tenor = 
\relative c' { 
  \global 
  d1 d2 d2 g,8 d'4 d8 c d4
  g,8 d'4 d8 d d c d4
  bf4 bf8 c c g4
  bf4 c d ef d
  d8 c d ef4 d8 ef4 d8 ef d c d2 (c bf4 c bf8 a) bf2
  bf2 c4 (d ef d c8 d ef4) d4 (c8 d) ef2 (c8 bf c2) g2
} 

verse = \lyricmode { 
  % Lyrics follow here. 
   Свят __ Свят, Свят, Гос -- подь Са -- ва -- оθ! 
   Ис -- полнь не -- бо и зем -- ля
   сла -- вы Тво -- е -- я
   О -- сан -- на в'выш -- них
   бла -- го -- сло  -- вен гря -- дыи во и -- мя Гос -- под __ -- не
   О -- сан __ -- на __  в'выш __ -- них
} 

transl = \lyricmode { 
  % Lyrics follow here. 
  Svyat __ Svyat, Svyat, Gos -- pod' Sa -- va -- оth! 
  Is -- poln' ne -- bo i zem -- lya
  sla -- vyi Tvo -- ye -- ya
  О  -- san -- na v'vyish -- nikh
  bla -- go -- slo -- ven grya -- dyii vo i -- mya Gos -- pod __ -- nye
  О  -- san __ -- na v'vyish __ -- nikh
}

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      \remove "Time_signature_engraver"
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "Soprano" "Alto"} 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Lyrics \lyricsto "soprano" \transl 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "Tenor/Bass" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceOne \tenor } 
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