\version "2.20.0"

\header {
  title = "Prelude 18"
  composer = "Johann Sebastian Bach"
  opus = "BWV 887"
  mutopiatitle = "Well-Tempered Clavier II, Prelude 18"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  maintainer = "Alex McGuire"
  maintainerEmail = "cage433@gmail.com"
  version = "2.22.1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  tagline = ##f
}

global = {
  \key gis \minor
  \time 4/4
  \accidentalStyle default
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}
\include "articulate.ly"

clairnote-type = dn
%\include "include/clairnote.ly"

                 
upper = \new Voice \relative c' {
  
  gis'16 ais b cis 		dis b ais gis  		fisis gis ais eis              dis r16 r8 				    |
 r8 <gis b> \appoggiatura <gis b> <ais cis>4  		r8  	<gis b> \appoggiatura <gis b> <fisis ais>4			|
   gis16_\markup {\italic "piano"} ais b cis 		dis b ais gis  		fisis gis ais eis              dis r16 r8 				    |
  r8 <b' gis'> \appoggiatura <b gis'> <cis ais'>4  		r8  	<b gis'> \appoggiatura <b gis'> <cis ais'>4			|
 
  % bar 5
  r8 <gis b>16_\markup {\italic "forte"} <fisis ais> <gis b>8 <b gis'> r8 <gis b>8 r8 << {ais16 gis} \\ eis8>> |
  r8 <fis ais>16 <eis gis> <gis b>8 <ais fis'> r8 <ais fis>8 r8 << {gis16 fis} \\ dis8>> |
  r8 <cisis gis'>16 <dis fis> <eis gis>8 <gis eis'> r8 <eis gis>8 r8 << {fis16 eis} \\ cisis!8>> |
  <dis fis>4		r16 ais' gis fis		eis dis eis gis 		fisis eis fisis ais |  
  
   % bar 9
   ais8 gis 				r16 fis e dis 			cis bis cis e				dis cis dis fis			|
   fis8 e				r16 dis cis b			ais gis ais cis 				bis ais bis dis			|
   gis, fisis gis b			ais gis ais cis			fisis, e' dis cis				ais' cis, ais' cis,			|
   dis a' gis fis			dis' fis, dis' fis, 			eis d cis b					gis' b, gis' b,			|
   
   % bar 13
   ais g' fis e			cis' e, cis' e,			dis fis gis ais				b fis eis dis			|
   cisis b'ais gis			eis' gis, eis' gis, 			fis ais dis eis				fis dis bis dis			|
   gisis, fis' eis dis		bis' dis, bis' dis,			cisis dis eis ais				ais, r16 r8				|
   r16 cisis dis eis		fis32 eis dis16 <gis b>8	<gis b> <cisis,! ais'>			r4					|					
   
}

lower = \new Voice \relative c {
  <gis' b dis>4		   	r4 					<gis ais cis>				 r16 cis b ais	 		|
  gis dis' gis, dis'           	fisis, dis' fisis, dis'           	gis, dis' gis, dis'      	 		dis, dis' dis, dis'		  	|
  <gis, b dis>4		   	r4 					<gis ais cis> 				r16 cis b ais	 		|
  gis dis' gis, dis'           	fisis, dis' fisis, dis'           	gis, dis' gis, dis'      	 		dis, dis' dis, dis'		  	|
  
  % bar 5
  gis, dis' gis, dis'         	fis, dis' fis, dis'           	eis, cis' eis, cis'      	 		cis, cis' cis, cis'		  	|
  fis, cis' fis, cis'           	eis, cis' eis, cis'           	dis, b' dis, b'      	 		b, b' b, b'		  		|
  eis, b' eis, b'      	 	dis, b' dis, b'			cisis, ais' cisis, ais'			ais, ais' ais, ais'			|
  dis, fis gis ais			b8 dis,8				ais fisis'					fis a, 				|
  
  % bar 9
  bis16 dis eis fisis		gis8 b,				ais fisis'!					fis a,					|
  gis16 bis cis dis		e8 gis,				fisis e'					dis fis,				|	
  eis d' 				cis e,					dis eis 					fisis dis				|
  gis ais				bis gis				cis dis					eis cis				|
  
  %bar 13
  fis gis 				ais fis				b ais						gis fis				|
  eis gis				cisis, ais				dis cis 					bis ais				|
  bis dis				gisis, eis				ais' r8					\clef treble r16 gis' fis eis  |
  dis eis fis gis			ais fis eis dis			cisis dis eis gis,				\clef bass ais gis fis eis     |
  
}

themeDynamics = {
    s2 \f s2 |
    s1 |
    s2. \< s4 \! |
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff <<
    \new Staff="up" 
    << \global \clef treble
       \upper 
     >>
      \new Dynamics {s1\<| }
    \new Staff="down" 
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

