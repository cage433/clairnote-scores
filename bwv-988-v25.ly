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
	title = "Goldberg Variation 25"
	%subtitle = "\"Goldberg Variationen\""
	%piece = "Variatio 25. a 2 Clav."
	%mutopiatitle = "Goldberg Variations - 25"
	%composer = "Johann Sebastian Bach (1685-1750)"
	%mutopiacomposer = "BachJS"
	opus = "BWV 988"
	%date = "1741"
	mutopiainstrument = "Harpsichord,Clavichord"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition 1853 Band 3"
	%copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Hajo Dezelski"
	%maintainerEmail = "dl1sdz (at) gmail.com"

 %footer = "Mutopia-2013/01/22-1419"
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
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
		a16-1 [ bes \appoggiatura c16 bes32 a bes16 ] bes'8 ~ [ bes32 es,!-2 d cis-2 ] d-1 [ c'! b8 d,16 ] | % 14
		cis16-3 [ bes!8 a16 ] es'!16-4 [ d ~ d32 cis! e-1 g-2 ] bes16-4 [ a ~ a64 g f-1 e-4 d32-3 cis ] | % 15 
	} %end of repeated section
	
	\alternative {
		{cis8-2\( [ d\) ] r4 r4 }
		{cis8-2\( [ d\) ] r4 r4 }
	}

 	\repeat volta 2 { %begin repeated section
 	    \pageBreak
		r16 a'16-3 [ \appoggiatura  bes16  a32 gis a16-5 ] es! [ d ~ d32 e fis g ] a-5 [ c, es8-2 d16-1 ~ ] | % 17
		d16-3 [ f  \appoggiatura g16 f32 es f16-5 ] as, [ g ~ g32 a b c ] d [ f, as8 g16-1 ~ ] | \noBreak% 18
		g16 [ c8-3 b16 ] c32-1 [ es des8 c16 ~ ] c32 [ f-3 es16 ~ es32 f es d ] | % 19
		es32-2 [ a!-4 ( bes16-5 es, d ) ] r4 r4 | % 20
		r16 bes16-3 [ \appoggiatura ces16 bes32 as bes16 ] bes-1 [ bes'-4 ~ bes32 ces bes as ] bes16 [ des, ~ des32 ces-3 bes16 ~ ] | \noBreak% 21
		bes16-2 [ ces-1  \appoggiatura des16-3 ces32-1 bes-2 ces16 ] ces-1 [ ces' ~ ces32 fes, es-2 d] es [ des' c8 es,16-1 ] | % 22
		d!16-3 [ ces8 bes16 ] fes'-4 [ es-3 ~ es32 d-1 f as ] ces16 [ bes ~ bes64 as64 ges64 f64 es32-3 d ] | % 23
		d8-2\( [ es8\) ] r4 r4 | \noBreak % 24
		r16 g,16-1 [ \appoggiatura as16-3 g32 fis g16 ] \once \override Slur #'direction = #UP \appoggiatura g16 es'8-4 ~ [ es32 d c-1 bes-3 ] as!16 [ g8 fis!16-3 ] ~ | % 25
		fis16-3 [ f \appoggiatura g16-4 f32 e f16 ] des'8 ~ [ des32 c-1 bes-4 as ] ges16 [ f8 e!16-3 ~ ] | % 26
		e16 [ es  \appoggiatura     f16  -\tweak Y-offset 4 -4   es32 d es16 ] c'8 ~ [ c32 bes as g-1 ] fis16-2 [ es' ~ es32 d cis16 ] | \noBreak % 27
		cis16-4 [ (d) es, (d) ] r32 e32 [ fis g-1 a bes c-1 d ] es! [ d g16 ~ g32 fis-3 a16 ~ ] | % 28
		a16-5 [ d,  \appoggiatura es16 d32 cis d16 ] d'8 ~ [ d32 c! bes a ] g [ d' f,16 ~ f32 es d c ] | % 29
		d32 [ as' g f es-3 d c b-2 ] c-1 [ f-4 es d c bes-3 a! g ] a [ d c bes a g fis-2 e-1 ] | % 30
		fis32-2 [ bes-4 a-3 g-1 fis-3 e d cis ] d-1 [ g-4 fis e d c-3 bes a ] bes-2 [ es d c bes a g-3 fis ] | % 31	
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
		g8 [ fis-2 ] r8 f [ f f ] | % 10
		f8-1 [ e\finger "2 - 1" ] r8 es [ es d ] | % 11
		d8-1 [ cis-2 ] r4 r4 | % 12
		r8 d8-1 [ d-2 es-1 ] es4 | % 13
		r8 e8-1 [ e-2 f ] f4 | % 14
		r8 fis8-2 [ fis g ] g4 ~ | % 15
	} %end of repeated section

	\alternative { 
		{ g8 [ fis16-2 e-1 ] fis4-2 fis4\rest }
		{ g8 [ fis16-2 e-1 ] fis4-2 r4 }
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
		f8 [ es ] r8  g [ f es ] | % 25
		\clef "bass" d4 r8 f8 [ es des ] | % 26
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
		cis8-4 [ a-5 d\finger "3 - 2" c bes\finger "4 - 3" a ] | % 10
		g8-5 [ c-3 ] f, [ fis-4 g-5 gis ] | % 11
		a8-5 [ bes-3 a-1 g f e ] | % 12
		f4\finger "3 - 5" r8 fis8-5 [ fis g-4 ] | % 13
		g4-5 r8 gis8-5 [ gis a-4 ] | % 14
		a4-5 r8 a8 [ cis-3 a ] | % 15
	} %end of repeated section

	\alternative { 
		{ d4.-3 c8-4 [ bes\finger "5 - 3" a ] | } % 16
		{ d4.-3 a8\finger "5 - 1" d,4 | } % 16
	}
 
	\repeat volta 2 { %begin repeated section
		\clef "treble" 
		d'4-3 r8 c-4 [ c bes-5 ] | % 17
		bes8-4 [ g16 a ] bes8 [ b-4 b-5 c-4 ] | % 18
		c4 r8 g8-5 [ as\finger "4 - 5" a\finger "4 - 5" ] | % 19
		bes4\finger "4 - 5" r8 ces8-4 [ bes\finger "5 --- 3" as-4] | % 20
		ges4-5 r8 g8 [ g  as-4 ] | % 21
		as4-5 r8 a8 [ a bes ] | % 22
		bes4-5 r8 bes8 [ d bes ] | % 23
		es4-4 r8 f8-4 [ es\finger "5 - 4"  d\finger "5 - 4" ] | % 24
		c4 r8 c8 [ c c ] | % 25
		\clef "bass" c8-4 [ b-5 ] r8 bes8-5 [ bes! bes ] | % 26
		bes8-4 [ a! ] r8 as8-5 [ as g ] | % 27
		g8-4 [ fis-5 ] r8 fis8-4 [ g-3 c,\finger "5 - 4" ] | % 28
		bes4 r8 bes8 [ bes b ] | % 29
		b16-5 [ d-4 c8-5 ] r8 c8-5 [ c cis ] | % 30
		cis16 [ e d8 ] r8 d8 d [ d ] | % 31
	} %end repeated section
	
	\alternative {
		{ g4-3 ~ g8 [ d\finger "5 - 1" ] g,16 [ a' bes c ] |} % 32
		{ g4 ~ g16 [ fis g-1 d ] g,4 |} % 32
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
