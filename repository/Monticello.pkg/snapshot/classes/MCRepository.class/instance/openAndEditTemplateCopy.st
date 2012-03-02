
!MCRepository methodsFor: 'interface'!
openAndEditTemplateCopy
	^ self class fillInTheBlankConfigure: (self asCreationTemplate ifNil: [^nil])! !
