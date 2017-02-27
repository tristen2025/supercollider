"setup.scd".loadRelative;


Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, 1/2,

		\amp, 0.5,

Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

	    \dur, Pseq([0.25,Rest(1),0.25],inf),

		\amp, 0.5,


));
Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument,"snare",

		\dur, 1/2,

		\amp, 0.5,


));
)




Pdef(\d).play(t);


(
Pdef(\d,
	Pbind(
		\instrument, "syn2",
		\dur,0.25,
		\midinote, Pseq([55,67,89],inf),

		\amp, 0.5,


));
)


Pdef(\e).play(t);


(
Pdef(\e,
	Pbind(
		\instrument, "syn1",

		\dur, 1/2,

		\amp, 0.5,


));
)











	