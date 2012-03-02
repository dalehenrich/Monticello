
!ChangeList class methodsFor: '*monticello'!
recentLogOn: origChangesFile startingFrom: initialPos 
	"Prompt with a menu of how far back to go when browsing a changes file."

	| end banners positions pos chunk i changesFile |
	changesFile _ origChangesFile readOnlyCopy.
	banners _ OrderedCollection new.
	positions _ OrderedCollection new.
	end _ changesFile size.
	pos _ initialPos.
	[pos = 0
		or: [banners size > 20]]
		whileFalse: [changesFile position: pos.
			chunk _ changesFile nextChunk.
			i _ chunk indexOfSubCollection: 'priorSource: ' startingAt: 1.
			i > 0
				ifTrue: [positions addLast: pos.
					banners
						addLast: (chunk copyFrom: 5 to: i - 2).
					pos _ Number
								readFrom: (chunk copyFrom: i + 13 to: chunk size)]
				ifFalse: [pos _ 0]].
	changesFile close.
	banners size == 0 ifTrue: [^self recent: end on: origChangesFile].

	pos _ (SelectionMenu labelList: banners selections: positions)
				startUpWithCaption: 'Browse as far back as...'.
	pos == nil
		ifTrue: [^ self].
	^self recent: end - pos on: origChangesFile! !
