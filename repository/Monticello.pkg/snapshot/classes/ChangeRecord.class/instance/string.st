
!ChangeRecord methodsFor: 'accessing'!
string 
	| string |
	file position: position.
	string := file nextChunk.
	^ string! !
