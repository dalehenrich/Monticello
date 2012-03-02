
!MCMethodDefinitionTest methodsFor: 'testing'!
testComparison
	|d1 d2 d3 d4 d5 |
	d1 _ self mockMethod: #one class: 'A' source: '1' meta: false.
	d2 _ self mockMethod: #one class: 'A' source: '2' meta: false.
	d3 _ self mockMethod: #one class: 'A' source: '1' meta: true.
	d4 _ self mockMethod: #two class: 'A' source: '1' meta: false.
	d5 _ self mockMethod: #two class: 'A' source: '1' meta: false.
	
	self assert: (d1 isRevisionOf: d2).
	self deny: (d1 isSameRevisionAs: d2).
	
	self deny: (d1 isRevisionOf: d3).
	self deny: (d1 isRevisionOf: d4).
	
	self assert: (d4 isSameRevisionAs: d5).! !
