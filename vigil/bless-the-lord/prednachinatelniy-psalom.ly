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
    "предначинателъный псалом" 
  subtitle = \markup\bold\fontsize #3.5 
    {""} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup {
    \column {
       \fontsize #1.5 \left-align {
          "Московский напев в"
          "гармонизации Ф.Самарина"
          "изложение для мужского хор"
          "апхим. Матфея"
          " "
        }
      }
  }
    
  tagline = "Vigil: Bless the Lord" 
} 

global = { 
  \key c \major 
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
  c4 c c \bar "|" c c \bar"|" c c c \bar "|" c1( \bar "|" e4 d8 c d4) d \bar "|" c2 \bar"|"
  %refrain 1
  r8 e8 d c \bar "|" f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d \bar "|" c4. d8 e4 f \bar "|" e d8 c d4) d \bar "|" e2. \fermata r4 \bar "||"
  
  c4 c c \bar "|" c4. c8 c2 c4 c \bar "|" c4. c8 c4 c \bar "|" e(d8 c d4) d \bar "|" e2 r2 \bar "|"
  %refrain 1
  r8 e8 d c \bar "|" f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d \bar "|" c4. d8 e4 f \bar "|" e d8 c d4) d \bar "|" e2. \fermata r4 \bar "||"
  
  c4 c \bar "|" d2. e8(d) \bar "|" c2 c4 c \bar "|" c1 \bar "|" c2 c4 c \bar "|" c4. d8 e4(f) \bar "|" e4 d8(c) d4 d \bar "|" e1 \bar "|"
  %refrain 2
  f4.(e8 f4 e8 d) \bar "|" c4 e d e8(d) \bar "|" c4.(d8 e4 f) \bar "|" e4(d8 c d4) d \bar "|" e1 \fermata \bar "||"
  
  c4 c c c \bar "|" d2.(e8 d) \bar "|" c2 c \bar "|" c2 c4 c \bar "|" c2 r8 c8 c c \bar "|" c4.(d8) e4 f \bar "|" e(d8 c d2) \bar "|" e1 \bar "|"
  %refrain 2
  f4.(e8 f4 e8 d) \bar "|" c4 e d e8(d) \bar "|" c4.(d8 e4 f) \bar "|" e4(d8 c d4) d \bar "|" e1 \fermata \bar "||"

  c2 c4 c \bar "|" d2.(e8 d) \bar "|" c2 c4 c \bar "|" c2. c4 \bar "|" c2 c c4 c \bar "|" e4(d8 c d2) \bar "|" e1 \bar "|"
  %refrain 2
  f4.(e8 f4 e8 d) \bar "|" c4 e d e8(d) \bar "|" c4.(d8 e4 f) \bar "|" e4(d8 c d4) d \bar "|" e1 \fermata \bar "||"
  
  c2 c4 c \bar "|" d4. d8 d4 e8(d) \bar "|" c2 c4 c \bar "|" c2. c4 \bar "|" c2 c4 c8 c \bar "|" c4.(d8) e4 f \bar "|" e4(d8 c d4) d4 \bar "|" c8(e d e) \bar "|"
  %refrain 3
  f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d \bar "|" c4. d8 e4 f \bar "|" e4 d8 c d4) d \bar "|" c4 c8 c \bar "|"
  c2.(c8 d) \bar "|" e4 e d e8 d \bar "|" c4.(d8 e4 f \bar "|" e d8 c d2) \bar "|" d4 d e2 \fermata \bar "||"
  
  c4 c c c \bar "|" d2 d4 e8(d) \bar "|" c2 c c4 c \bar "|" c2 c4 c \bar "|" c2 c4 c \bar "|" c4.(d8) e4 f \bar "|" e4 d8 c d4 d \bar "|" c8(e d e) \bar "|"
  %refrain 3
  f4.(e8 f4 e8 d) \bar "|" c4 e d(e8 d \bar "|" c4. d8 e4 f \bar "|" e4 d8 c d4) d \bar "|" c4 c8 c \bar "|"
  c2.(c8 d) \bar "|" e4 e d e8 d \bar "|" c4.(d8 e4 f \bar "|" e d8 c d2) \bar "|" d4 d e2 \fermata \bar "||"
  
  e4 e e2 \bar "|"
  
  e4 e2 e2 \bar "|"
  e4 e2 e2 \bar "|"
  e4 f1 e2 \bar "|"
} 

tenor_two = 
\relative c'' { 
  \global 
  
} 

bass_one = 
\relative c { 
  \global 
  e4 e f \bar "|" g f8(g) \bar "|" a4 g f \bar "|" e4.(f8 g4 a \bar "|" g2.) g4 \bar "|" e2 \bar "|"
  r8 g8 g g \bar "|" a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2( \bar "|" a4. b8 c4 a \bar "|" g2.) g4 \bar "|" g2. r4 \bar "||"
  
  e4 e f \bar "|" g4. f8 e2 e4 f \bar "|" g4. f8 e4 a4 \bar "|" g2. g4 \bar "|" g2 r2 \bar "|"
  r8 g8 g g \bar "|" a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2( \bar "|" a4. b8 c4 a \bar "|" g2.) g4 \bar "|" g2. r4 \bar "||"

  e4 e \bar "|" f4.(g8 a4) g4 \bar "|" g2 e4 f \bar "|" g4.(f16 g a4 g) \bar "|" g2 e4 f \bar "|" g4. f8 g4(a) \bar "|" g4 g g g \bar "|" g1 \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g g \bar "|" a4.(b8 c4 a) \bar "|" g2. g4 \bar "|" g1 \bar "||"
  
  e4 e e e \bar "|" f4.(g8 a4 g) \bar "|" g2 e4(f) \bar "|" g4.(f16 g) a4 g \bar "|" g2 r8 e8 e f \bar "|" g4.(f8) g4 a \bar "|" g1 \bar "|" g1 \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g g \bar "|" a4.(b8 c4 a) \bar "|" g2. g4 \bar "|" g1 \bar "||"

  e2 e4 e4 \bar "|" f4.(g8 a4 g) \bar "|" g2 e4 f \bar "|" g4.(f16 g a4) g4 \bar "|" g2 e4.(f8) g4 a \bar "|" g1 \bar "|" g1 \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g g \bar "|" a4.(b8 c4 a) \bar "|" g2. g4 \bar "|" g1 \bar "||"
  
  e2 e4 e \bar "|" f4. g8 a4 g \bar "|" e2 e4 f \bar "|" g4.(f16 g a4) g4 \bar "|" g2 e4 e8 f \bar "|" g4.(f8) g4 a \bar "|" g2. g4 \bar "|" e8(g f g) \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2( \bar "|" a4. b8 c4 a \bar "|" g2.) g4 \bar "|" e8(g) f8 g \bar "|"
  a4.( g8 a4 g) \bar "|" g4 g g g8 g \bar "|" a4.(b8 c4 a \bar "|" g1) \bar "|" g4 g g2 \bar "||"
  
  e4 e e e \bar "|" f4.(g8) a4 g \bar "|" e2 e4(f) g g \bar "|" g4.(f16 g) a4 g \bar "|" g2 e4 f \bar "|" g4.(f8) g4 a \bar "|" g4 f8 e f4 g \bar "|" e8(g f g) \bar "|"
  a4.(g8 a4 g8 a) \bar "|" g8(f) g4 g2( \bar "|" a4. b8 c4 a \bar "|" g2.) g4 \bar "|" e8(g) f8 g \bar "|"
  a4.( g8 a4 g) \bar "|" g4 g g g8 g \bar "|" a4.(b8 c4 a \bar "|" g1) \bar "|" g4 g g2 \bar "||"

  g4 g g2 \bar "|"
  
  g4 g2 g2 \bar "|"
  g4 g2 g2 \bar "|"
  g4 a1 g2 \bar "|"
} 

bass_two = 
\relative c { 
  \global 

} 


verse = \lyricmode { 
Бла -- го -- сло -- ви ду -- ше мо -- я, Го __ -- спо -- да
Бла -- го -- сло -- вен __ е -- си Го __ -- спо -- ди
Гос -- по -- ди, Бо -- же мой, воз -- ве -- ли -- чил -- ся е -- си __ зе -- ло
Бла -- го -- сло -- вен __ е -- си Го __ -- спо -- ди

Твор -- яй Ан -- ге -- лы Сво -- я ду -- хи и слу -- ги Сво -- я __ пла -- мень ог -- нен -- ный
Див __ -- на де -- ла Тво __ -- я __ Го __ -- спо -- ди
Ос -- но -- ва -- яй зе __ -- млю на твер -- ди е -- я, не пре -- кло -- нит __ -- ся "в век" ве __ -- ка
Див __ -- на де -- ла Тво __ -- я __ Го __ -- спо -- ди
"Вся к" Те -- бе ча __ -- ют да -- ти пи -- щу им во бла -- го вре __ -- мя
Див __ -- на де -- ла Тво __ -- я __ Го __ -- спо -- ди

По -- сле -- ши Ду -- ха Тво -- е -- го, и со -- зиж __ -- дут -- ся и об -- но -- ви __ -- ши ли -- це зем -- ли __
Сла __ ва Ти, Го __ -- спо -- ди __ со -- тво -- рив __ -- ше -- му вся со -- тво -- рив __ -- ше -- му вся

Я -- ко воз -- ве -- ли __ -- чи -- ша __ -- ся де -- ла Тво -- я Го -- спо -- ди, вся пре -- муд __ -- рос -- ти -- ю со -- тво -- рил е -- си __
Сла __ ва Ти, Го __ -- спо -- ди __ со -- тво -- рив __ -- ше -- му вся со -- тво -- рив __ -- ше -- му вся

"Слава Отцу, и Сыну, и Святому Духу, и ныне и присно, и во веки веков." А -- минь.
"Аллилуиа, аллилуиа, аллилуиа, слава Тебе," Бо -- же
"Аллилуиа, аллилуиа, аллилуиа, слава Тебе," Бо -- же
"Аллилуиа, аллилуиа, аллилуиа, слава Тебе," Бо __ -- же
} 


\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
      \new Voice = "tenor1" { \voiceOne \tenor_one } 
      \new Voice = "tenor2" { \voiceTwo \tenor_two } 
    >>
    \new Lyrics \lyricsto "tenor1" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" "B2" } 
    } << 
      \clef bass 
      \new Voice = "bass" { \voiceTwo \bass_one } 
      \new Voice = "bass2" { \voiceTwo \bass_two } 
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