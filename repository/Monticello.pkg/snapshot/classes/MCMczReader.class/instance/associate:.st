
!MCMczReader methodsFor: 'as yet unclassified'!
associate: inputTokens
	| stack result tokens done ans |
	stack := Array new.
	ans := result := Dictionary new.
	tokens := inputTokens.
      done := false.
	[ done ]
 		whileFalse: [
			tokens pairsDo: [:key :value | | v |
				v := value.
				v isString
					ifTrue: [ result at: key put: v ]
					ifFalse: [ | col |
						col := v speciesForCollect new.
						result at: key put: col.
						v do: [:ea | | d |
							d := Dictionary new.
							col add: d.
							stack addLast: (Array with: d with: ea).
						].				
					]
				].
			stack isEmpty
				ifTrue: [ done := true ] 
				ifFalse: [ | a |
					a := stack removeLast.
					result := a at: 1.
					tokens := a at: 2.
				].
	].
	^ ans! !
