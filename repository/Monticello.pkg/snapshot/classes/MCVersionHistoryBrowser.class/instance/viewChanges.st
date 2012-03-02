
!MCVersionHistoryBrowser methodsFor: 'morphic ui'!
viewChanges
	"Note that the patchLabel will be parsed in MCPatchBrowser>>installSelection, so don't translate it!!"
	| patch patchLabel |
	patchLabel _ 'changes between {1} and {2}' format: { self selectedInfo name. ancestry name }.
	patch _ self baseSnapshot patchRelativeToBase: self selectedSnapshot.
	(MCPatchBrowser forPatch: patch) label: patchLabel; show! !
