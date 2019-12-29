\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "A Nam Vse Ravno"
  subtitle = "Песня про зайцев"
  subsubtitle = ""

  composer = "А. Зацепин"
  poet = "Л. Дербенев"
  enteredby = "Max Deineko"

  meter = ""
  piece = "russian foxtrot"
  version = "$Revision$"

  copyright = ""
  tagline = \markup {
    \tiny { "$Revision$" }
    \hspace #30
    \tiny { "$Date$" }
  }
}

harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \set chordChanges = ##t

  \time 6/4

  a2.:m d:m g:7 c:maj |
  f:maj bes b:7 e:7 |
  d f |
  \time 7/4
  b:7 e1:7 |

  a1:m a:m a:m d:m |
  d:m e:7 e:7 a2:m e:7 |
  \once \set chordChanges = ##f
  e1:7 a2:m e:7 |

  a1:m a:m d:m d:m e:7 e:7 |
  a:m e2:aug e4:aug e:7 |
  \once \set chordChanges = ##f
  e1:7 a4.:m a8:m9.7+ s2 |
}

\include "rhythm_marks.ly"

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \override TextSpanner #'staff-padding = #3.8
  \textLengthOff

  \override TextSpanner #'(bound-details left text) = \markup{ break }
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \textSpannerDown

  \clef treble
  \key a \minor
  \time 6/4

  \mark \markup \box \bold "A"
  \tempo "liberamente"
  \repeat volta 2 { s1.  s }
  \alternative {
    { s1. * 2 }
    { s1.
      \compoundMeter #'((3 4) (4 4))
      s2. s1_\markup{\italic rit.}
    }
  }
  \time 4/4

  \break
  \mark \markup {
    \vcenter \box \bold "B"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno"
  }
  \repeat volta 2 {
    \tempo "a tempo giusto" 4 = 200
    a2 c a4 a8 e ~ e2 |
    a2 c a8 a ~ a f ~ f2  |
    d2 f e4 e b2 |
  } \alternative {
    { e4 d c d e2 r | }
    { c'4 b a gis
      a2
      \once \override TextScript #'X-extent = #'(0.0 . 0.0)
      r
      _\markup \box \pad-markup #0.1 \line{
        \halign #9.1
        \bold{D.S.} until cue \bold{al coda}/\bold{D.C.}
        \super \huge \arrow-head #Y #UP ##t
      }
      |
    }
  }
  \bar ".|:-||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 2 {
    a,4^\markup{ \italic instr. }
    c e2 a,4 c8 e ~ e e dis4 |
    d4 f a2 d,4 f8 a ~ a a gis4 |
    e gis b2 e,4 gis8 c ~ c c b4 |
  }
  \alternative {
    {
      \clef bass
      c,,4 \startTextSpan b a f
      e8
      \clef treble
      \override NoteHead #'style = #'diamond
      c'''[ c c] ~ c c b4\stopTextSpan |
      \override NoteHead #'style = #'default
    }
    {
      r8 \startTextSpan
      e[ dis e] f fis g gis a r4
      \stopTextSpan
      a,8-> ~ a2 \fermata
    }
  }

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
          [: A B B :] [: Solos on B :] \raise #1.0 \small \italic cue [: B :] Coda
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
