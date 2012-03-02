
!MCScannerTest methodsFor: 'asserting'!
assertScans: anArray
	self assert: (MCScanner scan: anArray squeakPrintString readStream) = anArray! !
