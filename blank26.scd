"setup.scd".loadRelative;

Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)


Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([Rest(0.25),0.25,Rest(0.25),Rest(0.25)],inf),

		\amp, 0.5,


));
)
Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "",

		\dur, 1/2,

		\amp, 0.5,


));
)







	