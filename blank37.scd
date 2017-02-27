"setup.scd".loadRelative;


Pdef(\t).play(t);


(
Pdef(\t,
	Pbind(
		\instrument, "tom1",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)


Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)















Pdef(\t).play(t);


(
Pdef(\t,
	Pbind(
		\instrument, "tom1",

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf)*2,

		\amp, 0.5,


));
)









Pdef(\b).play(t);


(
Pdef(\b,
	Pbind(
		\instrument, "kick",

		\dur, Pseq([0.25,Rest(0.75)],inf)*2,

		\amp, 0.55,


));
)






Pdef(\c).play(t);


(
Pdef(\c,
	Pbind(
		\instrument, "snare",

		\dur, Pseq([Rest(0.25),Rest(0.25),0.25,Rest(0.25)],inf),
		// \dur, 0.125,

		\amp, 0.5,


));
)




Pdef(\pla).play(t);


(
Pdef(\pla,
	Pbind(
		\instrument, "pla",
		\bufnum, Pwhite(1,15),

		\dur, Pseq([0.25,Rest(0.25),0.25,Rest(0.25)],inf),

		\amp, 0.55,


));
)







	