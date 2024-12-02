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
    "Достойно есть" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 
    {"Македонская мелодия"} 
    
  arranger = "Перевод Аарона Качмарека"
  tagline = ""
} 

global = { 
  \key f \major 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
} 
move = { \bar "" \break } 

tenor_one = 
\relative c'' { 
  \global 
  a4 a f8(e) d1 \bar "|"
  g8(a bf4) a8 (g) f (e) f2 g8(a f a) a1 \bar "|"
  
  d,4 d a'4(g f8 d e f) e1 \bar "|"
  cs8.(d16 cs8 bf) a4 (cs) bf(a) g8(a bf4) a1 \bar "|"
  
  a'2 f8(e) d4 g8 (a bf4) a8 (g f a) a4.(g8) f (d) e (f) e1 \bar "|"
  f4(a) a8(c bf a) g (a bf4) a1 \bar "|"
  
  d,4 a'(g f8 d e f) e1 \bar "|"
  cs8.(d16 cs8 bf) a4 (cs) bf (a) g8(a bf4) a1 \bar "|"
  
  a'2 f8 (e d4) g8(a bf4) a8(g f e) f8(g f4) g8(a f a) a1 \bar "|"
  c2 b4(a) b8(d c b a gs f) a a1 \bar "|"
  
  d,4 d a'4 (g) f8(d e f) e1 \bar "|"
  cs8.(d16 cs8 bf a4 cs) bf(a g8 a bf4) a1 \bar "|"
  
  a'4 a f8(e d4) g8 (a bf4 a8 g f a) a1 \bar "|"
  g2 c2 b8.(d16 c8 bf) a2 bf4(a) f (bf) a1 \bar "|"
  
  d,4 a' a g4 f g8.(bf16 a8 g) f (d e f) e1 \bar "|"
  a4(g8 f e4 d) cs8.(d16 cs8 bf) a4 (cs) bf(a g8 a bf4) \bar "|"
  
  d2(f a4 f d2 bf' g a1) \bar "||"
} 


verse = \lyricmode { 
  % Lyrics follow here. 
  До -- стой -- но __ есть 
  я __ -- ко __ во __ -- и -- сти __ -- ну 
  бла -- жи́ -- ти __ Тя
  Бо __ -- го __ -- ро __ -- ди __ -- цу
  Прис -- но __ -- бла -- жен __ -- ну __ -- ю и Пре __ не -- по -- роч __ -- ну __ -- ю 
  и Ма __ -- терь Бо __ -- га на __ -- ше __ -- го. 
  Чест -- не́й __ -- шу __ -- ю хе __ -- ру __ -- ви́м 
  и сла́в __ -- ней __ -- шу __ -- ю 
  без срав -- не __ -- ни __ -- я се __ -- ра __ -- фи́м, 
  без ист -- ле __ -- ни __ -- я Бо -- га Сло __ -- ва рожд __ -- шу __ -- ю, 
  су -- щу -- ю Бо -- го -- ро __ -- ди __ -- цу, 
  Тя __ ве __ -- ли __ -- ча __ -- ем __
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1"} 
    } <<
      \new Voice = "tenor1" { \voiceOne \tenor_one } 
    >>
    \new Lyrics \lyricsto "tenor1" \verse 
  >>
  \layout { 
    ragged-last=##t 
    #(layout-set-staff-size 22) 
    \context { 
      \Lyrics 
      \override VerticalAxisGroup.staff-affinity = ##f 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 0) 
           (padding . 0)) 
    } 
    indent = 1.25\cm 
    \context { 
      \Staff 
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
           (minimum-distance . 0) 
           (padding . 0)) 
    } 
  } 
}