
!MCPackageManager methodsFor: 'accessing'!
modified: aBoolean
     modified = aBoolean ifTrue: [^ self].
	modified _ aBoolean.
	self changed: #modified.
	
	modified ifFalse:
		[(((Smalltalk classNamed: 'SmalltalkImage') ifNotNilDo: [:si | si current]) ifNil: [Smalltalk])
			logChange: '"', self packageName, '"'].! !
