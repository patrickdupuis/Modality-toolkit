
OSCMktl : MKtl {
	classvar <protocol = \osc;
	classvar <sourceDeviceDict;

	*initOSC {
		sourceDeviceDict = ();
	}

	*postPossible{
		// should implement
	}

	// *newFromDesc { |name,deviceDescName,devDesc|
	// 	^super.new(;
	// 	}
	// 	// how to deal with additional arguments (uids...)?
	// 	*newFromDesc { |name, deviceDescName, devDesc|
	// 		//		var devDesc = this.getDeviceDescription( deviceDesc )
	// 		var devKey = this.findSource( devDesc[ thisProcess.platform.name ] );
	// 		this.sourceDeviceDict.swapKeys( name, devKey );
	// 		^this.new( name, devDescName: deviceDescName );
	// 	}

}