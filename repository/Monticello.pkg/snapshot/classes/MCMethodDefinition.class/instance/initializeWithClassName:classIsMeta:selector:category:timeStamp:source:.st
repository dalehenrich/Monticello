
!MCMethodDefinition methodsFor: 'serializing'!
initializeWithClassName: classString
classIsMeta: metaBoolean
selector: selectorString
category: catString
timeStamp: timeString
source: sourceString
	className _ classString asSymbol.
	selector _ selectorString asSymbol.
	category _ catString asSymbol.
	timeStamp _ timeString.
	classIsMeta _ metaBoolean.
	source _ sourceString withSqueakLineEndings.
! !
