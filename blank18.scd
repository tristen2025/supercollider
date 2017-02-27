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

		\dur, Pseq([0.25,Rest(0.75)].scramble,inf),
		\dur, Prand([0.25,Rest(0.25),0.25,Rest(0.25)].scramble,inf),
		//\dur, 1,

		\amp, 1.00,


));
)


Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)].scramble,inf),
		\dur, Prand([0.25,Rest(0.25),Rest(0.25),Rest(0.25)],inf),
		//\dur, 0.25,


		\amp, 0.5,


));
)
Pdef(\d).play(t);


(
Pdef(\d,
	Pbind(
		\instrument, "clap",

		\dur,                 Prand([0.125,Rest(0.125),Rest(0.125),Rest(0.125),Rest(0.125),Rest(0.125),Rest(0.125),Rest(0.125)].scramble,inf),
		\dur, Pwrand([0.125,Rest(0.125)],[0.3,0.7],inf),

		\amp, 1,


));
)














	