//VMeter desc file

/*
MIDIMKtl.find;
k = MIDIMKtl('vmtr1300');
k.verbose_(true);
*/

(
deviceName: "VMeter 1.30 A",
protocol: \midi,
deviceType: \fader,
elementTypes: [\fader],
status: "unknown",

idInfo: "VMeter 1.30 A",

deviceInfo: (
	vendorURI: "http://www.vmeter.net/",
	// manualURI: "",
	// description: "",
	// features: [],
	// notes: "",

	// hasScribble: false
),
elementsDesc: (
	elements: (
		\sl: (elementType: \slider, 'midiMsgType': 'cc',
			'midiChan': 0, 'midiNum':  20,'spec': 'midiCC')
	)
)
)