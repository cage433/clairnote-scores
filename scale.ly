% This was adapted from an open score version, created by Kyle Rother, found at https://imslp.org/wiki/Special:ImagefromIndex/497249/torat
% Kyle's score came with the following header
%
%		This edition was prepared and typeset by Kyle Rother using the 1866 Breitkopf & Härtel Bach-Gesellschaft Ausgabe as primary source. 
%		Reference was made to both the Henle and Bärenreiter urtext editions, as well as the critical and scholarly commentary of Alfred Dürr, however the final expression is in all cases that of the composer or present editor.
%		This edition is in the public domain, and the editor does not claim any rights in the content.
%
% My amendments are minor, and consist of changing the header to match Mutopia style, adding a midi section, and converting from an open to a standard piano score
% This edition is in the public domain, and the editor does not claim any rights in the content.

\version "2.22.1"

\header {
  title = "Scale"
}


global = {
  \key c \major
  \time 4/4
  \accidentalStyle modern-cautionary
}
\include "articulate.ly"

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f

}
clairnote-type = dn
\include "include/clairnote.ly"

soprano = \new Voice \relative c'' {
  \global
  \voiceOne
  
c'1 b bes a gis g fis f e ees d cis
c1 b bes a gis g fis f e ees d cis c b

}


bass = \new Voice \relative c {
  \global
  \voiceTwo
  c,1 cis d ees e f fis g gis a bes b 
  c cis d ees e f fis g gis a bes b c cis
   
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff <<
    \new Staff="up" \with {midiInstrument = #"harpsichord"}
    << \global \clef treble \soprano    >>
    \new Staff="down" \with {midiInstrument = #"harpsichord"}
    << \global \clef bass   \bass    >>
  >>  
  \midi { \tempo 4=72 }
  
}


\score {
  \new PianoStaff 
  <<
    \new Staff = "up" 
      <<\soprano >>
    
    \new Staff = "down" 
      { \clef bass \bass }
      
  >>
  
  \layout { }

}
