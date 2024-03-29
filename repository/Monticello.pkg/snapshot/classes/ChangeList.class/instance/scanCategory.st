
!ChangeList methodsFor: 'scanning'!
scanCategory  
	"Scan anything that involves more than one chunk; method name is historical only"

	| itemPosition item tokens stamp isComment anIndex |
	itemPosition := file position.
	item := file nextChunk.

	isComment := (item includesSubString: 'commentStamp:').
	(isComment or: [item includesSubString: 'methodsFor:']) ifFalse:
		["Maybe a preamble, but not one we recognize; bail out with the preamble trick"
		^ self addItem: (ChangeRecord new file: file position: itemPosition type: #preamble)
				 text: ('preamble: ' , item contractTo: 50)].

	tokens := Scanner new scanTokens: item.
	tokens size >= 3 ifTrue:
		[stamp := ''.
		anIndex := tokens indexOf: #stamp: ifAbsent: [nil].
		anIndex ifNotNil: [stamp := tokens at: (anIndex + 1)].

		tokens second == #methodsFor:
			ifTrue: [^ self scanCategory: tokens third class: tokens first
							meta: false stamp: stamp].
		tokens third == #methodsFor:
			ifTrue: [^ self scanCategory: tokens fourth class: tokens first
							meta: true stamp: stamp]].

		tokens second == #commentStamp:
			ifTrue:
				[stamp := tokens third.
				self addItem:
						(ChangeRecord new file: file position: file position type: #classComment
										class: tokens first category: nil meta: false stamp: stamp)
						text: 'class comment for ' , tokens first, 
							  (stamp isEmpty ifTrue: [''] ifFalse: ['; ' , stamp]).
				file nextChunk.
				^ file]! !
