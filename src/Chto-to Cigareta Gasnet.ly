\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Chto-to Cigareta Gasnet"
  subtitle = "Что-то сигарета гаснет"
  subsubtitle = ""

  composer = "К. Беляев"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "heavily drunk cha cha"
  version = ""

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

  \time 4/4

  s1

  a1:m d:m e:7 a2:m e:7
  a1:m d:m e:7 a:m

  \repeat unfold 2 {
    a1:m d:m e:7 a:m
  }
  a1:7 d:m g:7 c
  f d:m e:7 a:m

  a:7 d:m g:7 c:maj
  f:maj d:m6
  e:7 a:m
  e:7 a:m
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \textLengthOff

  \clef treble
  \key a \minor
  \time 4/4
  \tempo "bellicoso" 4 = 66

  \override NoteHead #'style = #'cross
  c'4\f r c, r
  \override NoteHead #'style = #'default

  \mark \markup {
    \vcenter
    \box \bold "A"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno"
  }
  \repeat volta 2 {
    a'8 a a a a4 c | b d2 r4 |
    gis,8 gis gis gis gis4 b | r8 a r c b a gis b |
    a8 a a a a4 c | d4 c b a  |
    r8 gis r a b a gis r |
    a4_\markup{\italic{break}} r4
    \override NoteHead #'style = #'cross
    e
    \override NoteHead #'style = #'default
    r4 |
  }

  \break
  \mark \markup {\box \bold "B"}
  s1 * 8
  \break
  s1 * 8
  \bar ".|:-||"

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 {
    s1 * 6
  }
  \alternative {
    { s1 * 2 }
    {
      \override NoteHead #'style = #'diamond
      e'4->
      _\markup{ \italic{break} }
      \textLengthOn
      r2.
      ^\markup {\hspace #2.0 \box \pad-markup #0.1 \line{
        \bold{fine}
        \huge \arrow-head #Y #DOWN ##t
      }}
      s2
      _\markup{ \italic fill }
      \once \override TextScript #'X-extent = #'(0.0 . 0.0)
      s2
      ^\markup \box \pad-markup #0.1 \line{
        \halign #1.8
        \bold{D.S.}×2
        \huge \arrow-head #Y #DOWN ##t
      }
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
          [: A B C :] \raise #1.0 \small ×3
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
