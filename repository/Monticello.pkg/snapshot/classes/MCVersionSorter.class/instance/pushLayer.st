
!MCVersionSorter methodsFor: 'as yet unclassified'!
pushLayer
	depthIndex _ depthIndex + 1.
	depthIndex > layers size ifTrue: [layers add: OrderedCollection new].! !
