\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Altitude 7000"
  subtitle = "Семь тысяч над землёй"
  subsubtitle = ""

  composer = "В. Сюткин"
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

  s1*4 |

  e1:m e:m b:7 b:7 | b:7 b:7 e:m6 c2:7 b:7 |
  \once \set chordChanges = ##f
  b1:7 b:aug e:m6 e:m6 |

  e1:m e:m e:m e:m b:7 b:7 e:m c2:7 b:7 |
  e1:m e:m |
  c1:9 c:9 e:m6 e:m6 c:9 c:9 a:m6 b:7 |

  e1:m e:m b:7 b:7 b:7 b:7 e:m c2:7 b:7 |
  a1:7 a:7 b:7 b:7 |

  c1:9 c:9 e:m6 e:m6 c:9 c:9 a:m6 b:7 |
  e:m e:m b:7 b:7 b:7 b:7 e:m c2:7 b:7 |
  a1:7 b:7 |
  r r b2:aug s4. e4:m b4.:7 e2:m |
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
  \set Staff.beatStructure = #'(4 4)

  \clef treble
  \key e \minor
  \time 4/4
  \tempo "grazioso" 4 = 186

  <<
    {
      e2 \acciaccatura { es8[ d] }
      cis2 \acciaccatura { c8[ b] }
      bes2 \acciaccatura { a8[ as] }
      g2 | \appoggiatura bes8 b4-. }
    \\
    {
      bes2( g e cis |
      \appoggiatura bes'8 b4-.)
    }
  >>
  b'-. b,-. b,8( b'-.) r4
  \appoggiatura bes,8 b4^\markup{\italic pickup} e4 g |

  \break
  \mark \markup {
    \vcenter
    \box \bold "A"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno" \sub 1
  }
  \repeat volta 2 {
    b2\mf^\markup{\hspace #5.6 \italic harmonized} b2 r8 b4. a4 g |
    a4. b8 ~ b2 r8 b,4. dis4 fis |
  }
  \alternative{
    {
      a4. b8 ~ b2 r4 \appoggiatura bes8 b4 bes8 b4-. a8 ~ |
      a2 g \parenthesize e4 b e g |
    }{
      a4. b8 ~ b2 g4 g g g |
      e1 ~ e4-.
      _\markup \italic { \hspace #3.0 break & fill }
      \once \override TextScript #'X-extent = #'(0.0 . 0.0)
      r2.
      ^\markup \box \pad-around #0.1
        \halign #-0.3
        \right-column{
          \line{ solos: repeat \bold{D.S.1} }
          \vspace #-0.2
          \line{ until cue \bold {al coda}
          \huge \arrow-head #Y #DOWN ##t
          }
        }
      |
    }
  }
  \bar ".|:-||"

  \break
  \mark \markup {
    \vcenter
    \box \bold "B"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno" \sub 2
  }
  \repeat volta 2 { s1*6 \p }
  \alternative { { s1*2 } { s1*2 } }
  \break
  \small
  g1
  _\markup{\normalsize \italic{ cresc. }}
  ^\markup{\normalsize \italic{ two decoration samples }}
  ~ g4 e d' c |
  <<
    \small
    {
      b1 ~ b4 g g' fis | e1 c | a2 fis4 e dis4 r2. |
    }
    \\
    \small
    {
      \override TextSpanner #'dash-fraction = #0.3
      \override TextSpanner #'dash-period = #2.0
      \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
      \override TextSpanner #'(bound-details left text) = \markup{ 8vb }
      \textSpannerDown
      b'4-. \parenthesize b4-. \parenthesize g-. \parenthesize g-. e1 |
      c2 \startTextSpan e \stopTextSpan b a ~ a2. b4 r1
    }
    \normalsize
  >>
  \bar ".|:-||"

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 {
    \small
    \repeat percent 3 {
      r4
      ^\markup{\normalsize \italic{a decoration sample}}
      \appoggiatura bes'8 b4 \appoggiatura b,16 b''8 b, r4
      \appoggiatura bes8 b4 \appoggiatura b,16 b''8 b, r2
    }
    \normalsize
  }
  \alternative{
    { \small d4 cis c g b8 bes\prall a g fis e dis c \normalsize }
    {
      \small
      \repeat unfold 8 { \parenthesize a'4 }
      b,2 \acciaccatura{ c8[ cis d] } dis2
      \acciaccatura{ e8[ f] } fis4-. b
      _\markup{\normalsize \italic{break & fill}} ~
      \once \override TextScript #'X-extent = #'(0.0 . 0.0)
      b2
      ^\markup \normalsize \box \pad-around #0.1 \line{
          \halign #6.1
          \bold{D.S.2}, then \bold{D.S.1} for solos
          \huge \arrow-head #Y #DOWN ##t
        }
      |
    }
    \normalsize
  }
  \bar "||"

  \break
  \normalsize
  \mark \markup { \musicglyph #"scripts.coda" }
  s1 * 7 \f
  s1_\markup \italic { break & fill }
  \break
  \bar ".|:"
  s1
  _\markup{
    \tiny \bold{1.,2.:} \dynamic mp
    \tiny \bold{3.,4.:} \dynamic f
  }
%  \textLengthOn
%  _\markup{\tiny \bold{1.},\bold{2.}: \dynamic mp}
%  _\markup{\small \italic{3. & 4.:} \dynamic f}
%  \textLengthOff
  s1*5
%  \break
  \set Score.repeatCommands = #'((volta "1., 3."))
  s1*2
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  s1.\< s2\!
  \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  <<
    {
      e2 \appoggiatura { es8[ d] }
      cis2 \appoggiatura { c8[ b] }
      bes2 \appoggiatura { a8[ as] }
      g2 | \appoggiatura bes8 b4-.
    }
    \\
    {
      \override TextSpanner #'dash-fraction = #0.3
      \override TextSpanner #'dash-period = #2.0
      \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
      \override TextSpanner #'(bound-details left text) = \markup{break}
      \textSpannerDown
      bes2( \startTextSpan g e cis \stopTextSpan |
      \set Score.repeatCommands = #'((volta #f))
      \appoggiatura bes'8 b4-.)
    }
  >>
  \override TextSpanner #'staff-padding = #6.7
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \override TextSpanner #'(bound-details left text) = \markup{\hspace #-5.0 tutti}
  \textSpannerDown
  b-.  \startTextSpan g-. g8( e)-. |
  r8 <fis des'>4.^( <g e'>4^)-> r \stopTextSpan |

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
          A [: B C :] [: Solos on A :] \raise #1.0 \small \italic cue Coda
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
