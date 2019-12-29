\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Fou Rire"
  subtitle = ""
  subsubtitle = ""

  composer = "R. Galliano"
  poet = ""
  enteredby = "Max Deineko"

  meter = "240 - 270 bpm"
  %piece = "valse"
  version = "$Revision$"

  copyright = ""
  tagline = \markup {
    \tiny { "$Revision$" }
    \hspace #50
    \tiny { "$Date$" }
  }
}


harmA = \chords {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 8*5 s8*5

  d4.:m d:m/cis d:m/c d:m/b g:m/bes g:m/a g:m g:m/f
  g2.:m6/e bes:m d2.:m e4:7 a2:7
  d4.:m d:m/cis d:m/c d:m/b g:m/bes g:m/a g:m g:m/f
  g2.:m6/e a:7 d4:m d:m/a d:m/f
  d8:m

}

melA = \relative c' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
  \set Staff.instrumentName = \markup {\box \bold "A"}

  \key d \minor
  \time 3/4

  \partial 8*5 a8 b cis d e |

  f cis d e f g a d e f g gis |
  a g fis g d bes a\prall g fis g a bes |
  \times 2/3 { a' g a g d bes a bes b } |
  c bes f des c bes16 c |
  bes8 a gis a d e |
  f4-> e-> \times 2/3 { e8 f e } |

  d cis d e f g a d e f g gis |
  a g fis g d bes a\prall g fis g a bes |
  \times 2/3 { bes' a g a g f } e d |
  cis bes a g f cis |
  e4\prall d r | r8

  \bar "||"
}

harmB = \chords {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 8*5 s8*5

  d2.:7 s g:m s
  c:7 s f:maj s
  g:m a:7 d4.:m d:m/cis d:m/c d:m/b
  bes2. a:7 d4:m d:m/a d:m/f d8:m

}

melB = \relative c' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
  \set Staff.instrumentName = \markup {\box \bold "B"}

  \key d \minor
  \time 3/4

  \partial 8*5 r8 cis' d d d |
  es4 \times 2/3 { d8 cis d }  fis a | c es d\prall c bes\prall fis
  a\prall g fis g d bes | a\prall g fis g a bes |
  d\prall c b c e g | bes d c bes a g |
  \grace c16( bes8) a ~ a4 r | r8 a bes c bes a |

  a4\prall g8 fis g4 | r8 g a bes a g |
  g4\prall f r | r8 f g a g f |
  f f, \times 2/3 { bes d f } e d | cis bes a g f cis |
  e4\prall d2 | r8

  \bar "||"
}

harmC = \chords {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 8*5 s8*5

  d2. b:7 e:m s
  fis:7 s b:m s
  g:m c:7 f:maj s
  a:m b:7 e2:m es4:m d2:m cis4:m
  c2. a:7 d:m s
  e:7 s a:m c:7
  d:m g:7 c:maj f
  d:m e:7 a:m s8

}

melC = \relative c' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
  \set Staff.instrumentName = \markup {\box \bold "C"}

  \key d \major
  \time 3/4

  \partial 8*5 r8 d2\glissando |
  a2 \appoggiatura f'16 fis4 ~ | fis4 a g |
  \appoggiatura { fis16[ g] } fis8 e dis e fis g | fis' e fis4. e8 |
  d4 cis r8 b | ais b ais g fis e |
  e4\prall d2 | r8 cis' d d d d |

  \key f \major
  d4 r4 \appoggiatura { bes16[ c] } bes8 a | g fis g a bes d |
  d4\turn c2 | r8 c, e a bes b |
  \key e \minor
  c2 b8 a | g fis f fis g a |
  b2. | r4 a gis |

  \key c \major
  g4\prall fis8 g a g | bes8\prall a gis a cis e |
  d\prall cis d e f g | \appoggiatura gis16 a8 a, b cis d e |
  f\prall e dis e gis b | e f e d c b |
  d\prall c b c a e | bes'\prall a g f e g |
  f8 g a f d c | b d f a g f |
  e f g e c b | a c e g f e |
  d e f d b a | gis f e d c b |
  a c e a c e | a

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
          (8T) A B A C A
          \hspace #1
          (2T) [: A B :]*
          \hspace #1
          A B A
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\markup { \vspace #0.5 }

\markup {
  \fill-line { \hspace #1.0 \italic \tiny \line{ \bold { * } solos until cue, alt. between D minor and F minor} \hspace #1.0 }
}

\markup { \vspace #1.0 }

\score {
  \transpose c c {
    <<
      \harmA
      \melA
    >>
  }
%  \midi {}
  \layout {
    ragged-last = ##f
  }
}

\score {
  \transpose c c {
    <<
      \harmB
      \melB
    >>
  }
%  \midi {}
  \layout {
    ragged-last = ##f
  }
}

\score {
  \transpose c c {
    <<
      \harmC
      \melC
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
