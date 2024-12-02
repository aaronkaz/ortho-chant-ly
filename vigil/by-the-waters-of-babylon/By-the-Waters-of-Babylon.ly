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
    "By the Waters of Babylon" 
  subtitle = \markup\bold\fontsize #3.5 
    {"Psalm 136"} 
  subsubtitle = \markup\bold\fontsize #4.25 
    {""} 
  poet = \markup\bold\fontsize #1.5 
    {""} 
  composer =  \markup\bold\fontsize #1.5 {
    \column {
        \right-align {
          " "
          "As Chanted by Holy Trinity Monastery"
          "and Seminary Choir"
          " "
        }
      }
  }
  arranger = \markup {
    \column {
        \right-align {
          "Transcribed by Aaron Kaczmarek"
          " "
        }
      }
  }
  tagline = "By the Waters of Babylon"   
} 

global = { 
  \key bf \minor 
  \override Staff.NoteHead.style = #'altdefault 
  \override Staff.TimeSignature.stencil = ##f 
  %\override Staff.BarLine.stencil = ##f 
  \set Score.defaultBarType = "-" 
  \bar "|." 
  \set Score.doubleRepeatType = #":..:"
} 
move = { \bar "" \break } 

soprano = 
\relative c'' { 
  \global 
  \mark \markup { \rounded-box\italic\bold\normalsize { 1. } }
  af2 af bf2.(c4 df1) c2 bf2 af4(bf c2) bf af1 \bar "|"
  df2(c) bf bf df2(c4 df4 ef1) bf2 c1(bf2 af2 bf1) \bar "|"
  af2 bf2.(c4 df1) c2(bf) af4(bf c2 bf) af2 bf4(af bf1 c \fermata df1) \bar "||" \break
  
  \bar ".|:"
  \mark \markup { \italic\bold\normalsize { Refrain } }
  df2 ef f(ef4 f gf2. f4 ef2. f4 df2) ef df1 \bar ":|." \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 2. } }
  af4 bf bf c bf bf af bf2.(c4 df2 c) bf2. r4 af4 gf af(bf c2) bf2(c) df1 \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 3. } }
  af4 bf2. r4 c4 bf bf bf bf af bf2.(c4 df2 c) bf2. r4 af4(bf) c2 bf4(af) bf2 c df1 \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 4. } }
  af4 bf bf bf c bf af bf2 r4 bf4 bf bf bf c2 bf4 af bf2.(c4 df2) c bf2. r4 af4 gf af(bf c2) bf2(af) bf2(c df1) \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 5. } }
  df4 df df df df c1 df1 df4 bf df1(ef) f1(f1) \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 6. } }
  bf,4 bf bf c bf bf bf bf bf bf2 r4 bf4 af bf2.(c4 df2 c) bf2. r4 af4(bf c2) bf4(af) bf2(c df1)  \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 7. } }
  bf2 c bf4 af bf2.(c4 df2) c bf2. r4 af4(gf) af(bf c2) bf2(c) df1  \bar "||" \break
  
  \mark \markup { \rounded-box\italic\bold\normalsize { 8. } }
  bf4 bf bf bf c bf af bf2.(c4 df2) c bf af4(gf) af(bf c2) bf4(af) bf2(c) df1 \bar "|"
  bf4 bf bf af bf2 r4 bf4 bf bf bf c bf af bf2.(c4 df2 c) bf2. r4 af4(gf) af(bf c2) bf4(af) bf2(c df1) \bar "|"
  bf4 bf bf c df2. df4 f f f ef2 ef4 ef df df f1 df4(c) df1 ef f(f)  \bar "||" \break
  
  \mark \markup { \italic\bold\normalsize { Refrain } }
  df2 ef f(ef4 f gf2. f4 ef2. f4 df2) ef df1  \bar "||" \break
} 

alto = 
\relative c'' { 
  \global 
   af2 af bf2.(c4 df1) c2 bf2 af4(bf c2) bf af1 \bar "|"
   df2(c) bf bf df2(c4 df4 ef1) bf2 c1(bf2 af2 bf1) \bar "|"
   af2 bf2.(c4 df1) c2(bf) af4(bf c2 bf) af2 bf4(af bf1 c df1)
   
   \bar ".|:"
   bf2 c df2(c4 df ef2. df4 c2. df4 bf2) c bf1 \bar ":|." 
   
   \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
   \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
   bf4 bf bf bf bf c1 bf1 bf4 f bf1(c) df1(df)
   
   \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
   bf4 bf bf bf c bf af bf2.(c4 df2) c bf af4(gf) af(bf c2) bf4(af) bf2(c) df1 \bar "|"
   
   \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
   bf4 bf bf c df2. df4 df df df ef2 ef4 ef df df c1 bf4(c) bf1 c df(df) \bar "||"
   
   bf2 c df2(c4 df ef2. df4 c2. df4 bf2) c bf1
} 

tenor = 
\relative c { 
  \global 
  af'2 f bf,2.(c4 df1) af'2 bf2 f4(ef af2) ef2 f1 \bar "|"
  df2(c) bf bf df2(c4 df ef1) bf2 c1(bf2 af bf1) \bar "|"
  f'2 bf,2.(c4 df1) af'2(bf) f4(ef af2 ef) f f4(ef f1 ef1 \fermata f1)
  
  \bar ".|:"
  f2 f af1(af2. f4 gf2. f4 f2) ef2 f1 \bar ":|." 
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
  bf4 bf bf bf bf c1 bf1 bf4 f bf1(af) af(af)
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  bf,4 bf bf bf c bf af bf2.(c4 df2) c bf af4(gf) af(bf c2) bf4(af) bf2(c) df1 \bar "|"
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
  bf'4 bf bf c bf2. bf4 bf bf bf af2 af4 af bf bf f1 bf4(c) bf1 af1 af(af)
  
  f2 f af1(af2. f4 c'2. df4 <f,bf>2) \relative c' {<ef, af>2} \relative c' {<f,bf>1} 
} 

bass = 
\relative c { 
  \global 
  af'2 f bf,2.(c4 df1) af'2 bf2 f4(ef af2) ef2 f1 \bar "|"
  df2(c) bf bf df2(c4 df ef1) bf2 c1(bf2 af bf1) \bar "|"
  f'2 bf,2.(c4 df1) bf2(af) f'4(ef af2 ef) f bf,4(af bf1 af1 df)
  
  \bar ".|:"
  bf2 bf bf1(ef2. f4 gf2. f4 bf,2) c bf1 \bar ":|." 
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
  bf'4 bf bf bf bf c1 bf1 bf4 f bf1(af) df,(df)
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  bf4 bf bf bf c bf af bf2.(c4 df2) c bf af4(gf) af(bf c2) bf4(af) bf2(c) df1 \bar "|"
  
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
  bf'4 bf bf c bf2. bf4 bf bf bf af2 af4 af bf bf f1 bf4(c) bf1 af1 df,(df)
  
  bf2 bf bf1(ef2. f4 gf2. f4 bf,2) c bf1
} 

verse = \lyricmode { 
  % Lyrics follow here. 
  By the wa __ -- ters of ba __ -- by -- lon
  where __ we sat down __ and wept __
  when we __ re __ -- mem __ -- bered Zion __
  
  A -- le -- lu __ -- i -- a
  
  We hanged our harps up -- on the will __ -- ows in the midst __ there __ -- of
  
  For there they that had tak -- en us cap __ -- tive re __ -- quired of __ us a song
  
  and they that had carried us a -- way asked us for a hymn say -- ing sing __ us one of the songs __ of __ Zion __
  
  How shall we sing the Lord's song in a strange __ land __
  
  If I for -- get thee, O Je -- ru -- sa -- lem, let my right __ hand be __ for __ -- gotten __
  
  O daugh -- ter of ba __ -- by -- lon thou __ wretch __ -- ed __ one
  
  Bless -- ed shall he be that re -- ward __ -- eth thee as __ thou __ hast __ served __ us
  Bless -- ed shall he be that tak -- eth and dash -- eth thy little __ ones a __ -- gainst __ the __ stones __
  Bless -- ed shall he be that tak -- eth and dash -- eth thy li -- ttle ones a __ -- gainst the stones __
  
  A -- le -- lu __ -- i -- a
} 

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "T1" "T2"} 
    } <<
      \new Voice = "soprano" { \voiceOne \soprano } 
      \new Voice = "alto" { \voiceTwo \alto } 
    >>
    \new Lyrics \lyricsto "soprano" \verse 
    \new Staff \with { 
      midiInstrument = "string ensemble 1" 
      instrumentName = \markup \center-column { "B1" "B2" } 
    } << 
      \clef bass 
      \new Voice = "tenor" { \voiceOne \tenor } 
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