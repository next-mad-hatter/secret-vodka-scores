\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Bublichki"
  subtitle = "Бублички"
  subsubtitle = ""

  composer = "Я. Ядов"
  poet = ""
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

  \time 4/4

  \partial 2. s2. |

  c1:m f:m c:m c:m |
  c:m d:7 g:7 g:7 |
  c:m f:m c:m f:m |
  g:7 g:7 c:m |
  \once \set chordChanges = ##f
  c:m |
  bes:7 |

  es bes:7 es es |
  es d:7 g:7 g:7 |
  c:m f:m c:m f:m |
  g:7 g:7 c:m |
  bes:7 c:m |

}

voltaRep = \markup \bold \tiny \line { cue: rep. }

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \override TextSpanner #'staff-padding = #1.0
  \textLengthOff

  \override TextSpanner #'(bound-details left text) = \markup{ break }
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \textSpannerDown

  \clef treble
  \key c \minor
  \time 4/4
  \tempo "con brio" 4 = 212

  \partial 2. g4 c d |

  \mark \markup {
    \vcenter
    \box \bold "A"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno"
  }
  \bar ".|:"
  es2 d4 c~ | \noBreak c as' g f |
  es2 d4 c~ | \noBreak c c es g |
  c2 b4 c~ | \noBreak c4 es d c |
  b2 r | \noBreak r4 g c d |
  es2 d4 c~ | \noBreak c c, c' as |
  g2 f4 es~ | \noBreak es c bes' as |
  g2 as4 g~ | \noBreak g f es d |
  c2 r |
  % FIXME
  %\set Score.repeatCommands = #(list (list 'volta voltaRep))
  %\set Score.repeatCommands = #'((volta "cue: rep."))
  \set Score.repeatCommands = #'((volta ""))
  r4
  ^\markup{cue: rep. \box A}
  g c d |
  \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
  r4^\markup{cont. to \box B} bes es f |
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|:-||"

  \break
  \mark \markup \box \bold "B"
  g2 f4 es~ | \noBreak es bes' a as |
  <<
    { g2 f4 es~ | es }
    \new DrumStaff \with {
      \override StaffSymbol #'line-count = #1
      \remove "Time_signature_engraver"
      firstClef = ##f
      alignAboveContext = #"main"
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
      \override StaffSymbol.thickness = #(magstep -2)
      \override Stem.length = #5
    }
    {
      \stemUp
      r4
      ^\markup \right-align \larger {
         \hspace #-20.0 after two consecutive \box{A} \hspace #-0.5 s:
         \italic {tutti break}
        }
      g4.-> f-> | es4->
    }
  >> bes es g |
  bes2 a4 bes~ | \noBreak bes es d c |
  b2 r | \noBreak r4 g c d |
  es2 d4 c~ | \noBreak c g bes as |
  g2 f4 es~ | \noBreak es c bes' as |
  g2 f4 es~ | \noBreak es f es d |
  c2 r |
  \set Score.repeatCommands = #'((volta ""))
  r4^\markup{rep. \box B}
  bes es f
  |
  \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
  r4
  ^\markup{cue: to \box{A} (\bold{D.S.})}
  g, c
  _\markup \normalsize \box \pad-around #0.1 \line{
    \hspace #0.7
    \super \huge \arrow-head #Y #UP ##t
    \bold fine
    }
  d |
  \set Score.repeatCommands = #'((volta #f))

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
          \italic repeat
          \large (
          A \italic{ on cue } |
          B \italic{ otherwise }
          \large )
          \italic until fine \italic {on cue}
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
      \new ChordNames = "main" \harm
      \new Staff \mel
    >>
  }
}

\layout {
 ragged-last = ##f
 \context {
    \Staff \RemoveEmptyStaves
  }
}

\paper {
  print-page-number = ##f
  system-count = #6
}
