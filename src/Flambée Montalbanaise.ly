\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Flambée Montalbanaise"
  subtitle = ""
  subsubtitle = ""

  composer = "Gus Viseur"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "valse"
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

  \partial 8 s8 |

  s2. * 2 b2.:m b:m/fis
  b:m b:m/fis e2.:m7.5/c fis:7.9-/cis
  fis:7.9- s2. * 5 b2.:m b:m/fis
  b2:m b:m/ais b:m/a b:m/gis b:m/g b:m/fis
  b2.:7 b:7/fis e2.:m e:m/b
  e:m e:m/g b2.:m b:m/fis
  f:dim fis:3.5+ b4:m b:m/fis b:m/d b2.:m

  a:7 s d s
  fis:7 s b:m s
  e:m as:dim d b:7
  e:9 a:7.13 d fis:7

  s2.
  b gis:7.9-/bis cis:m s
  fis:7 s b s
  b:7 gis:7.9-/bis cis:m s
  fis:7 s b s
  b gis:7.9-/bis cis:m s
  fis:7 s b s
  b:7 gis:7.9-/bis cis:m s
  fis:7 s b4 b/fis b/dis b8 fis:7 s2

}

mel = \relative c'' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key b \minor
  \time 3/4
  \tempo 4 = 220

  \partial 8 b,8
  \mark \markup {\box \bold "A"}
  b
  ^\markup { \musicglyph #"scripts.segno" }
  cis d fis b cis d ais b cis d fis |
  << cis'2. \\ { r4 <fis, d b> <fis d b> } >> |
  r8 b ais b fis d | cis\prall r4 b8 ais b | fis d cis b ais b |
  fis'4 ~ <fis b, g> fis8 f | e4 ~ <e g b> r |
  f,8 fis ais cis e fis | g f fis ais cis e |
  fis r4 <ais, cis g'>8 <ais cis g'> r | r g'16 fis f8 fis fis, f |
  e e' e, dis d cis | g' f fis fis, f e |
  <ais e'> r4 dis8 d r |
  r8 \appoggiatura d16 _\markup \italic { precipitando }
  fis16 a g8 fis e16 d cis b |
  b8 cis d fis b cis d ais b cis d fis |
  << cis'2. \\ { r4. <fis, d b>16 <fis d b> <fis d b>8 r } >> |
  r8 b ais b fis d | c\prall r4 b8 <b dis fis b> r |
  r c b a fis b, | c r4 b8 << b'4 ~ \\ {<b,e g>8 <b e g> } >> |
  << {b'2 ~ b8} \\ {<b, e g>8 <b e g> <b e g> <b e g> <b e g> } >> <b fis' b> |
  <cis e>8 fis <e g> a <g b> cis |
  <b d> <bis dis> <cis e> fis <e g> <fis a> |
  <e g> r4 fis8 <fis b d> r | r b, d b16 d g,8 fis |
  f8
  %_\markup \italic { tripling }
  f <f b d>4. f8 | e8 e <e ais d>4 <e ais cis> |
  b'2. ~
  %_\markup \italic { straight }
  \mark \markup { \musicglyph #"scripts.coda" } |
  b4-.  _\markup \italic { break }
  _\markup \bold \italic { fine }

  r b8 bes\prall |
  \mark \markup {\box \bold "B"}
  a4\prall \times 2/3 { gis16 a cis } e16 a g8 r |
  r8 \appoggiatura a,16 g'8 \times 2/3 { e cis a g cis, a }  |
  g' r4 fis8 <fis a d fis>4 ~ | <fis a d fis>8 d' cis b a g |
  g fis f16 fis ais cis fis8 r | r fis fis, f fis fis' |
  e8 r4 <b d>8 <b d> r | r8 e16 d cis8 b ais b |
  <g b fis'>2( <g b e>4) |
  r8 << { d'8 cis b \times 2/3 { ais b cis } | fis,4 } \\ { gis8 ~ gis2( | fis4) } >> r4 <fis b> ~ |
  <fis b>8 cis' b a g fis | gis,4( ~ <gis fis'> ~ <gis e'>)
  | g4( ~ <g cis> ~ <g fis'>) | d'8 fis \times 2/3 {a g fis} e16 d cis b |
  ais8 cis16 e g8 fis ~ fis d16 cis32 c
  _\markup \bold {\hspace #-5.0 D.S. al Coda }
  |

  \mark \markup { \musicglyph #"scripts.coda" }
  \key b \major
  r8
  _\markup \italic { break }
  b' ais gis fis e
  \mark \markup {\box \bold "C"}
  dis4\mordent cisis8 dis e eis | fis4\prall eis8 fis a fisis |
  gis4\prall fisis8 gis cis dis | e4\prall dis8 e cis' <gis b> |
  <gis b>8 r4 <fis ais>8 <fis ais> r |
  \times 2/3 { gis ais gis } fisis cis ais a |
  gis4\prall r8 <dis fis> <dis fis>4 | r8 ais b cis dis e |
  fis e dis e16 eis fis fisis gis8 | a a, bis dis a' fisis |
  gis cis, e gis cis dis |
  <<e gis,>> r \times 2/3 { cis dis cis } c b |
  ais ais <cis ais'> gis <fis ais gis'> fis |
  <ais cis fis> e <e cis' e> e <fis ais cis> ais |
  << b2._\markup \italic {break} \\ {r8 <dis, fis> <dis fis> <dis fis> <dis fis> <dis fis> } >>
  | <dis fis>-. ais' b cis dis e |
  fis4 \times 2/3 { dis8 e eis fis fisis gis } | a4( a,8 bis dis a'8 |
  a8) r4 <gis, e' gis>8 <gis e' gis> r |
  r gis gis' gis, g <bes g'> |
  g fis <ais fis'> fis e <ais e'> |
  e dis <fis dis'> dis cis cis' |
  b, ais ~ <ais fis' ais>4. gis8 | <b gis'> <fisis' ais> <dis b'> cis' dis e |
  <dis, fis'>8 r \times 2/3 { dis' fis e } dis cis |
  c a' gis g fis f |
  e gis cis, e gis, cis |
  e, gis cis e dis8. cis32 b |
  ais8 cis gis cis fis, ais |
  \times 2/3 { e ais gis ~ gis dis fis } e ais, |
  b4 ais8 b dis fis |
  b_\markup \italic {break}
  \key b \minor
  fis
  \times 2/3 { a g fis e d cis
  _\markup \bold {\hspace #-7.0 D.S. al fine}
  } |

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
          A B A C A
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
%  \midi {}
  \layout {
    ragged-last = ##f
  }
}

\paper {
  print-page-number = ##f
}
