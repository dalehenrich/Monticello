
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
packageList
	| result |
	result _ versions
		inject: Set new
		into: [ :set :each | set add: each first; yourself ].

	"sort loaded packages first, then alphabetically"
	result _ result asSortedCollection: [:a :b |
		| loadedA loadedB |
		loadedA _ loaded anySatisfy: [:each | (each copyUpToLast: $-) = a].
		loadedB _ loaded anySatisfy: [:each | (each copyUpToLast: $-) = b].
		loadedA = loadedB 
			ifTrue: [a < b]
			ifFalse: [loadedA]].

	^result collect: [:each | self packageHighlight: each]! !
