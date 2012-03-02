
!MCClassDefinitionTest class methodsFor: 'as yet unclassified'!
restoreClassAComment
	Smalltalk 
		at: #MCMockClassA 
		ifPresent: [:a | a classComment: self classAComment stamp: self classACommentStamp]! !
