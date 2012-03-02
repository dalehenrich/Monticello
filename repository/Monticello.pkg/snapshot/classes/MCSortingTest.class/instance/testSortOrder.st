
!MCSortingTest methodsFor: 'tests'!
testSortOrder
	| aA aAm aB bA bB A B cA bAm cAm |
	aA _ self methodNamed: #a class: #A meta: false.
	bA _ self methodNamed: #b class: #A meta: false.
	cA _ self methodNamed: #c class: #A meta: false.
	aAm _ self methodNamed: #a class: #A meta: true.
	bAm _ self methodNamed: #b class: #A meta: true.
	cAm _ self methodNamed: #c class: #A meta: true.
	aB _ self methodNamed: #a class: #B meta: false.
	bB _ self methodNamed: #b class: #B meta: false.
	A _ self classNamed: #A.
	B _ self classNamed: #B.
	self assert: (self sortDefinitions: {aA. aAm. cAm. aB. bAm. bA. bB. A. cA. B})
					= {A. aAm. bAm. cAm. aA. bA. cA. B. aB.  bB}! !
