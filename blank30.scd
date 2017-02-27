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
Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Pseq([Rest(0.25),Rest(0.25),Rest(0.25),0.25],inf),

		\amp, 0.5,


));
)
Pdef(\d).play(t);


(
Pdef(\d,
	Pbind(
		\instrument, "clap",

		\dur, Pseq([0.50,Rest(1.50)],inf),

		\amp, 0.5,


));
)

Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "",

		\dur, 1/2,

		\amp, 0.5,


));
)






	