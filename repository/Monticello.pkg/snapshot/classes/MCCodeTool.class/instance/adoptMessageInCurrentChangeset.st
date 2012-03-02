
!MCCodeTool methodsFor: 'menus'!
adoptMessageInCurrentChangeset
	"Add the receiver's method to the current change set if not already there"

	self selectedClassOrMetaClass ifNotNilDo: [ :cl |
		self selectedMessageName ifNotNilDo: [ :sel |
			ChangeSet current adoptSelector: sel forClass: cl.
			self changed: #annotations ]]
! !
