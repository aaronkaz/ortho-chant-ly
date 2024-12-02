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
    {"It is Truly Meet... (Slavonic)"} 
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
  a8 (bf) c4 c8 (bf) a4 bf2 a4 g8 (f) g2 \bar "|"
  g8 a bf4 bf8 bf a bf4 a8 bf4 bf8 bf a bf4 bf8 a4 g2 \bar "|"
  bf4 bf8 bf bf a bf c4 c4 c8 (bf) a (bf) c4 bf2 (a) g \bar "||"
} 

alto = 
\relative c'' { 
  \global 
  g4 g g g g(d) d d d2
  g8 g g4 g8 g g g4 g8 g4 g8 g d f4 f8 c4 g'2
  g4 g8 g g g g g4 g g g g f4 (g8 f ef2) d2
} 

bass = 
\relative c' { 
  \global 
  g4 g g g g2 g4 d g2 \bar "|"
  g8 g g4 g8 g g g4 g8 g4 g8 g g d4 d8 f4 g2
  g4 g8 g g g g g4 g g g g8 (a) bf4 (g c,2) g'2
} 

tenor = 
\relative c' { 
  \global 
  c8 (d) ef4 ef8 (d) c4 d2 c4 bf8 (a) bf2
  bf8 c d4 d8 d8 c d4 c8 d4 d8 d8 c bf4 bf8 c4 g2
  d'4 d8 d8 d c d ef4 ef ef8 (d) c (d) ef4 d2 (c4 a4) bf2
} 

verse = \lyricmode { 
  % Lyrics follow here. 
Дос __ -- тои  -- но __ и пра --  вед– -- но __ есть
по -- кла -- ня -- ти -- ся От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху
Тро -- и -- це е -- ди -- но -- сущ -- неи и __ не __ -- pаз -- дель __ -- неи.
} 

transl = \lyricmode { 
  % Lyrics follow here. 
Dos __ -- toi -- no i pra -- vyed -- no __ yest' 
po -- kla -- nya -- ti -- sya Ot -- tsu i Syi -- nu i Svya -- to -- mu Du -- khu
Tro -- i -- tse ye -- di -- no -- sushch -- nyei i __ nye__ -- raz -- del' __ -- nyei.
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