
!ChangeList methodsFor: 'initialize-release'!
initialize
	"Initialize a blank ChangeList.  Set the contentsSymbol to reflect whether diffs will initally be shown or not"

	contentsSymbol := #source.
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.! !
