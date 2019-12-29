\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Russian Bossa"
  subtitle = "Вечер приходит..."
  subsubtitle = ""

  composer = "M. Deineko"
  poet = ""
  enteredby = "Max Deineko"

  meter = "123 bpm"
  piece = ""
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

  \mark \markup {\box \bold "A"}

  \repeat volta 2 {
    \repeat unfold 2 {
      f2:m bes:m c:7 f:m
    }
  }

  \break

  \mark \markup {\box \bold "I"}

  \repeat volta 2 {
    \repeat unfold 2 {
      f2:m bes:m c:7 f:m
    }
  }

  %\once \override Score.RehearsalMark #'self-alignment-X = #right
  %\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  %\mark \markup{\italic{on cue}}

  \break

  \mark \markup {\box \bold "B"}

  \repeat volta 2 {
    f2:m bes:m
    \mark \markup { \musicglyph #"scripts.coda" }
    c:7 f:m
  }

  \break

  \mark \markup { \musicglyph #"scripts.coda" }
  c:7 f:m

  \bar ".|."

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key f \minor

  s1 * 4\mp %^\markup{\italic{vamp - intro - etc}}\mp

  \repeat percent 2 {
    c8_\markup{\italic{sim.}} r c des r des r bes |
    r bes r c~ c r r4 |
  }

  \repeat volta 2 {
    c8-.->\f as-._\markup{\italic{tacet/tempo break}} r16 f-> r
    des'-> r bes r f8 f16[ bes8] |
    e,16-> es g bes g16 r e f-> r c' r as r f as f |
  }

  e16 es g bes g16 e r f8 r8 f'16-> ~ f4\staccato |
}

\score {
  \transpose c c {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \huge{
    \bold{
      \smallCaps{ Form: }
      \hspace #2.0
      \bracket{
        \line{
          :
          \hspace #0.1
          A = I
          \hspace #0.1
          :
        }
      }
      \super{\normal-text{\small{\italic{cue}}}}
      \bracket{
        \line{
          :
          \hspace #0.1
          B
          \hspace #0.1
          :
        }
      }
      \super{\normal-text{\small{\italic{cue}}}}
      Coda
    }
  }
}

\layout {
  ragged-last = ##t
}

\paper {
  print-page-number = ##f
}
