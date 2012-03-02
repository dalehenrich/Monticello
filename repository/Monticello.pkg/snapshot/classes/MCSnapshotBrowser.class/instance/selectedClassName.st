
!MCSnapshotBrowser methodsFor: 'class list'!
selectedClassName
	| aClassList |
	(classListIndex = 0 or: [classListIndex > (aClassList := self classNames) size]) ifTrue: [^ nil].
	^ aClassList at: classListIndex! !
