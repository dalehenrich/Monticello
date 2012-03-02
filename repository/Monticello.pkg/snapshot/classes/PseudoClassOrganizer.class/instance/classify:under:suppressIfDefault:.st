
!PseudoClassOrganizer methodsFor: 'accessing'!
classify: element under: heading suppressIfDefault: aBoolean
	"Store the argument, element, in the category named heading.   If aBoolean is true, then invoke special logic such that the classification is NOT done if the new heading is the Default and the element already had a non-Default classification -- useful for filein"

	| catName catIndex elemIndex realHeading |
	(heading == nil)
		ifTrue: [realHeading := Default]
		ifFalse: [realHeading := heading asSymbol].
	(catName := self categoryOfElement: element) = realHeading
		ifTrue: [^ self].  "done if already under that category"

	catName ~~ nil ifTrue: 
		[(aBoolean and: [realHeading = Default])
				ifTrue: [^ self].	  "return if non-Default category already assigned in memory"
		self removeElement: element].	"remove if in another category"

	(categoryArray indexOf: realHeading) = 0 ifTrue: [self addCategory: realHeading].

	catIndex := categoryArray indexOf: realHeading.
	elemIndex := 
		catIndex > 1
			ifTrue: [categoryStops at: catIndex - 1]
			ifFalse: [0].
	[(elemIndex := elemIndex + 1) <= (categoryStops at: catIndex) 
		and: [element >= (elementArray at: elemIndex)]] whileTrue.

	"elemIndex is now the index for inserting the element. Do the insertion before it."
	elementArray := elementArray squeakCopyReplaceFrom: elemIndex to: elemIndex-1
						with: (Array with: element).

	"add one to stops for this and later categories"
	catIndex to: categoryArray size do: 
		[:i | categoryStops at: i put: (categoryStops at: i) + 1].

	(self listAtCategoryNamed: Default) size = 0 ifTrue: [self removeCategory: Default]! !
