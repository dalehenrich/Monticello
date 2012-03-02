
!MCVersionSorter methodsFor: 'as yet unclassified'!
registerStepChildrenOf: aVersionInfo seen: aSet
	| registerBlock queue |
	registerBlock := [:vi :q | 
		(aSet includes: vi) 
			ifFalse: [
				aSet add: vi.
				vi stepChildren do: [:ea | (self stepParentsOf: ea) add: vi].
				q addAll: vi ancestors.
			].
		].
	queue := OrderedCollection with: aVersionInfo.
	[ queue isEmpty ] 
		whileFalse: [ 
			registerBlock value: queue removeFirst value: queue.
		].! !
