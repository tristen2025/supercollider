"setup.scd".loadRelative;
//applause?


//fin...
Pdef(\a).play(t);
Pdef(\a).stop;
//frequency over 9000
(
Pdef(\a,
	Pbind(
		\instrument, "hihat",
		\rel, Pwhite(0.1,0.5),
		\ffreq, 9000,

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)//goodbye kick
Pdef(\b).play(t);
Pdef(\b).stop;

(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(0.75)],inf)*2,

		\amp, 0.75,


));
)



Pdef(\c).play(t);
Pdef(\c).stop;
//goodbye snare
(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Prand([Rest(0.25),0.25,Rest(0.25),Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)





//hi guys





//goodbye buf
Pdef(\buf).play(t);
Pdef(\buf).stop;
//hh hey this synth has a rate paramater
//lets try it
//well that was underwhelming
(
Pdef(\buf,
	Pbind(
		\instrument, "pla",
		\bufnum, Pwhite(1,15),
		\rate, 0.5,
		\dur, Prand([0.25,0.25,Rest(0.50)],inf),

		\amp, 0.85,


));
)



Pdef(\d).play(t);
Pdef(\d).stop;
//goodbye clap
(
Pdef(\d,
	Pbind(
		\instrument, "clap",

		\dur, Prand([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)








Pdef(\e).play(t);
Pdef(\e).stop;
//goodbye marimba
(
Pdef(\e,
	Pbind(
		\instrument, "marimbal",
		\freq, Pwhite(100,400),

		\dur, Prand([Rest(0.25),0.25,Rest(0.25),0.25],inf)*2,

		\amp, 0.5,


));
)








Pdef(\f).play(t);
Pdef(\f).stop;
//goodby tom
(
Pdef(\f,
	Pbind(
		\instrument, "tom1",

		\dur, Prand([Rest(0.25),0.25,Rest(0.25),0.25],inf)*2,

		\amp, 0.5,


));
)


//time so stop


//this beet makes me hungry
//It resonates with my stomach

//LITERALLY !!!!!!!!!!!!!!!!!!!

	