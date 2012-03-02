
!MCVersionInfoWriter methodsFor: 'private'!
processStackEntry: action for: queue

	| versionInfo |
	action == #endChildren ifTrue: [ ^ stream nextPutAll: '))' ].
	action == #beginChildren ifTrue: [ ^ stream nextPutAll: 'stepChildren (' ].
	action == #endAncestors ifTrue: [ ^ stream nextPutAll: ') ' ].
	action == #beginAncestors ifTrue: [ ^ stream nextPutAll: 'ancestors (' ].
	"at this point we have a versionInfo"
	versionInfo := action.
	(self isWritten: versionInfo)
		ifTrue: [ ^stream nextPutAll: '(id ', versionInfo id asString printString, ')' ].
	stream nextPut: $(.
	#(name message id date time author) 
		do: [:sel | 
			stream nextPutAll: sel.
			stream nextPut: $ .
			((versionInfo perform: sel) ifNil: ['']) asString printOn: stream.
			stream nextPut: $ ].
	queue add: #endChildren.
	queue addAll: versionInfo stepChildren reversed.
	queue add: #beginChildren.
	queue add: #endAncestors.
	queue addAll: versionInfo ancestors reversed.
	queue add: #beginAncestors.
	self wrote: versionInfo.! !
