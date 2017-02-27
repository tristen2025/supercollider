"setup.scd".loadRelative;


Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)


Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(0.25),Rest(0.25),Rest(0.25)],inf),

		\amp, 0.5,


));
)








Pdef(\d).play(t);


(
Pdef(\d,
	Pbind(
		\instrument, "snare",

		\dur, Prand([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)




Pdef(\e ).play(t);


(
Pdef(\e,
	Pbind(
		\instrument, "clap",

		\dur, Prand([Rest(01.50),0.50].scramble,inf),

		\amp, 0.5,


));
)






Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "marimbal",
		\freq, Pwhite(100,150),
		\dur, Pseq([0.25,Rest(0.75)],inf),

		\amp, 0.5,


));
)






	