
!MCPatchTest methodsFor: 'as yet unclassified'!
setUp
	|rev1 rev2|
	super setUp.
	self mockSnapshot. "so we have something to restore to"
	rev1 _  MCSnapshotResource takeSnapshot.
	self change: #one toReturn: 2.
	rev2 _  MCSnapshotResource takeSnapshot.
	patch _ rev2 patchRelativeToBase: rev1.
	self change: #one toReturn: 1.! !
