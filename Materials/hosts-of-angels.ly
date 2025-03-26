\version "2.24.4"

global = {
	\key g \major
	\cadenzaOn
}

melody = \relative c'' {
	\global
	g4 g a b2 a4 b( a g2) \bar "|"
	b2( c) b a4 a b( a) g2 \bar "||"
}

harmony = \relative c'' {
	\global
	g4 g fis g2 fis4 g( fis e2) \bar "|"
	g2( a) g fis4 fis g( fis) e2 \bar "||"
}

text = \lyricmode {
	Bless -- ed are You, O \markup {Lord. *}
	Teach me Your com -- mand -- ments.
}

\score {
	<<
		\new Voice = "one" {
			\melody
		}
		\new Lyrics \lyricsto "one" {
			\text
		}
	>>
	}
