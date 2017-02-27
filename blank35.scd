"setup.scd".loadRelative;


Pdef(\a).trace.play();


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",
		\ffreq, Pseq([500,\rest,8000,\rest, 15000, \rest],inf), /// Pwhite(1, 4),

		// \ffreq, Pseq([500,5880,6000,9999],inf),
		// \ffreq, Pseq([5500,5880,6000,9999],inf),
		\dur, Pseq([0.25,Rest(0.25), 0.25,Rest(0.25)],inf)*4,
		\rel, Pwhite(0.1,0.5),
		\rel, Prand([0.1,\rest,Pwhite(0.5,1,1),\rest],inf),
		\rel, Pseq([
			Pseq([0.1, \whatever], 3),
			Pwhite(0.5, 1,1)
		], inf),

		\amp, 0.3,


));
)



Pbind(\degree, Pseq([0, 1, 2, 3], inf), \dur, Pseq([0.5, Rest(0.5)], inf), \amp, Pseq([\rest, \rest, 1, \rest], inf)).trace.play;