\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Fourty-Two Minutes"
  subtitle = "Сорок две минуты"
  subsubtitle = ""

  composer = "В. Сюткин"
  poet = "В. Патрушев"
  enteredby = "Max Deineko"

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
  \partial 4. s4.

  g1:m es:9 d:9 g:m6 d:9 g:m6 |
  g1:m es:9 d:9 g:m6 d:9 g:m  |

  g1:m es:9 d:7 g:m6 |
  es:9 g:m6 es:9 d:7 |

  g1:m d:7 d:7 g:m6 | d:7 c4.:9 d8:9 s2 | d1:7 g4.:m d8:7.9+ s2 |

  g1:m es:9 d:9 g:m6 |
  g1:m es:9 r1 s1  |
}

bass = \relative c {
  \set Staff.instrumentName = "bass"

  \clef bass
  \key g \minor

  \partial 4. r4
  _\markup \italic { drums: bd 4ths }
  \ottava #1
  g''8 |
  \repeat volta 2 {
    g,8 r r g'8 r d r bes |
    es, r r des'8 r r a8 d, |
  }
  \alternative {
    { d' r r d r4. d8 | g, r4. r8 d' r g | }
    { d r r d r4. d8 | g, r r bes' r d, \ottava #0 r g,, | }
  }

  \break
  \repeat volta 2 {
    g8_\markup \italic { drums: add hh } f fis g r4. bes'8 |
    es,8 cis d es r4 a8 d, |
  }
  \alternative{
    { d'8 c, cis d r2 | g8 bes r f g d c d | }
    { d'8 c, d d, r4. f'8 g g r g, r2 }
  }
}

mel = \relative c' {
  \set Staff.instrumentName = "gtr"

  \key g \minor
  \time 4/4
  \tempo 4 = 136

  \mark \markup {\box \bold "Intro"}
  \partial 4. d8 f g
  \repeat volta 2 {
    <<
      {
        \override NoteHead #'style = #'diamond
        r4^\markup{\italic{keys}} g' r8 g r4^\markup{\italic{etc}}
        \override NoteHead #'style = #'default
      }
      \\
      { bes,4.-> g8 r d f g | }
    >>
    bes4.-> g8 r2 |
  }
  \alternative {
    { r8 g bes g ces,16 c bes8 g g'-> ~ | g4 r4 r8 d f g | }
    { r8 g bes g ces,16 c bes8 g g-> ~ | g4. g'8 r8 d f g_\markup{\italic{etc}} | }
  }

  s1 * 6

  \bar ".|:-||"
  \break
  \mark \markup {
    \vcenter
    \box \bold "A"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno" \sub 1
  }
  \override NoteHead #'style = #'diamond
  \repeat volta 2 {
    g8->
    _\markup \italic { \hspace #-2.0 1. verse pattern }
    _\markup \italic { bass & dr. continue in similar manner }
    r4 g8-> r2 % ^\markup { \hspace #3.0 \italic { etc } } |
    r2
    _\markup \italic { \hspace #2.0 2. verse pattern }
    r8 g8-> r4 |
    s1 * 2 ^\markup { \hspace #10.0 \italic { solo: till cue } } |
  }
  s1_\markup \italic { opening rock beat }
  s1 * 2
  g8 g g g fis4-> _\markup \italic { break & fill } r |

  \mark \markup {
    \vcenter
    \box \bold "B"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno" \sub 2
  }
  \bar ".|:-||"
  r4_\markup \italic { rock backbeat }
  g-> fis8 g-> r4 |
  r4 a-> gis8 a-> r4 |
  \set Score.repeatCommands = #'((volta "1., 3."))
  r4 a-> gis8 a-> r4 | g8 g e e f f fis fis |
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  d'8 d c c bes bes a a |
  e8 e f fis-> ~ fis2
  \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  d'8 d c c bes bes a a |
  g8-> _\markup \italic {break}
  r4 f8-> ~
  %^\markup { \hspace #4.0 \right-column { \line { \italic { fine & Intro': } \large Gm } } }
  ^\markup { \hspace #-1.0 ( \bold Gm : fine & Intro' ) }
  _\markup \italic \bold { fine }
  _\markup { \hspace #0.0 \bold { D.S.1 twice } }
  f2
  \set Score.repeatCommands = #'((volta #f))

  \bar "||"
  \break
  \mark \markup {\box \bold "Intro'"}
  \override NoteHead #'style = #'default
  bes4.-> g8 r d f g | bes4.-> g8 r2 |
  r8 g bes g ces,16 c bes8 g g'-> ~ | g4 r4 r8 d f g |
  \override TextSpanner #'(bound-details left text) = \markup { \italic "break" }
  \textSpannerDown
  bes4.-> g8 r d f g | cis4 cis cis16 c bes8 c16-> \startTextSpan bes g8-> |
  r8 g' bes g des16 c bes8 g d' -> | r1_\markup \bold {D.S.2 al fine} \stopTextSpan |
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
          Intro [: A B :] [: Solos on A' :] B Intro' B
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose c c {
    \new StaffGroup = "42" <<
      \new ChordNames \with {
        % TODO
        %\consists "Volta_engraver"
        %voltaOnThisStaff = ##t
      } \harm
      \new Staff \mel
      \new Staff \bass
    >>
  }
}

\layout {
  ragged-last = ##f
  page-count = #1
  \context { \RemoveEmptyStaffContext }
}

\paper {
  print-page-number = ##f
}
