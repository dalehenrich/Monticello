
!MCRepositoryTest methodsFor: 'tests'!
testLoadMissingNode
	| node |
	node _ MCVersionInfo new.
	self assertMissing: node! !
