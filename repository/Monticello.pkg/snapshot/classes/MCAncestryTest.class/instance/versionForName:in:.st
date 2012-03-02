
!MCAncestryTest methodsFor: 'building'!
versionForName: name in: tree
	(tree name = name) ifTrue: [^ tree].
	
	tree ancestors do: [:ea | (self versionForName: name in: ea) ifNotNilDo: [:v | ^ v]].
	
	^ nil! !
