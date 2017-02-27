"synthlist.scd".loadRelative;



Pdef(\a).play(t);


(
Pdef(\a,
	Pbind(
		\instrument, "hihat",

		\dur, Pseq([0.25,0.25,Rest(0.25)],inf),

		\amp, 0.5,


));
)

"synthlist.scd".loadRelative;


// Shows what port SC is listening to:
NetAddr.langPort;

(
OSCdef(
	key: tempoReceiver,
	func: {arg msg;
		("Tempo:" + msg[1] + " bpm").postln;
		t = TempoClock.new(msg[1]/60).permanent_(true);
		"Metronome started!".postln;
	},
	path: '/tempo')
)




