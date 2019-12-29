\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Auto Waltz"
  subtitle = "from motion picture \"Берегись автомобиля\""
  subsubtitle = ""

  composer = "А. Петров"
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

  c2.:m s2. * 3

  c2.:m s2. * 5 f2.:m s
  s2. * 6  g2.:7 s
  c2.:m s s s f:m bes:7 es:maj s
  g:7 s f:m s c:m g:7 c:m as
  g:7 s s s

  f:m s bes s es:maj s g:m fis:3.5+
  f:m s bes s es:maj s s s
}

mel = \relative c' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 3/4
  \tempo 4 = 100

  \repeat percent 2 { c2 <es g>4-. g,2 <es' g>4-. | }

  \mark \markup \box \bold "A"
  \repeat volta 2 {
    g'4-. r2 | \appoggiatura fis16 g4-. r2 | as8( g) g es c g | g'4-. r2 |
    \ottava #1 as8( g) g c d es | as,( g) g c d es | \ottava #0 \appoggiatura es16 d4-. r c-. | c-. r2 |
    f,4-. r2 | \appoggiatura e16 f4-. r2 | as8( g) g f es d | f4-. r2 |
    as8( g) g f es d | as'( g) g f g as | \appoggiatura bes16 as4-. r g-. | \appoggiatura fis16 g2 r4 |

    g4-. r2 | \appoggiatura fis16 g4-. r2 | as8( g) g es c g | g'4-. r8 g, c es |
    d4.-. c8 d es | d4.-. bes8 c d | \appoggiatura d16 c4-. r bes-. | bes2 r4 |

    as'8 as as4 g | as8 as as4 g | g8 g g4 f | g8 g g4 f |
    f8 f f4 es |  es8 es es4 d | f8 f f4 es | bes'8 bes bes4 as |
    g2. | r | r | r |
  }

  c,2. | c4 d es | d2. | r4 c bes |
  c2. | c4 d es | d2. | r4 c bes |
  c2. | c4 d es | f2. | r4 d bes |
  c2. | c4 d es | d2. | r4 c bes |

  \bar "|."
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
          [: A B :] A
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
