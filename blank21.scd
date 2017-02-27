"setup.scd".loadRelative;


Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Prand([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)






Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(0.75)],inf),

		\amp, 0.75,


));Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "",

		\dur, 1/2,

		\amp, 0.5,


));
)


)
Pdef(\c).play(t);Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "",

		\dur, 1/2,

		\amp, 0.5,


));
)

(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Pseq([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)


Pdef(\e).play(t);


(
Pdef(\e,
	Pbind(
		\instrument, "clap",

		\dur, Pseq([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),,

		\amp, 0.5,


));
)
Pdef(\f).play(t);


(
Pdef(\f,
	Pbind(
		\instrument, "marimbal",

		\dur, 1/2,

		\amp, 0.5,


));
)








