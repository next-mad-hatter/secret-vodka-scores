\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Douce Joie"
  subtitle = ""
  subsubtitle = ""

  composer = "Gus Viseur"
  poet = "Armand Lassagne"
  enteredby = "Max Deineko"

  meter = ""
  piece = "swing valse"
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

  d2.:m c bes a:7

  d2.:m s e:7 s a:7 a:3.5+ d:m9 d:m
  f f:7 bes s e:7.9- a:7 d:m s
  d2.:m s e:7 s a:7 a:3.5+ d:m9 d:m
  f f:7 bes s e:7.9- a:7 d:m s

  a:7 s d:m s a:7 s d:m s
  d:7.9- s g:m s d:m a:7 d:m s
  a:7 s d:m s a:7 s d:m s
  d:7.9- s g:m s d:m a:7 d:m s

}

mel = \relative c'' {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \time 3/4
  \tempo 4 = 195

  \override PhrasingSlur #'positions = #'(3 . 3)
  \phrasingSlurUp

  \override NoteHead #'font-size = #-2
  r4 <g g'> <f f'> | r <e e'> <d d'> | r <c c'> <bes bes'> | r <bes bes'> <a a'> |

  \mark \markup {\box \bold "A"}
  \appoggiatura { a'16[ bes] }
  \override NoteHead #'font-size = #0
  a2
  ^\markup { \musicglyph #"scripts.segno" }
  ~ a8 d16( f | a2) f16( d bes a |
  gis4) \appoggiatura { dis'16 } e2 | r r16 cis( d dis |
  e2) e8( f16 g | f2) \times 2/3 { cis8( d dis } |
  e2) e16( f e dis | d2) ~ d8 d16( dis |
  d8) c d2 ~ | d4 \appoggiatura { c16[ des] } c4( a) |
  a2( g4) | r \appoggiatura { e16[ g] } f8( e f g |
  gis2.) | a2 cis,4 |
  \appoggiatura e16 d2. | r4 \times 2/3 {cis8( d e f g gis} |
  a4-.) r4 r16 a( d f | a4-.) r16 a,( d f a16 f d a |
  gis4-.) \times 2/3 { gis8( b d } e16 gis b e |
  <e, e'-.>4) r \times 2/3 { e8( es d } |
  cis4-.) \times 2/3 {cis'8( a g } cis,4-.) |
  r4 cis'16( a g cis, \times 2/3 { g'8 a cis } |
  d4-.) r8. d16( a f e es | d2) \times 2/3 {r4 e'8( | f es c a g ges f c' a f e es c c' a f e es d bes' f bes, a g f e es } |
  d2) f16( e es d |
  cis4) ~ <cis g' a cis> <cis g' a cis> | a ~ <a e' g cis> a8( b16 cis |
  d8) f, a d f a |
  d16
  _\markup \italic { \bold fine on cue }
  d f8 a a a a |

  \mark \markup {\box \bold "B"}

  a8( bes16 a) g8 fis g4-. | bes8( c16 bes a8) g f e |
  g g f e <d f-.>4 | r8 a <a d f a-.>4 <a d f a-.> |
  <a cis e a>( <g cis e g>8 <fis fis'> <g cis e g-.>4) |
  r8 \appoggiatura a'16 c( bes a8) g f e |
  <e g-.>4 r8 <a, d f> <a d f-.>4 | r8 f a d f e |
  <es fis-.>4 r8 <a, fis' a> <a fis' a-.>4 |
  r8 <a fis' a > <a fis' a> <c fis a> <c fis a> <es fis a> |
  <es fis a> <d g bes> <d g bes> <d g bes> <d g bes-.>4 |
  r4 \times 2/3 { d8( g a bes c cis } |
  d) cis c a bes16( c bes a | g8) e cis a g e |
  d e f g a b | cis d e f g gis |
  a a g16( f e d cis4-.) | r \times 2/3 { bes'8( a g f e d | cis d e f g gis a f d16 bes } |
  a4-.) a16( bes d f a f d bes32 a) |
  gis16( a cis e g e cis a gis a cis e | e,4-.) cis16( e g bes a8 cis16 e |
  d4-.) r8 f a,4-. | r8 f a d f e |
  es4-. << { <fis, a>4 <a c> | <c es>4 <es fis> <fis a> } \\ { \times 2/3 { c,8 cis d es e f | fis g gis a bes b c d dis } } >> |
  <es fis a c-.>4 r8 <d g bes> <d g bes-.>4 | r4 \times 2/3 { bes8( d g a bes b16 cis } |
  d8) a f d  a'16( f d bes32 a | gis8) a f' e d cis |
  d f a, d f, a | d,2 r4 _\markup \bold {\hspace #3.0 D.S.} |

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
          \small { Intro }
          \italic \small \super { cue }
          [: A B :]
          \italic \small \super { cue }
          A
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
