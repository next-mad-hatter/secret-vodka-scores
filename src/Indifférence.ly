\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Indifférence"
  subtitle = ""
  subsubtitle = ""

  composer = "J. Colombo, T. Murena"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "valse"
  version = "$Revision$"

  copyright = ""
  tagline = \markup {
    \tiny { "$Revision$" }
    \hspace #50
    \tiny { "$Date$" }
  }
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 8*5 s8*5 |
  e2.:m7 s e:m7 s
  e2.:m7 s b:7 s
  b:7 s b:7 s
  b:7 s e:m7 s
  e2.:m7 s e:m7 s
  e2.:7 s a:m6 s
  a:m6 s e:m7 s
  fis:7 b:7 e:m s

  b:7 s e:m s
  b:7 s e:m s
  e:m s
  e:m s

  s g s b:7 s
  e:7 s a:m s
  d:7 s g: s
  fis:7 s b2:m bes4:m a2:m as4:m
  g2. s b:7 s
  e:7 s a:m s
  c a:7/cis g e:7
  a:7 d:7 g b8:7

}

mel = \relative c' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key e \minor
  \time 3/4
  \tempo 4 = 230

  \override Slur #'positions = #'(1 . 1)
  \partial 8*5 b8( e g b d |

  \mark \markup {\box \bold "A"}

  c4\prall
  ^\markup { \musicglyph #"scripts.segno" }
  b) r | r8 b( e g b d |
  c4\prall b) r | r8 b,,( e g b d |
  c\prall b e dis fis e | g fis a g fis e |
  e4\prall dis) r |
  r \appoggiatura { fis16[ g gis] } a8( g fis g |
  fis4.\prall) e8( dis e dis4.\trill) c8( b c |
  b2\trill) r4 | r \appoggiatura { g'16[ gis] } a8( g fis g |
  fis8\prall e dis e dis c | b c b a g\prall dis |
  fis4\prall e) r |
  r8 b( e g b d |

  c4\prall b) r | r8 b( e g b d |
  c4\prall b) r |
  r8 b,,( e g b d |
  f\prall e d c b a | gis a b c d e |
  d4\turn c) r | r \appoggiatura { b16[ bes] } a4 b |
  c8( e a, c fis,4) | r8 a( b c b a |
  b e g, b e,4) | r8 e( fis g fis e  |
  g2. | g2 fis4 | e2) r4
  _\markup \italic { \bold fine on cue }
  \mark \markup { \musicglyph #"scripts.coda" } |
  r4. g8( fis e |

  \mark \markup {\box \bold "B"}
  \bar "|:"
  dis8 fis a) c( b bes | b dis fis) c'( b bes |
  b e g,) b( e, g | b, e g) b( a g |
  a c fis,) a( dis, fis | b, dis fis) a( g fis |
  \set Score.repeatCommands = #'((volta "1., 3."))
  e g b,) e( g, b | e,4.)
  \override Slur #'positions = #'(0 . 50)
  g8( fis e) |
  \set Score.repeatCommands = #(list '(volta #f) (list 'volta "2.") 'end-repeat)
  e'2.\repeatTie | r4. g,8( fis e ) |
  \set Score.repeatCommands = #(list '(volta #f) (list 'volta "4.") 'end-repeat)
  \override Slur #'positions = #'(1 . 1)
  e'2.\repeatTie | r8 b,( e g b d)
  _\markup \bold { \hspace #-7.0 "D.S. al Coda" }
  |
  \set Score.repeatCommands = #'((volta #f))

  \mark \markup { \musicglyph #"scripts.coda" } |
  \ottava #1
  r4 e( dis |
  \mark \markup {\box \bold "C"}
  d2. | <d b'> | <dis b'> | <b dis>) | e4( gis b | e2 e4 | e2. | a,) |
  d2.( | a4 b c | b2. | g) | fis( ~ | fis4 g fis | fis2 f4 | e2.) |
  d2.( | <d b'> | <dis b'> | <b dis>) | e4( gis b | e2 e4 | f2. | e) |
  e2.( | fis2 g4 | g2. | e4 c b | b2. | a | g) | r8
  _\markup \bold { \hspace #1.0 "D.C." }

  \bar "||"
}

\markup {
    \fill-line { % This centers the words, which looks nicer
    \hspace #1.0 % gives the fill-line something to work with
    \rounded-box \pad-markup #0.3 {
      \column {
        \line{
          \hspace #0.5
          \smallCaps Form:
          \hspace #1
          [: A B A C :] \small \italic \super cue A
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose c c {
    <<
      \harm
      \mel
    >>
  }
%  \midi {}
  \layout {
    ragged-last = ##f
  }
}

\paper {
  print-page-number = ##f
}
