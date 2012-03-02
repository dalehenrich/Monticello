
!MCHttpRepository methodsFor: 'as yet unclassified'!
parseFileNamesFromStream: aStream
	| names fullName |
	names _ OrderedCollection new.
	[aStream atEnd] whileFalse:
		[[aStream upTo: $<. {$a. $A. nil} includes: aStream next] whileFalse.
		aStream upTo: $".
		aStream atEnd ifFalse: [
			fullName _ aStream upTo: $".
			names add: fullName unescapePercents]].
	^ names! !
