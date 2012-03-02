
!FilePackage methodsFor: 'reading'!
fileInFrom: aStream
	| chgRec changes |
	changes := (ChangeList new scanFile: aStream from: 1
to: aStream contents size) changeList.
	aStream close.
	1 to: changes size do:[:i|
		chgRec := changes at: i.
		self perform: (chgRec type asString copyWith: $:) asSymbol with: chgRec.
	].! !
