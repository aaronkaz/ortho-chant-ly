\version "2.15.9"
%\include "/home/sasha/kievan.ly"

%
% Declare head prefix shortcuts.
%
recitative = #(ly:make-duration -1 0)
final = #(ly:make-duration -2 0)

%
% Shortcuts for implementing parentheses
% used to offset optional Znamenny Fiti
%
leftparen = {
  \once \override BreathingSign #'Y-offset = #0
  \once \override BreathingSign #'text =
  #(markup #:fontsize 8 #:musicglyph "accidentals.leftparen")
  \breathe }

rightparen = {
  \once \override BreathingSign #'Y-offset = #0
  \once \override BreathingSign #'text =
  #(markup #:fontsize 8 #:musicglyph "accidentals.rightparen")
  \breathe }
  
\header {
    subtitle = "Самоподобенъ 4-го гласа"
    composer= "Знаменный роспевъ"
    title = "Далъ еси знаменіе"
    footer = "dalesi.ly"
    ponomarname = "Automelon0402"
    ponomartype = "Znamenny"
    ponomarsource = "Обиход Нотнаго Пения"
    maintainer = "Aleksandr Andreev"
    maintaineremail = "aleksandr.andreev@gmail.com"
    lastupdated = "2012/11/08"
    ponomarlang = "cu"
    ponomarcomments = ""
    copyright = "This score is part of the Ponomar OpenMusic Project"
    tagline = \markup {
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-column {
      \line { \with-url #"http://www.ponomar.net" \line { www. \hspace #-1.0 ponomar \hspace #-1.0 .net \hspace #0.5 } • Orthodox Liturgical music that is \italic free to download, use, modify and distribute. }
      \line { Typeset using \with-url #"http://www.LilyPond.org" \line { LilyPond } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer }
      \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } }
    }
  }
}

\score {
<<
\new KievanStaff {
    \new KievanVoice = "one"
     { \cadenzaOn
        \relative c' {
        \override Staff.BarLine #'extra-spacing-width = #'(0 . 2) 
	e1 e2 
	\[ e4(  d ) \]
	f2
	\[ e4(  d ) \]
	e2 d1 \bar "|"
	
	\[ d4(  e4 ) \]
	f1 f2 f
	\[ e4(  d4 ) \]
	\[ e4(  f4 ) \]
	g2 f 
	\[ e2.( g4 ) \]
	\bar "|"
	
	\[ g2(  f ) \]
	\[ e4(  c4 ) \]
	\[ d4(  e4 ) \]
	\[ f1( e e2. g4 ) \]
	\bar "|"
	
	e1 e2 e e 
	\[ d4(  c4 ) \]
	\[ d4(  e4 ) \]
	f1
	\bar "|"
	
	d2 f1
	\[ e4(  f ) \]
	\[ g1( f4  e ) \]
	d2
	\[ e4( f g  f ) \]
	g1
	\bar "|"
		
	\[ f4(  e ) \]
	\[ f4(  g ) \]
	a2 g
	\[ g4(  f ) \]
	\[ e2( f  g1 ) \]
	\bar "|"
		
	\[ e4(  f ) \]
	g2 g2 
	\[ g4(  f ) \]
	e2
	\[ f1(  e ) \]
	\[ e2.(  g4 ) \]
	\bar "|"
	
	e1 e2 e\recitative 
	\[ e4(  f ) \]
	g1
	\[ g4(  f ) \]
	\[ e4(  f ) \]
	\[ g2(  f ) \]
	e1
	
	\bar "|"
	
	d2
	\[ e4(  f ) \]
	g1 g2 f2
	\[ g4(  f ) \]
	\[ e4(  f ) \]
	\[ g1(  f2 ) \]
	g2
	
	\[ f2(  e ) \]
	f1 e\final*1/64
	\bar "k"
	} %relative
	} %voice
} % staff

\new Lyrics \lyricsto "one" {
	Да́лъ є҆ -- сѝ зна́ -- ме -- нї -- е
	бо -- ѧ́ -- щым -- сѧ те -- бѐ, Го́с -- по -- ди,
	Кре́стъ тво́й чест -- ны́й,
	и҆́м -- же по -- сра -- ми́лъ є҆ -- сѝ
	на -- ча̑ -- ла тмы̑  и҆ вла́ -- сти,
	и҆ воз -- ве́лъ є҆ -- сѝ на́съ
	на пе́р -- во -- е бла -- же́н -- ство.
	Тѣ́м -- же "твоѐ человѣколю́бное" смо -- тре́ -- нї -- е сла́ -- вимъ,
	І҆ -- и -- сꙋ́ -- се все -- си́ль -- не Спа́ -- се дꙋ́шъ на́ -- шихъ.
}

>>

\layout { 
    indent = 0.0
    ragged-last = ##t
  %  ragged-right = ##t

    \context {
      \Lyrics
    %  \override LyricSpace #'minimum-distance = #2.5
      \override LyricText #'font-size = #+1
      \override LyricText #'font-name = #"Hirmos Ponomar"
    }
    \context {
    	\Score 
        \override SpacingSpanner #'strict-note-spacing = ##t
	\override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 1) 
	\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
        \override SpacingSpanner #'shortest-duration-space = #1.5
    }

}
\midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"      
    }
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 2)
    }
  }
  
}
