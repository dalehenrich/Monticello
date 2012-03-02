
!MCMczReader methodsFor: 'as yet unclassified'!
associate: tokens
	| result |
	result _ Dictionary new.
	tokens pairsDo: [:key :value | 
					value isString ifFalse: [value _ value collect: [:ea | self associate: ea]].
					result at: key put: value].
	^ result! !
