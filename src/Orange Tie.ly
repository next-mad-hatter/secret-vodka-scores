\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Orange Tie"
  subtitle = "Стильный оранжевый галстук"
  subsubtitle = ""

  composer = "Е. Хавтан"
  poet = "В. Сюткин"
  enteredby = "Max Deineko"

  %meter = "210 bpm"
  piece = "fast pop"
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

  s1
  f1:m6 s bes:m6 s c:7 s f:m6 s | f:m6 |

  f1:m des:9 f:m f2:m des4:9 c:7 f1:m des:9 f:m s |
  bes:m6 c:7 f:m6 s des:9 d:m7.5- c:7 s |
  es:1 des c:7 s |

  f1:m c:7 s f:m | bes:m6 f:m g2:7 c:7 f:m c:7 | c1:7 f:m |

  f1:m6 s bes:m6 s c:7 s f:m g4.:7 c8:7 s2 |
  f1:m6 s bes:m6 s es:7 des:7 c:7 s |

  bes1:m f:m c:7 f:m c2:7 s4. f8:m | s1
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key f \minor
  \time 4/4

  \tempo 4 = 210

  r2_\markup{\italic{drum fill}} r8 c, es e |

  \mark \markup {\box \bold "A"}
  \repeat volta 2 {
    f4\f f as as8 f~ | f2 r8 f, as a |
    bes4 bes des des8 bes~ | bes2 r8 g bes b |
    c4 c e e | g g8 bes4 g8 c4 |
    f,4 f as c |
  }
  \alternative{{ d2 r8 c, es e }{ d'2 r2 }}

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 2 { s1 * 16 }
  s1 * 4

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 {
    s1 * 6
    ^\markup {\musicglyph #"scripts.segno"}
  }
  \alternative{
    {s1 * 2}
    {
      s1_\markup { \hspace #5.0 \bold D.C. \hspace #0.3 solo: \bold D.S.?}
      s1^\markup { \hspace #7.0 \musicglyph #"scripts.coda" }
    }
  }

  \break
  \mark \markup {\box \bold "A'"}
  f,4 f as as8 f~ | f1 |
  bes,4 bes des des8 bes~ | bes1 |
  c8 b c e r2 | g8 fis g bes r2 |
  f4 f as bes | b bes8 b r b' bes as |
  f4 f as as8 f~ | f1 |
  bes,4 bes des des8 bes~ | bes1 |
  es4. g,8 r bes r es | des4. f,8 r aes r des |
  c1 \glissando | c'1
  _\markup {\hspace #-4.0 \bold { D.S. al coda } }
  |

  \break
  \mark \markup{\musicglyph #"scripts.coda"}
  \override NoteHead #'style = #'diamond
  s1 * 3 |
  f,,4
  _\markup{ \italic break }
  r4 r2 |
  b8 c b bes as e-> r f-> | r1

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
          [: A B C :] (Solos on C?) A' C Coda
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
}

\layout {
  ragged-last = ##f
}

\paper {
  print-page-number = ##f
}
