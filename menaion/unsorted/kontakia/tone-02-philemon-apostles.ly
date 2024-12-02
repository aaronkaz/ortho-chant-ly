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
    "Tone II, Kontakion" 
  subtitle = \markup\bold\fontsize #1 
        {"Kontakion of Apostle Philemon and those with him"} 
  subsubtitle = \markup\bold\fontsize #4.25 
        {" "} 
  
  meter = \markup\bold\fontsize #4.25 
        {" "} 
    
  tagline = "Draft as used at St. Nicholas Russian Orthodox Church, Fletcher, NC"
 
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

soprano = 
\relative c'' { 
  \global 
  g4 a2 a4 a bf c2(bf) a \bar "|"
  a4 a g2 g2 f2 \bar "|"
  
  g4 a2 a4 a bf c2 bf a \bar "|"
  a4 a g2 g2 f2 \bar "|"
  
  g4 a2 a4 a bf c2 bf a \bar "|"
  a4 a g2 g4 g f2 \bar "|"
  
  g4 a2 a4 (bf) c2(bf) a \bar "|"
  
  a4 a g a bf2(a4 bf) a2 g f1 \fermata \bar "||"
}

alto = 
\relative c' { 
  \global 
  e4 f2 f4 f f f1 f2
  f4 f e2 e2 c2
  
  e4 f2 f4 f f f2 f f2
  f4 f e2 e2 c2
  
  e4 f2 f4 f f f2 f f2
  f4 f e2 e4 e c2
  
  e4 f2 f2 f1 f2
  
  f4 f d f f1 f2 e c1 
}
tenor = 
\relative c' { 
  \global 
  c4 c2 c4 c d ef2(d) c \bar "|"
  c4 c bf2 bf2 a2 \bar "|"
  
  c4 c2 c4 c d ef2 d c \bar "|"
  c4 c bf2 bf2 a2 \bar "|"
  
  c4 c2 c4 c d ef2 d c \bar "|"
  c4 c bf2 bf4 bf a2 \bar "|"
  
  c4 c2 c4(d) ef2(d) c \bar "|"
  
  c4 c bf c d2(c4 d) c2 bf a1 \fermata \bar "||"
} 


bass = 
\relative c { 
  \global 
  c4 f2 f4 f bf a2(bf) f
  f4 f c2 c2f2
  
  c4 f2 f4 f bf a2 bf f
  f4 f c2 c2 f2
  
  c4 f2 f4 f bf a2 bf f
  f4 f c2 c4 c f2
  
  c4 f2 f4(bf) a2(bf) f
  
  f4 f g f bf,2(f'4 bf,) c2 c f1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  \override LyricText.self-alignment-X = #LEFT
  
  "Let us" praise the apo -- stles of __ Christ
  the glorious Phi -- le -- mon

  the sac -- red Archippus, O -- ne -- si -- mus
  Mark and A -- po -- llos
  
  "and with" them the most wise Ap -- phi -- a
  "as most radiant stars" "illuming the" ends of the earth
  
  and let us __ cry __ out

  "Pray ye" unceasingly in be -- half __ of us all
}


\score {
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