
!String methodsFor: '*monticello'!
withSqueakLineEndingsNoFinalCR
	"Gemstone tacks a cr on the end of every method, so we'll strip it here"

	| str |
	str := self withSqueakLineEndings.
	(str at: str size) = Character cr
		ifTrue: [
		^str copyFrom: 1 to: str size - 1
	].
	^str! !
