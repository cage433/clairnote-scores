\version "2.20.0"

\header {
  title = "Prelude 13"
  composer = "Johann Sebastian Bach"
  opus = "BWV 858"
  mutopiatitle = "Well-Tempered Clavier I, Prelude 13"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Härtel, 1866, Plate B.W.XIV, pp.48-49"
  style = "Baroque"
  maintainer = "Alex McGuire"
  maintainerEmail = "cage433@gmail.com"
  version = "2.22.1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  tagline = ##f
}

global = {
  \key fis \major
  \time 12/16
  \accidentalStyle modern-cautionary
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}
\include "articulate.ly"

clairnote-type = dn
\include "include/clairnote.ly"

                 
upper = \new Voice \relative c' {
  
  fis16-1 ais cis 		ais fis cis'  		cis4.\trill\finger "3/2"~  				    |
  cis16[-2 ais b8]  		cis16[ ais8]   		dis16[-4 gis,8]		ais16[-3 fis16~]			|
  fis16[ b-4 eis,8]		b'16[ dis,8]    		b'16-5 cis,       	eis-2 gis b-5			|
  ais[-2 fis bis8]		fis16[ cis'8]-3   	fis,16[ dis'8]-4  	gis,16[-1 eis'~]-4		|
  
  % bar 5
  eis16[ gis cis,8]-2 	dis16[-3 bis]     	cis[-2 eis cis]    	cis eis32 dis cis16~		|
  cis[-2 ais' cis,8]  	dis16 bis          	cis-2 eis-1 gis-3   	eis cis gis'				|
  gis4.~\trill\finger "3/2"					gis16[ eis fis8]    	gis16 eis~				|
  eis[-1 ais dis,8]		eis16[-2 cisis] 		fis[-4 ais, b8]		cis16[ ais~]				|
  
  % bar 9
  ais[-1 dis gis,8]		ais16[-4 fis8]		b16[-5 e,8]			fis16[-3 dis]-2			|
  gis[-4 cisis, dis8]	cisis16[ gis'8]		eis16[-1 b'8]		gis16[-2 eis'~]			|
  eis[-5 eis,-1 fis8]	ais16[ dis8]			eis,16[ gis8] 		ais16[ cisis]-5			|
  dis4.~\trill\finger "3/2"					dis16[ fis ais]     	fis[ dis gisis]-5		|
  
  % bar 13
  gisis4.~\trill\finger "3/2"				gisis16[ ais bis]	eis,[ fis-4 dis]			|
  cis[-2 eis ais,8]-2	bis16[ gisis]		ais[ cis ais] 		ais[ cis32 bis ais16~]	|
  ais[-2 fis' ais,8]		bis16[ gisis]		ais[ cis eis]-5		cis[ ais fisis']-4		|
  fisis4.~\trill\finger "3/2"				fisis16[ ais dis,]	cis[-3 b ais]			|
  
  % bar 17
  b[-2 dis gis,8]-1		ais16[ fisis]		gis[ b gis]			gis[ b32 ais gis16~]		|
  gis[-2 e' gis,8]		ais16[ fisis]		gis[ b dis]-5		b[-2 gis eis']-4			|
  eis4.~\trill\finger "3/2"					eis16[ cis eis]		gis[ eis gis]			|
  b4.-4~ 									b16[ gis ais8]		b16[ gis~]-2				|
  
  % bar 21
  gis[ eis fis8-3]		gis16[ eis]			fis[-3 ais, b8]		cis16[ ais~]				|
  ais[-1 dis gis,8]		ais16[-4 fis8]-2		eis16[ b'8-4]		gis16[-2 dis'~]-5		|
  dis[ b-1 gis'8]-5		eis16[-4 b8]			gis16[ cis8]-5		ais16[ fis~]				|
  fis[-2 dis b'8]		gis16[ eis]			fis4.-5~										|
  
  % bar 25
  fis16[-5 ais, b8]		cis16[ ais8]			dis16[-4 gis,8] 		ais16[-4 fis]-2			|
  b4.\finger "5_1"~							b16[ eis-3 gis]-5	eis[ b gis']				|
  a,[-1 cis-2 fis]		b,[ eis-3 gis] 		cis,[ fis-2 a]		d,[ 	gis-3 b]				|
  eis,[-1 b'-3 d8]		b16[-1 eis8]			d16[	-1 gis8]			eis16[-2 b']				|
  
  % bar 29
  ais[-4 cis, fis8]-3	gis16[ eis]			fis[ ais, fis']		fis[ ais32 gis fis16~]	|
  fis[-3 gis, fis'8]		gis16[-4 eis]		fis[	cis-1 ais]-3		fis8.-1					|
  
  
}

lower = \new Voice \relative c {
  \voiceTwo
  r4. 		    								fis16-4 ais cis    	ais fis   dis' 	|
  dis8.[-1 				cis]					b[-1					ais]			  	|
  gis[-3					fis]	-1				eis[					cis]				|
  fis[-4					gis]					ais[					bis]				|
  
  % bar 5
  cis[-2					gis]-4				ais[-2				eis]	-4			|
  fis[-3					gis]					cis,					r				|
  cis16-4 eis gis		eis cis ais'			ais8.[				gis]				|
  fis [-3				eis]	-1				dis[ 				cis]				|
  
  % bar 9
  b[-1					ais]					gis[					fis]				|
  eis[-5					dis']				cisis[				ais]				|
  dis[-1					fis]	-3				gis[					ais]				|
  dis,16[-4 fis ais]		fis[ dis bis']		bis4.~\trill\finger "2/1"			|
  
  % bar 13
  bis16[-1 dis-3 fis]	dis[ bis fis']		fis[ eis dis]		cis[ dis eis]	|
  ais,8.[-2				eis]					fis[	-2				cis]				|
  dis[-3					eis]					ais,-4				r				|
  dis16[-4 fisis ais]	fisis[ dis cis'] 	cis8.[				fisis,]			|
  
  % bar 17
  gis[-1					dis]					e[-1					b]				|
  cis[-2					dis]					gis,	-4				r				|
  cis16[-4 eis gis]		eis[ cis b'] 		b8.~					b16[ gis-4 b]	|
  eis[-1 gis-2 eis]		cis[ eis cis]	    fis,8.[-5			b]-1				|
  
  % bar 21
  bis[-2					cis]	-1				dis,[-3				cis]				|
  b[	-5					ais]-3				gis[					fis']-1			|
  eis[-2					cis]					fis[					ais,]-3			|
  b[-2					cis]-1				fis,16[-4 ais cis]	ais[ fis dis']	|
  
  % bar 25
  dis8.[-1				cis]					b[					ais]				|
  gis16[-4 b dis]		b[ gis eis']			cis,4.-5~							|
  cis8.[ 				cis']				cis,[				cis']			|
  cis,[-5				eis']				gis[	-3				cis]				|
  
  % bar 29
  fis,[-3				cis]					dis[	-1				ais]				|
  b[-2					cis]					fis,4.-5								|
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff <<
    \new Staff="up" \with {midiInstrument = #"harpsichord"}
    << \global \clef treble
       \upper 
     >>
    \new Staff="down" \with {midiInstrument = #"harpsichord"}
    << \global \clef treble
       \lower
     >>
  >>  
  \midi { \tempo 4=72 }
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
\score {
  \new PianoStaff << 
    \new Staff="up"
    << \global \clef treble
       \upper 
     >>
    \new Staff="down"
    << \global \clef bass
       \lower
     >>
  >>
  \layout { }
}

