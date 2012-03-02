
!MCVersionSorter methodsFor: 'as yet unclassified'!
sortedVersionInfos
	layers _ OrderedCollection with: OrderedCollection new.
	depthIndex _ 1.
	depths _ Dictionary new.
	roots do: [:ea | self processVersionInfo: ea].
	^ layers gather: [:ea | ea]! !
