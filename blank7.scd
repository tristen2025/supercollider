"setup.scd".loadRelative;


// Shows what port SC is listening to:

Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, 1/2,

		\amp, 0.5,


));
)


Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(1)]),

		\amp, 0.5,


));
)






Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, 1/2,

		\amp, 0.5,


));
)




Pdef(\d).play(t);


(
Pdef(\d,
	Pbind(
		\instrument, "syn2",

		\dur, 1/2,

		\amp, 1.0,


));
)























	