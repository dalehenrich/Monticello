
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
orderSpecs
	^{
		'unchanged' -> nil.
		'order by package' -> [ :x :y | x first <= y first ].
		'order by author' -> [ :x :y | x second <= y second ].
		'order by version-string' -> [ :x :y | x third <= y third ].
		'order by version-number' -> [ :x :y | x third asNumber >= y third asNumber ].
		'order by filename' -> [ :x :y | x fourth <= y fourth ].
	}! !
