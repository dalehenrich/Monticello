
!MCSubDirectoryRepository methodsFor: 'as yet unclassified'!
findFullNameForWriting: aBaseName
	| possible split dirScore fileScore prefix fpattern parts now |
	split _ directory splitNameVersionExtensionFor: aBaseName.
	fpattern _ split first, '*'.
	possible _ SortedCollection sortBlock: [ :a :b |
		a first = b first
			ifTrue: [ a second = b second
					ifFalse: [ a second < b second ]
					ifTrue: [ a third fullName size < b third fullName size ]]
			ifFalse: [ a first > b first ] ].
	now _ Time totalSeconds.
	prefix _ directory pathParts size.
	self allDirectories do: [:dir |
		parts _ dir pathParts allButFirst: prefix.
		dirScore _ (parts select: [ :part | fpattern match: part ]) size.
		fileScore _ (dir entries collect: [ :ent |
			(ent isDirectory not and: [ fpattern match: ent name ])
				ifFalse: [ SmallInteger maxVal ]
				ifTrue: [ now - ent modificationTime ]]).	"minimum age"
		fileScore _ fileScore isEmpty ifTrue: [ SmallInteger maxVal  ]
			ifFalse: [ fileScore min ].
		possible add: { dirScore. fileScore. dir } ].
	^ (possible first third) fullNameFor: aBaseName! !
