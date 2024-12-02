\version "2.24.1"
\include "gregorian.ly" 

\layout { 
  \context{ 
    \Score \override SpacingSpanner.packed-spacing = ##f 
  } 
  \context{ 
    \Lyrics \override LyricHyphen.minimum-distance = #2.25 
    \override LyricSpace.minimum-distance = #2.5 
    \override VerticalAxisGroup
              .nonstaff-nonstaff-spacing
              .stretchability = #1000
  } 
} 

\header {
  title = "Now the Powers of Heaven"
}

global = { 
  \key f \major 
  \set Score.timing = ##f
} 


melody = \relative c'' {
  \global
  
   <<
      {
        \voiceOne
        g1 
      }
      \new Voice {
        \voiceTwo
        d\breve
      }
    >>
  f1 g2 (f4 g a2 g) f2. f4 g2 (f) g a 
  <<
      {
        \voiceOne
        bes2 (a4 bes c2) bes
      }
      \new Voice {
        \voiceTwo
        f\breve
      }
    >>
    a1 \bar "|"
  a2 (bes) g (f4 g a2 g) f1 g \fermata \bar "|"
  bes2 bes1 a2 bes4 (a) g2 (f) g a bes (a4 bes c2) bes a1 
  a2 (bes) g (f4 g a2 g) f1 g \fermata \bar "|"
  
  g2 (f4 g) a2 (g f1) g2 (f) g a bes (a4 bes c2 bes) a1 \bar "|"
  a2 (bes) g f4 (g) a2 g f1 g \fermata \bar "|"
  
  g2 f4 (g) a2 g f1 bes2 a g2 a bes2 (a4 bes c2) bes a1 \bar "|"
  a2 (bes g) f4 (g) a2 g f1 f4 (g) a2 g1 \fermata \bar "|."
  
}

verse = \lyricmode {
  Now the pow __ -- ers of hea __ -- ven in -- vi __ -- si -- bly
  with __ us __ do serve
  the po -- wers of __ hea __ -- ven in -- vi __ -- si -- bly
  with __ us __ do serve
  
  Be __ -- hold __ the __ king of glo __ -- ry
  the __ king of __ glo -- ry en -- ters
  Lo the __  my -- sti -- cal  sac -- ri -- fice
  the my __ -- sti -- cal sac __ -- ri -- fice is up -- borne __ full -- filled
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      midiInstrument = "choir aahs"
      %instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "melody" { \voiceOne \melody }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #'((basic-distance . 9))
    } \lyricsto "melody" \verse


  >>
  \layout { }
  \midi { }
}
