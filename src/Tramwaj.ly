\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Tramwaj"
  subtitle = "Трамвай"
  subsubtitle = ""

  composer = "M. Deineko"
  poet = ""
  enteredby = "Max Deineko"

  meter = "102 bpm"
  piece = "medium tempo rock"
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

  %
  % Intro
  %

  \mark \markup {\box \bold "I"}

  \repeat unfold 3 { b2:m g d a } e1 g2 a b1:m

  \bar "||:" \break

  %
  % Verse
  %

  \mark \markup {\box \bold "A"}

  \repeat volta 2 {
    b1:m b:m e:m7 e:m7 | a fis:aug b:m b:m7 |
  }

  \break

  %
  % Ref
  %

  \mark \markup {\box \bold "B"}

  g e:m7 g e2:m7 fis

  \bar "||" \break

  %
  % Solo
  %

  \mark \markup {\box \bold "S"}

  s1 \repeat volta 2 { \repeat percent 2 { e1:m9+ } }

  \break
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key b \minor

  %
  % Intro
  %

  b,8\mp %_\markup{\italic{relaxed, half notes from bass, etc.}}
  fis' b fis cis' b g a |
  fis d d' cis ~ cis16
  \override NoteHead #'style = #'cross a a a
  \override NoteHead #'style = #'default d cis
  \override NoteHead #'style = #'cross a a |
  \override NoteHead #'style = #'default
  b,8 fis' b fis cis' b g a |
  fis d b' a~a4 r4 |
  b,8 fis' b fis cis' b g a |
  fis d d' cis ~ cis4 cis16 d r8 |
  e,,4. \glissando <e' gis>8 ~ <e gis>2 |
  g,2 d''16^\markup{ \italic{ w. sax} } d cis8 b16 b a8 |
  b4_\markup{\italic{drums fill}} r4 r2 |

  %
  % Verse
  %

  \override NoteHead #'style = #'diamond
  a8\f b_\markup{\italic{rockfunkthingygroove sim.}}
  r b~b4 r4 |
  s1 * 7% _\markup{\italic{sim.}}
  \override NoteHead #'style = #'default

  %
  % Ref
  %

  g2 fis16 g fis8 d e~ | e4 r4 r2 |
  g2 fis16 g fis8 d e~ | e2 fis4\staccato r4 |

  %
  % Solo
  %

  \override NoteHead #'style = #'diamond
  R1_\markup{\italic{drums fill}} \repeat volta 2 { \repeat percent 2 {d'8 e r e~e4 r4 } }

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
      I
      \hspace #0.2
      A B
      \hspace #0.2
      I
      \hspace #0.2
      A B
      \hspace #0.5
      \column {
        \line {
          \bracket{S}
          \super{\normal-text{\small{\italic{cue}}}}
          \bracket{A}
          \super{\normal-text{\small{\italic{cue}}}}
        }
        \normal-text{\italic{solos}}
      }
      \hspace #0.2
      A I
    }
  }
}

%\layout {
%  ragged-last = ##t
%}

\paper {
  print-page-number = ##f
}
