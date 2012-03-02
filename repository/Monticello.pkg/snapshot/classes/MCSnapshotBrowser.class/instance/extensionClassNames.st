
!MCSnapshotBrowser methodsFor: 'class list'!
extensionClassNames
	^ (self allClassNames difference: self packageClassNames) asSortedCollection! !
