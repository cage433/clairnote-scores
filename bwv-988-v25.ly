\version "2.16.1"

\paper {
	%top-system-spacing #'basic-distance = #0.0
	indent = 0.0
	%line-width = 20.0\cm
	ragged-bottom = ##t
	ragged-last-bottom = ##t
}

#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
	title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
	subtitle = "\"Goldberg Variationen\""
	piece = "Variatio 25. a 2 Clav."
	mutopiatitle = "Goldberg Variations - 25"
	composer = "Johann Sebastian Bach (1685-1750)"
	mutopiacomposer = "BachJS"
	opus = "BWV 988"
	date = "1741"
	mutopiainstrument = "Harpsichord,Clavichord"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition 1853 Band 3"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Hajo Dezelski"
	maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2013/01/22-1419"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

soprano = \relative d'' {
	\repeat volta 2 { %begin repeated section
		r16 d16-3 [ \appoggiatura es16 d32 cis d16 ] \once \override Slur #'direction = #UP \appoggiatura d16-1 bes'8-4 ~ [ bes32 a g f ] es16 [ d8 cis!16 ~ ] | \noBreak % 1
		cis16-2 [ c-1 \appoggiatura d16-3 c32 b c16 ]  \appoggiatura  c16-1 as'8-4 ~ [ as32 g f-1 es-4 ] des16 [ c8 b16-1 ~ ] | \noBreak % 2
		b16-1 [ bes-2  \appoggiatura  c16-4 bes32 a bes16-2 ] fis' [ g8 cis,16 ~ ] cis [ d8 g,16 ] |% 3
		g16-1 [ a32 bes a8 ] r4 r4 | \noBreak % 4
		r16 d,16-3 [ \appoggiatura ees16 d32 cis d16-3 ] \appoggiatura d16-1 d'8 ~ [ d32 c! bes a ] g-1 [ f-2 as16-4 ~ as32 d, f16-3 ~ ] |  \noBreak% 5
		f16 [ es  \appoggiatura  f16 es32 d es16 ] \appoggiatura es16-1  es'8 ~ [ es32 d c bes ] a32 [ g-2 bes16 ~ bes32 e,32 g16-3 ~] |  % 6
		g16-3 [ fis \appoggiatura g16 fis32 e fis16 ] 
		\times 2/3 { b16-1 [ c-2 es!-4 ] } 
		\times 2/3 { cis16-3  [d-5 fis,!-2 ] } 
		\times 2/3 { bes16-4 [ a-3 d,-1] } 
		\times 2/3 { es16-4 [ b-1 c-3 ~ ] } | \noBreak% 7
		c16 [ bes!32-2 a bes8-3 ] r4 r4 | \noBreak% 8
		r32 d32-2 [ e fis g-1 bes  a16 ~ ] a16 [ bes8 b16-1 ] c16 [ cis8 d16-1 ] | \break % 9
		dis16-2 [ e-1 ~ e32 bes'-4 a-3 g-1 ] fis-3 [ e d8 d16 ] d' [ cis8-3 c16-2 ] | % 10
		b16-1 [ bes-4 ~ bes32 a gis16 ~ ] gis [ a-3 ~ a32 d,-1 c-3 bes ] c-4 [ a-2 bes-4 g!-3 f-2 e f d' ] | \noBreak% 11
		f,32 \prallprall\finger "3/2" [ e f16 e8 ] r32 d32-1 [ cis-2 d-1 e f g-1 a ] bes [ a d16-5 ~ d32 cis-3 e16-5 ~ ] | % 12
		e16-5 [ a,-1 \appoggiatura bes16-3 a32 gis-2 a16 ] \once \override Slur #'direction = #UP  \appoggiatura a16 a'8\finger "5--3" ~ [ a32 bes (a gis ) ] a-. [ d,-1 c-3 bes c-. c (bes a ) ] | % 13
		a16-1 [ bes \appoggiatura c16 bes32 a bes16 ] bes'8 ~ [ bes32 es,!-2 d cis-2 ] d-1 [ c'! b8 d,16 ] | \break% 14
		cis16-3 [ bes!8 a16 ] es'!16-4 [ d ~ d32 cis! e-1 g-2 ] bes16-4 [ a ~ a64 g f-1 e-4 d32-3 cis ] | % 15 
	} %end of repeated section
	
	\alternative {
		{cis8-2\( [ d\) ] r4 r4 }
		{cis8-2\( [ d\) ] r4 r4 }
	}

 	\repeat volta 2 { %begin repeated section
		r16 a'16 [ \appoggiatura  bes16  a32 gis a16 ] es! [ d ~ d32 e fis g ] a [ c, es8 d16 ~ ] | % 17
		d16 [ f  \appoggiatura g16 f32 es f16 ] as, [ g ~ g32 a b c ] d [ f, as8 g16 ~ ] | % 18
		g16 [ c8 b16 ] c32 [ es des8 c16 ~ ] c32 [ f es16 ~ es32 f es d ] | % 19
		es32 [ a! ( bes16 es, d ) ] r4 r4 | % 20
		r16 bes16 [ \appoggiatura ces16 bes32 as bes16 ] bes [ bes' ~ bes32 ces bes as ] bes16 [ des, ~ des32 ces bes16 ~ ] | % 21
		bes16 [ ces  \appoggiatura des16 ces32 bes ces16 ] ces [ ces' ~ ces32 fes, es d] es [ des' c8 es,16 ] | % 22
		d!16 [ ces8 bes16 ] fes' [ es ~ es32 d f as ] ces16 [ bes ~ bes64 as64 ges64 f64 es32 d ] | % 23
		d8\( [ es8\) ] r4 r4 | % 24
		r16 g,16 [ \appoggiatura as16 g32 fis g16 ] \once \override Slur #'direction = #UP \appoggiatura g16 es'8 ~ [ es32 d c bes ] as!16 [ g8 fis!16 ] ~ | % 25
		fis16 [ f \grace g16 f32 e f16 ] des'8 ~ [ des32 c bes as ] ges16 [ f8 e!16 ~ ] | % 26
		e16 [ es  \appoggiatura f16 es32 d es16 ] c'8 ~ [ c32 bes as g ] fis16 [ es' ~ es32 d cis16 ] | % 27
		cis16 [ (d) es, (d) ] r32 e32 [ fis g a bes c d ] es! [ d g16 ~ g32 fis a16 ~ ] | % 28
		a16 [ d,  \appoggiatura es16 d32 cis d16 ] d'8 ~ [ d32 c! bes a ] g [ d' f,16 ~ f32 es d c ] | % 29
		d32 [ as' g f es d c b ] c [ f es d c bes a! g ] a [ d c bes a g fis e ] | % 30
		fis32 [ bes a g fis e d cis ] d [ g fis e d c bes a ] bes [ es d c bes a g fis ] | % 31	
	} %end repeated section

	\alternative {
		{ \grace fis16  g4 r4 r4 |} % 32 % \grace fis16
		{ g4 r4 r4 \bar "|." |}% 32 
	}
}

%%
%% Bass Clef
%% 

bassOne = \relative c' {
	\repeat volta 2 { %begin repeated section
		\stemUp
		bes4-3 r8 d8 [ c!\finger "2 - 1" bes ] | % 1
		a4-1 r8 c8 [ bes! as ] | % 2
		g4 r8 bes8-2 [ a-1 g-2 ~ ] | % 3
		g8-2 [ fis16 e ] fis [ a8-2 c16-3 ~ ] c [ fis,8-2 a16 ~ ] | % 4
		a16 [ fis g8 ] r8 g8 d16-3 [ f-2 g as-2 ] | % 5
		as8-2 [ g-1 ] r8 a-1 e16-3 [ g-2 a-1 bes-2 ] | % 6
		bes8-2 [ a-1 ] r8 a [ g\finger "2--1" fis\finger "2 - 1" ~ ] | % 7
		fis8 
		[
		\set fingeringOrientations = #'(left) 
		< g\finger "⸤">16  fis 
		]
		
	
		g[ d8 es16 ~ ] es32 [ d g16 ~ g32-3 fis! c'16\finger "5 - 1"  ~ ] | % 8
		\set fingeringOrientations = #'(right) 
		< c\finger "⸢">16   
	       [ bes32-3 a bes8 ] r8 g' [ g g ] | \break %9
		g8 [ fis ] r8 f [ f f ] | % 10
		f8 [ e ] r8 es [ es d ] | % 11
		d8 [ cis ] r4 r4 | % 12
		r8 d8 [ d es ] es4 | % 13
		r8 e8 [ e f ] f4 | % 14
		r8 fis8 [ fis g ] g4 ~ | % 15
	} %end of repeated section

	\alternative { 
		{ g8 [ fis16 e ] fis4 fis4\rest }
		{ g8 [ fis16 e ] fis4 r4 }
	}
 
	\repeat volta 2 { %begin repeated section
		r8 f8 [ f fis fis g ] | % 17
		g8 [ d ] r8 f8 [ f es ] | % 18
		es8 [ d es e f ges ~] | % 19
		ges8 [ f16 ges ] as [ d,8 es32 f ] ges [ es f8 ces16 ] | % 20
		ces16 [ bes es8 ] es [ fes ] fes4 | % 21
		r8 f! [ f ges ] ges4 | % 22
		r8 g! [ g as ] as4 ~ | % 23
		as8 [ g!16 f ] g8. [ a32 b ] c [ f, as8 g16 ] | % 24
		f8 [ es ] r8 \clef "bass" g [ f es ] | % 25
		d4 r8 f8 [ es des ] | % 26
		c4 r8 es16 [ d ] c8 [ bes ] | % 27
		a8. [ a16 ] d8 [ c bes a ] | % 28
		d,8 [ fis fis g g as ] | % 29
		r8 g [ g a! a bes ] | % 30
		r8 a [ a bes bes c ~ ] | % 31
	} %end repeated section

	\alternative {
		{c8 [ bes16 a ] bes4 r4 |} % 32
		{c8\repeatTie [ bes16 a ] bes8 r8 r4 |} % 34
	}
}

bassTwo = \relative g {
	\repeat volta 2 { %begin repeated section
		\stemDown	 
		g4-5 r8 g8 [ g g-4 ] | % 1
		g8-3 [ fis-4 ] b, \rest f'-5 [ f f ] | % 2
		f8-4 [ e-5 ] b8\rest es8 [ es es-4 ] | % 3
		d4-5 r8 es8-4 [ d-5  c-4 ] | % 4
		bes4-5 r8 bes8 [ b-5 b ] | % 5
		b8 [ c ] r8 c8 [ cis-5 cis ] | % 6
		cis8-5 [ d-5 ] r8 d [ d d-4 ] | % 7
		g,4 r8 g [ bes-4 d-2 ] | % 8
		g8.-5 [ d'16-2 ] g8 [ f! es! d\finger "4 - 3" ] | % 9
		cis8 [ a d c bes a ] | % 10
		g8 [ c ] f, [ fis g gis ] | % 11
		a8 [ bes a g f e ] | % 12
		f4 r8 fis8 [ fis g ] | % 13
		g4 r8 gis8 [ gis a ] | % 14
		a4 r8 a8 [ cis a ] | % 15
	} %end of repeated section

	\alternative { 
		{ d4. c8 [ bes a ] | } % 16
		{ d4. a8 d,4 | } % 16
	}
 
	\repeat volta 2 { %begin repeated section
		\clef "treble" 
		d'4 r8 c [ c bes ] | % 17
		bes8 [ g16 a ] bes8 [ b b c ] | % 18
		c4 r8 g8 [ as a ] | % 19
		bes4 r8 ces8 [ bes as] | % 20
		ges4 r8 g8 [ g  as ] | % 21
		as4 r8 a8 [ a bes ] | % 22
		bes4 r8 bes8 [ d bes ] | % 23
		es4 r8 f8 [ es  d ] | % 24
		c4 r8 \clef "bass" c8 [ c c ] | % 25
		c8 [ b ] r8 bes8 [ bes! bes ] | % 26
		bes8 [ a! ] r8 as8 [ as g ] | % 27
		g8 [ fis ] r8 fis8 [ g c, ] | % 28
		bes4 r8 bes8 [ bes b ] | % 29
		b16 [ d c8 ] r8 c8 [ c cis ] | % 30
		cis16 [ e d8 ] r8 d8 d [ d ] | % 31
	} %end repeated section
	
	\alternative {
		{ g4 ~ g8 [ d ] g,16 [ a' bes c ] |} % 32
		{ g4 ~ g16 [ fis g d ] g,4 |} % 32
	}
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
	\context PianoStaff <<
	%\set PianoStaff.instrumentName = "Clavier "
	\set PianoStaff.midiInstrument = "harpsichord"
	\new Staff = "upper" { \clef "treble" \key g \minor \time 3/4 \soprano }
	\new Staff = "lower" { \clef "bass" \key g \minor \time 3/4 \bass }
		% \clef "bass" \key bes \major \time 3/4 
	>>
	\layout{ }
	\midi { }
}
