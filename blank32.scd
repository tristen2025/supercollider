"setup.scd".loadRelative;


Pdef(\a).play(t);Pdef(\a\.s

(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


)).play(t);

)
Pdef(\b).play(t);
Pdef(\b).stop;

(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(0.25),Rest(0.25),Rest(0.25)],inf),

		\amp, 0.5,


));
)

Pdef(\c).play(t);
Pdef(\c).stop;

(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Prand([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)


Pdef(\d).play(t);
Pdef(\d).stop;

(
Pdef(\d,
	Pbind(
		\instrument, "clap",

		\dur, Pseq([0.50,Rest(1.50)],inf),

		\amp, 0.5,


));
)


Pdef(\e).play(t);
Pdef(\e).stop;

(
Pdef(\e,
	Pbind(
		\instrument, "marimbal",
		\freq, Pwhite(100,150),
		\dur, Pseq([0.50,Rest(1.50)],inf),

		\amp, 0.5,


));
)







	