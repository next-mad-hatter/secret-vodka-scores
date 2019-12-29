\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Black Cat"
  subtitle = "Чёрный Кот"
  subsubtitle = ""

  composer = "Ю. Саульский"
  poet = "М. Танич"
  enteredby = "Max Deineko"

  meter = ""
  piece = "russian twist"
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

  \partial 2 s2 |
  g1:m g:m |

  \once \set chordChanges = ##f
  g1:m g:m g:m g:m |
  g:m g:m c:9 c:9 |
  c:m f:7 bes bes |
  c:m6 d:7 g2:m f4. g8:m g1:m |

  c:m f:7 bes es |
  as d:7 g:m |
  c:9 c:9 c:9 c:9 |
  c:m d:7 |

  g:m g:m c:m d:7 |
  g:m g:m g:m |

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \override TextSpanner #'staff-padding = #1.0
  \textLengthOff

  \override TextSpanner #'(bound-details left text) = \markup{ tutti }
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \textSpannerDown

  \clef treble
  \key g \minor
  \time 4/4

  \tempo "affrettando" 4 = 225
  \partial 2 \parenthesize d4 \parenthesize f

  \mark \markup \box \bold "Entrée"
  \repeat volta 2 {
    \parenthesize g1~
    \textLengthOn
    \textLengthOff
    \once \override TextScript #'X-extent = #'(0.0 . 0.0)
    \parenthesize g1
    ^\markup{ \halign #-4.5 repeat until cue }
    \textLengthOff
  }

  \break
  \mark \markup {
    \vcenter
    \box \bold "A"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno"
  }
  s1*8 |
  \break
  s1*6 |
  \override NoteHead #'style = #'diamond
  g4 \startTextSpan g f8 f r g \stopTextSpan |
  \override NoteHead #'style = #'default
  s2 _\markup{ \italic fill }
  \once \override TextScript #'outside-staff-priority = #999
  \once \override TextScript #'X-extent = #'(0.0 . 0.0)
  s2
  ^\markup \normalsize \box \pad-around #0.1 \line{
    \halign #11.5
    solos: \bold{D.S.} modulating ±1 whole tone
    \huge \arrow-head #Y #DOWN ##t
  }
%  _\markup \normalsize \box \pad-around #0.1 \line{
%    \halign #11.5
%    solos: \bold{D.S.} modulating ±1 whole tone
%    \super \huge \arrow-head #Y #UP ##t
%  }
  |
  \bar "||"

  \break
  \mark \markup \box \bold "B"
  s1*7 |
  \break
  s1 r2 g4 bes |
  c8 c r c g4 bes c2 r2 |
  \override NoteHead #'style = #'diamond
  c4. c8~c2 |
  d4.  d8~
  \once \override TextScript #'X-extent = #'(0.0 . 0.0)
  d2
  ^\markup \normalsize \box \pad-around #0.1 \line{
    \halign #7.0
    \bold{D.C.} unless cue \bold{al coda}
    \huge \arrow-head #Y #DOWN ##t
  }
%  _\markup \normalsize \box \pad-around #0.1 \line{
%    \halign #7.0
%    \bold{D.C.} unless cue \bold{al coda}
%    \super \huge \arrow-head #Y #UP ##t
%  }
  | \override NoteHead #'style = #'default
  \bar ".|:-||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 2 { s1*4 }
  \override NoteHead #'style = #'diamond
  g,4-. \startTextSpan r2. | r2 d'4-- f-- | g2-> r2 \stopTextSpan |

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
          [:
          Entrée
          \raise #1.0 \small \italic cue
          A
          \raise #1.0 \small \italic{ solos: cue }
          B
          :]
          \raise #1.0 \small \italic cue
          Coda
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
