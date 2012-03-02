
!MCCodeTool methodsFor: 'menus'!
methodListMenu: aMenu
	"Build the menu for the selected method, if any."
	
	self selectedMessageName ifNotNil: [
	aMenu addList:#(
			('browse full (b)' 						browseMethodFull)
			('browse hierarchy (h)'					classHierarchy)
			('browse method (O)'					openSingleMessageBrowser)
			('browse protocol (p)'					browseFullProtocol)
			-
			('fileOut (o)'							fileOutMessage)
			('printOut'								printOutMessage)
			('copy selector (c)'						copySelector)).
		aMenu addList: #(
			-
			('browse senders (n)'						browseSendersOfMessages)
			('browse implementors (m)'					browseMessages)
			('inheritance (i)'						methodHierarchy)
			('versions (v)'							browseVersions)
		('change sets with this method'			findMethodInChangeSets)
"		('x revert to previous version'				revertToPreviousVersion)"
		('remove from current change set'		removeFromCurrentChanges)
"		('x revert & remove from changes'		revertAndForget)"
		('add to current change set'				adoptMessageInCurrentChangeset)
"		('x copy up or copy down...'				copyUpOrCopyDown)"
"		('x remove method (x)'					removeMessage)"
		"-"
		).
	].
"	aMenu addList: #(
			('x inst var refs...'						browseInstVarRefs)
			('x inst var defs...'						browseInstVarDefs)
			('x class var refs...'						browseClassVarRefs)
			('x class variables'						browseClassVariables)
			('x class refs (N)'							browseClassRefs)
	).
"
	^ aMenu
! !
