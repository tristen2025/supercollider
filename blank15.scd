"setup.scd".loadRelative;

Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, 1,

		\amp, 0.5,


));
)




Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(1.75), 1, Rest(0.5), 0.25, 0.25],inf),
				\dur, Pseq([0.25,Rest(1.75), 1, Rest(0.5), 0.25, 0.125,0.125],inf),
		\dur, Pseq([Rest(0.125),0.125,0.25,Rest(0.25),0.25],inf),
		\dur, Pseq([Rest(0.125),0.125,Rest(0.25),0.25,Rest(0.125),0.125],inf),


		\amp, 0.75,


));
)



Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Pseq([Rest(0.25),0.25,0.25,Rest(0.25),0.125,0.125,Rest(0.75)],inf),
		\dur, Pseq([Rest(0.25),0.5,Rest(0.25)],inf),
		//\dur, 0.125,

		\amp, 0.3,


));
)

















	