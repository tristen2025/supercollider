OSCdef(
	key: \tempoReceiver,
	func: {arg msg;
		("Tempo:" + msg[1] + " bpm").postln;
		t = TempoClock.new(msg[1]/60).permanent_(true);
		"Metronome started!".postln;
	},
	path: '/tempo');

Buffer.freeAll;//put nin setup

// Path to samples folder
~folderPath = "/home/sclork/Desktop/supercolliderstuff/livecoding/DrumsHitsB";

~sam = Array.newClear(16);



(~folderPath ++ "/*.wav").pathMatch.do({ arg i, c; ~sam[c] = Buffer.read(s, i) });

//test
//~sam[7].play;

//~sam[0].play



// Now add the SynthDef (note that it will need to know numChannels of buffers)
SynthDef("pla", {arg bufnum = 0, rate = 1, amp = 0.5, gate = 1, loop = 0;
	var snd, env;
	env = EnvGen.ar(Env.asr(0.001, 1, 1), gate: gate, doneAction: 2);
	snd = PlayBuf.ar(
		numChannels: 2, // assuming all samples are same num of channels...
		bufnum: bufnum,
		rate: Lag.kr(rate),
		loop: loop);
	snd = snd * env * amp;
	snd = Mix.ar(snd);
	Out.ar(0, snd);
}).add;



SynthDef("hihat", {arg out = 0, amp = 0.5, att = 0.01, rel = 0.2, ffreq = 6000, pan = 0;
    var env, snd;
    env = Env.perc(att, rel, amp).kr(doneAction: 2);
    snd = WhiteNoise.ar;
    snd = HPF.ar(in: snd, freq: ffreq, mul: env);
    Out.ar(out, Pan2.ar(snd, pan));
}).add;

SynthDef("snare", {arg out = 0, amp = 0.1, sinfreq = 180, att = 0.01, rel = 0.2, ffreq = 2000, pan = 0;
    var env, snd1, snd2, sum;
    env = Env.perc(att, rel, amp).kr(doneAction: 2);
    snd1 = HPF.ar(
        in: WhiteNoise.ar,
        freq: ffreq,
        mul: env
    );
    snd2 = SinOsc.ar(freq: sinfreq, mul: env);
    sum = snd1 + snd2;
    Out.ar(out, Pan2.ar(sum, pan));
}).add;

SynthDef("tom1", {arg out = 0, amp = 0.1, sinfreq = 250, att = 0.01, rel = 0.2, ffreq = 2000, pan = 0;
    var env, snd1, snd2, sum;
    env = Env.perc(att, rel, amp).kr(doneAction: 2);
    snd1 = HPF.ar(
        in: WhiteNoise.ar,
        freq: ffreq,
        mul: env
    );
    snd2 = SinOsc.ar(freq: sinfreq, mul: env);
	sum = (snd1*0.1) + snd2;
    Out.ar(out, Pan2.ar(sum, pan));
}).add;


SynthDef("kick", {arg out = 0, amp = 0.3, sinfreq = 60, glissf = 0.9, att = 0.01, rel = 0.45, pan = 0;
    var env, snd, ramp;
    env = Env.perc(att, rel, amp).kr(doneAction: 2);
    ramp = XLine.kr(
        start: sinfreq,
        end: sinfreq * glissf,
        dur: rel
    );
    snd = SinOsc.ar(freq: ramp, mul: env);
    snd = Pan2.ar(snd, pan);
    Out.ar(out, snd);
}).add;

SynthDef("sawSynth", { arg freq = 440, amp = 0.1, att = 0.1, rel = 2, lofreq = 1000, hifreq = 3000;
    var env, snd;
    env = Env.perc(
		attackTime: att,
		releaseTime: rel,
		level: amp
	).kr(doneAction: 2);
    snd = Saw.ar(freq: freq * [0.99, 1, 1.001, 1.008], mul: env);
	snd = LPF.ar(
		in: snd,
		freq: LFNoise2.kr(1).range(lofreq, hifreq)
	);
    snd = Splay.ar(snd);
    Out.ar(0, snd);
}).add;
SynthDef(\syn1, { arg out, freq, sustain=1, amp=1, pan;
    var env = EnvGen.kr(Env.perc(0.01, sustain), 1, doneAction:2);
    Out.ar(out, Pan2.ar(SinOsc.ar(freq, 0.5pi, amp * env), pan));
}).add;

SynthDef(\syn2, { arg out, freq, sustain=1, amp=1, pan;
    var env = EnvGen.kr(Env.perc(0.01, sustain), 1, doneAction:2);
    Out.ar(out, Pan2.ar(LPF.ar(Saw.ar(freq, amp * env), 3000), pan));
}).add;

SynthDef(\clap, {
    |out = 0, amp = 0.5, pan = 0, dur = 1|
    var env1, env2, snd, noise1, noise2;

    // noise 1 - 4 short repeats
    env1 = EnvGen.ar(
        Env.new(
            [0, 1, 0, 0.9, 0, 0.7, 0, 0.5, 0],
            [0.001, 0.009, 0, 0.008, 0, 0.01, 0, 0.03],
            [0, -3, 0, -3, 0, -3, 0, -4]
        )
    );

    noise1 = WhiteNoise.ar(env1);
    noise1 = HPF.ar(noise1, 600);
    noise1 = LPF.ar(noise1, XLine.kr(7200, 4000, 0.03));
    noise1 = BPF.ar(noise1, 1620, 3);

    // noise 2 - 1 longer single
    env2 = EnvGen.ar(Env.new([0, 1, 0], [0.02, 0.18], [0, -4]), doneAction:2);

    noise2 = WhiteNoise.ar(env2);
    noise2 = HPF.ar(noise2, 1000);
    noise2 = LPF.ar(noise2, 7600);
    noise2 = BPF.ar(noise2, 1230, 0.7, 0.7);

    snd = noise1 + noise2;
    snd = snd * 2;
    snd = snd.softclip;

    Out.ar(out, Pan2.ar(snd,pan,amp));
}).add;
SynthDef("marimbal", {arg freq = 440, amp = 0.4;
	var snd, env;
	env = Env.linen(0.015, 1, 0.5, amp).kr(doneAction: 2);
	snd = BPF.ar(Saw.ar(0), freq, 0.02);
	snd = BLowShelf.ar(snd, 220, 0.81, 6);
	snd = snd * env;
	Out.ar(0, Splay.ar(snd));
}).add;
