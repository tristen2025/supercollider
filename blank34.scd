"setup.scd".loadRelative;


Pdef(\a).play(t);
Pdef(\a).stop;

(
Pdef(\a,
	Pbind(
		\instrument, "hihat",
		\ffreq, Pwhite(1000,10000),

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)


Pdef(\b).play(t);
Pdef(\b).stop;

(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Prand([0.25,Rest(0.25),Rest(0.25),Rest(0.25)],inf),

		\amp, 0.5,


));
)










Pdef(\c).play(t);
Pdef(\c).stop;

(
Pdef(\c,
	Pbind(
		\instrument, "snare",
		\freq, Pwhite(100,200),

		\dur, Pseq([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.75,


));
)




Pdef(\d).play(t);
Pdef(\d).stop;

(
Pdef(\d,
	Pbind(
		\instrument, "clap",
		\freq, Pwhite(200,600),

		\dur, Prand([0.50,Rest(1.50)],inf),

		\amp, 0.75,


));
)



Pdef(\e).play(t);
Pdef(\e).stop;

(
Pdef(\e,
	Pbind(
		\instrument, "marimbal",
		\freq,Pwhite(100,550),

		\dur, Pseq([0.25,Rest(0.75)],inf),

		\amp, 0.5,


));
)




//and here's where I start to lose Ideas


//I did say I didn't do much