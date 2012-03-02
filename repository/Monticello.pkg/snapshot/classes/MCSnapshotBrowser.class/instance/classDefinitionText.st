
!MCSnapshotBrowser methodsFor: 'class functions'!
classDefinitionText
	"return the text to display for the definition of the currently selected class"
	| theClassDef |
	theClassDef := self selectedClassDefinition.
	theClassDef ifNil: [ ^''].
	^theClassDef definitionString! !
