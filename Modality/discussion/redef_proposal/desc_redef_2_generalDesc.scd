/*********

3 views of MKtlDesc files - xyz.desc.scd  :

1. redef_1 : an example for a simple desc file with sparse comments

2. redef_2 : the general desc items with detailed comments

3. redef_3 : the elementDesc in full detail

*********/

// 2. the general desc items with detailed comments

// ------ snip here ----

/* Example: AKAI LPD8 Laptop Pad controller */

(
/* deviceName: recommended
	user-readable name for the device or source
	recommended naming:
	MIDI - deviceName as registered by MIDI system
	HID  - <productName>_<vendorName>, as generated by HID
	OSC  - name of app or product.
		if device messages start with app-prefix, e.g. /gyrosc,
		use that as deviceName.
*/
deviceName: "LPD8",


/* protocol: required
	simple MKtls can only have a single protocol.
	Must be one of the supported MKtl protocols:
MKtlDevice.allProtocols.postcs;
MKtl.protocols;
-> [ 'hid', 'midi', 'osc' ]
*/
protocol: \midi,

/* deviceName: recommended
	user-readable name for the type of this device or source.
	Typically this is one of:
MKtl.deviceTypes.postcs;
->
*/
deviceType: \drumpad,


/* elementTypes: recommended
	user-readable collection of names of the elements
	this MKtl contains. Typically this is one of:
MKtl.elementTypes.postcs;
->
*/
elementTypes: [\pad, \knob], 	// several of MKtl.elementTypes


/* status: recommended
	user-readable text on how complete and how fully tested
	this desc/device is on different platforms (osx, linux, win)
MKtl.elementTypes.postcs;
->
*/
status: (
	osx: "complete, working",
	linux: "complete, untested",
	win: "unknown"
),

/*** autogenerated when reading in a desc file: ******/
/* filename: the file basename as found in some MKtDesc.folder */
filename: "akai-lpd8",
/* filepath: the full path to the file, e.g. */
filepath: "~/git/Modality-toolkit/Modality/MKtlDescriptions/akai-lpd8.desc.scd",




/* idInfo: this is technical info used to identify device */
// lots of different cases:

	// HID: idInfo is like deviceName, <productName>_<vendorName>,
	// as created by HID
idInfo: "Run'N' Drive Wireless_Thrustmaster",

	// MIDI idInfo for single port device - same as deviceName:
idInfo: "LPD8",

	// MIDI idInfo for multiport device:
// a dict with (deviceName: , sourcePortIndex: , destPortIndex)
idInfo: (deviceName: "QuNexus", sourcePortIndex: 0, destPortIndex: 0),
// in this case, we recommend also specifying the port name:
portName: "Port 1",


	// mostly MIDI - hardwareModes as in nanokontrol, QuNexus:
// if the device has hardware modes, please specify them:
hardwareModes:[\A, \B, \C, \D],

// if this desc refers to a single hardware mode/preset,
// please specify which one:
modeName: "Preset AB",


/* deviceInfo:  user-readable text info on the device */

	// user-readable text info on the device,
	// can have entries ad-lib - these are recommended:
deviceInfo: (
	vendorURI: "http://www.akaipro.com/product/lpd8",
	manualURI: "http://www.akaipro.com/product/lpd8#downloads",
	description: "a basic drumpad controller", // one line text
	features: [
		"8 velocity-sensitive pads",
		"8 knobs",
		"4 mode-switching buttons"
	],
	notes: "use only recommended hardware mode XYZ.",
),


/* specs: a dict of named specs for the elements in this desc/MKtl */
// should be an array of params, or a symbol only,
// to be created with .asSpec
specs: (
	'sevenSteps': [0, 6, \lin, 1, 0],
	'disorder': \bipolar // lookup in spec.specs
),


/* collectives: should move to elementsDesc */

/* elementsDesc: see desc_file_redef_3 ! */
elementsDesc: (
	elements: (
		shared: (elementType: \knob, midiMsgType: \control, midiChan: 0),
		kn: (
			1: (midiNum: 1),
			2: (midiNum: 2)
			// ...
		),
		pad: (
			// ..
		)
	)

),

/* specialMessages: a dict of special messages to send to the device */
// some devices can be configured by sending them messages,
// e.g. OSC messages to enable control of values and LEDs - see Manta,
// or sysex messages to activate LED control - see nanokontrol2

specialMessages: (
	hyperSpeed: [
		[\ledControlOn, [1, 2, 3]],
		[\abracadabra, [\r, \g, \b]]]
	],
	activateImprobabilityDrive: [
		[\setProb, 1e-42],
		[\startTime, \now]
	]
)

)