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
  \accidentalStyle modern-cautionary
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}
\include "articulate.ly"


clairnote-type = dn
% \include "include/clairnote.ly"


lhMark = \markup { 
  \path #0.1 #'((moveto -1 0)(rlineto 0 1.5)(rlineto 0.5 0))
}
rhMark = \markup { 
  \path #0.1 #'((moveto -1 0)(rlineto 0 -1.5)(rlineto 0.5 0))
}
                 
upper = \new Voice \relative c' {

    <gis'-2>16   ais b-1 cis 	dis b-1 ais gis  				fisis gis ais e-1              		\once \set fingeringOrientations=#'(left) <dis \finger"⸢"> r16 r8 				 		|
    r8 <gis b> 				\appoggiatura <gis b> <ais cis>4  		
                                                                                                      r8 <gis b> 				\appoggiatura <gis b> <fisis ais>4	|
  gis16_\markup {\italic "piano"} ais b cis 		
                                                   dis b ais gis  				fisis gis ais e              		dis r16 r8 				  		|
  r8 <b' gis'-4> 			\appoggiatura <b gis'> <cis ais'>4  		
                                                                                                      r8 <b gis'-5> 				\appoggiatura <b gis'> <ais fisis'>4	|
 
  % bar 5
  r8 <gis b-4>16_\markup {\italic "forte"} <fisis ais> 
                                                   <gis b>8 <b-1 gis'-5> 		r8 <gis b>8 				r8 << {ais16 gis} \\ eis8>> 		|
  r8 <fis ais-4>16 <eis gis> 	<fis ais>8 <ais-2 fis'-5> 		r8 <ais fis>8 				r8 << {gis16 fis} \\ dis8>> 		|
  r8 <cisis gis'-4>16 <dis fis> 	<eis-1 gis-4>8 <gis eis'>		 r8 <eis gis>8 				r8 << {fis16-4 eis} \\ cisis!8>> 		|
  <dis-2 fis-4>4			r16 ais'-4 gis fis			eis-1 dis-2 eis-1 gis 				fisis eis fisis ais |  
  
   % bar 9
   ais8-4 gis 				r16 fis-2 e dis-3 			cis bis cis e				dis cis dis fis-5			|
   fis8-5 e					r16 dis-3 cis b-1			\change Staff = "down"  \stemUp ais-3 gis  ais-4 cis 			
                                                                                                                                                       bis ais bis dis-5			|
   gis,-2 fisis gis b			ais gis ais cis				fisis, \change Staff = "up" e'-4 dis cis			
                                                                                                                                                       ais' cis, ais' cis,			|
   bis-1 a'-4 gis fis			dis' fis, dis' fis, 				eis d-3 cis b				gis' b, gis' b,			|
   
   % bar 13
   ais-2 g'-5 fis-3 e-1		cis' e, cis' e,-2				dis fis gis ais				b fis-2 eis-1 dis-2		|
   cisis b'ais-3 gis			eis' gis, eis' gis, 				fis ais dis eis				fis dis bis dis-3			|
   gisis, fis'-4 eis dis			bis' dis, bis' dis,				cisis dis eis ais				ais, r16 r8				|
   r16 cisis dis eis			fis32 eis dis16 <gis b>8		<gis b> <cisis,! ais'>			r4					|	
   
   %bar17
   r8 <dis fis>				\appoggiatura <dis fis> <eis gis>4
                                                                                                     r8 <dis fis>				\appoggiatura <dis fis> <cis eis>4	|
   r8 dis 					dis16\trill cisis dis8			r8 dis					cis16 b cis ais'			|
   
   <<
     {\voiceOne
       b,8 r8					cis r8					dis r8 					ais r8   				|
        r8 eis'16 dis			eis8	gis					cisis, eis					ais,4~				|
        
        %bar 21
        ais8 ais16 gis			ais8 fis'8					r8 dis					r8 bis				|
        r8 gis16 fis			gis8 eis'8					r8 cis					r8 ais				|
        r8 gisis				ais dis					r8 dis 					cisis b'				|
        ais4 					r16 ais eis gis				gis8 fisis					r4					|
     }
     \new Voice \relative c' {
       \voiceTwo 
        r8 dis				dis16 cisis dis8				r8 e32 dis cisis16				dis8 dis'			|
        gis,2~										gis8. fis16					eis dis eis cisis			|
        
        %bar 21
        dis8 fis16 eis			fis8 ais					r8 fis						r8 eis16 dis			|
        r8 eis16 dis			eis8	gis					r8 eis					r8 dis16 cisis			|
        r8 fis16 eis				fis dis  bis'8				r8 bis16 ais 				b gis gis'8~			|
        gis8 fis32 eis dis16		cisis4~					cisis8 dis					r4					\bar ":|." 


      %bar 25
      dis16 eis fisis gis			ais e-1 dis-3 cis			bis cis dis a-1				gis-3 fis e dis			|
      e-1 cis' e, cis'			eis, d' eis, d'				cis a-1 gis-3 fis				eis d'cis b				|
      ais b-1 cis dis 			e b a-4 gis				fisis gis ais e				dis-3 cis b ais-2		|
      b-1 gis'-4 b, gis'			bis,-1 a'-5 bis, a'			gis e-1 dis-3 cis			b a'-5 gis fis			|
      
      %bar 29
      eis fis gis a-1			b d cis b-1				ais-3 b cis g-3				fis e dis-3 cis			|
      dis e-1 fis gis			a-1 cis b ais				gis-3 ais b fis				e d-3 cis b			|
      cis8-2 <cis-1 a'-4>		\appoggiatura <cis a'> <d b'>4
                                                                                                     r8 <cis a'> 				\appoggiatura <cis a'> <b gis'>4 |
      r8 <a-1 fis'-3>16 <b-1 gis'-4>		
                                                  <cis a'>8 <gis'-2 cis-4> 		r8 <fisis-1 e'-5>			<gis dis'> <ais-2 cis-3>	|
                                                  
      %bar 33
      r8 <gis b>16 <fisis ais>	<gis b>8 <ais dis>			r8 <gisis-1 fis'-5>			<ais-2 eis'-5> <bis-3 dis-4> 	|
      <eis,-1 cisis'-5>16 b' ais gis	
                                                  eis' gis, eis' gis,				fisis e' dis cis				ais' cis, ais' cis,			|
      bis-1 a-3 gis fis			dis' fis,-2 dis' fis, 			eis d' cis b-1				gis' b, gis' b,-2			|
      ais cis dis eis			fis8 ais,-2					gisis fis'-5					e-5 gis,				|
      
      %bar 37
      fisis16-1 a bis cisis		dis8 fis,-2					eis d'						cis e,-1				|	
      dis16-2 fisis-1 gis-3 ais	b8 dis,					cisis-1 b'					ais cis,				|
      bis a'					gis b,-1					ais-2 gis'-5				fisis-5 a,-1			|
      gis-2 fis' 				eis <gis, e'>	 			<gis e'> <fisis dis'>			r4					|
     
     }
   >> \oneVoice
   
   
   
   
   
}

lower = \new Voice \relative c {

  <gis' b dis>4			r4 					<gis ais cis>				r16 cis b ais	 		|
  gis-5 dis' gis, dis'           	fisis,-5 dis' fisis, dis'           gis,-4 dis' gis, dis'      	 	dis,-5 dis' dis, dis'		  	|
  <gis, b dis>4		   	r4 					<gis ais cis> 				r16 cis b ais	 		|
  gis dis' gis, dis'           	fisis, dis' fisis, dis'           	gis, dis' gis, dis'      	 		dis, dis' dis, dis'		  	|
  
  % bar 5
  gis, dis' gis, dis'         	fis, dis' fis, dis'           	eis, cis' eis, cis'      	 		cis, cis' cis, cis'		  	|
  fis, cis' fis, cis'           	e, cis' e, cis'           		dis, b' dis, b'      	 		b, b' b, b'		  		|
  eis, b' eis, b'      	 	dis, b' dis, b'			cisis, ais' cisis, ais'			ais, ais' ais, ais'			|
  dis, fis gis ais			b8 dis,8				cisis b'					ais cis, 				|
  
  % bar 9
  bis16 dis eis fisis		gis8 b,				ais fisis'!					fis a,					|
  gis16 bis cis dis		e8 gis,				\stemDown fisis e'					dis fis,				|	
  eis d' 				cis e,					dis eis 					fisis dis				|
  \stemNeutral gis ais				bis gis				cis dis					eis cis				|
  
  %bar 13
  fis gis 				ais fis				b ais						gis fis				|
  eis gis				cisis, ais				dis cis 					bis ais				|
  bis dis				gisis, eis				ais' r8					\clef treble r16 gis' fis eis  |
  dis eis fis gis			ais fis eis dis			cisis dis eis b				\clef bass ais gis fis eis     |
  
  %bar 17
  dis ais' dis, ais'			cisis, ais' cisis, ais'		dis, ais' dis, ais'				ais, ais' ais, ais'			|
  b, fis' b, fis'			ais, fis' ais, fis'			b, fis' b, fis'				fisis, e' fisis, e'			|
  gis, dis' gis, dis'		fisis, dis' fisis, dis'		gis, dis' gis, dis'				fis, dis' fis, dis'			|
  eis, dis' cisis bis		cisis gis' eis gis			ais, ais' bis, ais'				cisis, ais' ais, gis'		|
  
  %bar 21
  dis fis dis fis			cis ais' cis, ais'			bis, gis' bis, gis'				gis, gis' gis, fis'			|
  cis eis cis eis			b gis' b, gis'			ais, fis' ais, fis' 				fis, fis' fis, eis'			|
  bis dis bis dis			ais fis' ais, fis' 			gisis, eis' gisis, eis'			eis, eis' eis, dis'			|
  cisis ais dis fis			ais8 ais, 				dis,8. fisis32 ais				dis4					|
  
  %bar 25
  r8 dis16-5 eis			fisis8 ais				dis cis 					bis gis-5				| 
  cis cis, 				b b'					a a,						gis gis'				|
  fis fis,				cis' e					ais,-4 cis-2				fisis,-5 dis'-2			|
  gis gis, 				fis fis'				e e,						dis dis'				|
  
  %bar 29
  cis8 cis,				r16 cis'' dis eis			fis8 fis,					r16 fis gis ais			|
  b8 b,				r16 b cis dis			e8 e,						r16 e fis gis			|
  a e' a, e'				gis, e' a, e'				a, e' a, e'					eis, d' eis, d'			|
  fis, cis' fis, cis'			e, cis' e, cis'			dis, fisis ais cis-1			b ais gis fisis-5			|
  
  %bar 33
  gis dis' gis, dis'		fis, dis' fis, dis'			eis, gisis bis dis-1			cis bis ais gisis-5		|
  ais8 bis				cisis ais-5				dis eis 					fisis dis-5				|
  gis ais				bis gis-5				cis dis					eis cis-4				|
  fis4-2				r16 eis-1 dis cis		bis ais bis dis				cisis bis cisis eis			|
  
  %bar 37
  eis8 dis				cis16-2 b-1 ais gis		gis fisis gis b				ais-3 gis ais cis			|
  cis8 b				r16 ais-1 gis fis			eis dis eis gis				fisis eis fisis ais			|
  dis,-3 cisis dis fis		e dis e gis				cisis,-4 bis cisis eis			dis cisis dis fis			|
  bis,-4 ais bis dis		cis bis cis e			ais, b cis b					cis fisis ais cis,			|
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
         	\set PianoStaff.midiInstrument = "harpsichord"
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

