\version "2.24.4"

global = {
	\key d \major
	\cadenzaOn
}

god-the-lord_melody = \relative c' {
	\global
	d4 fis a a a b cis d2 b a \bar "|"
	a4 a a b2. a4 g a b a2 g4 g fis2 \bar "||"
}

god-the-lord_harmony = \relative c' {
	r4 r r r r g4 e fis2 g fis
	fis4 fis fis g2. fis4 e fis f fis2 e e d2
}

god-the-lord_text = \lyricmode {
	God the Lord has re -- vealed Him -- self to \markup {us. *}
	Bless -- ed is he who comes in the Name of the Lord.
}

\score {
	<<
		\new Voice = "one" {
			\god-the-lord_melody
		}
		\new Lyrics \lyricsto "one" {
			\god-the-lord_text
		}
	>>
}
