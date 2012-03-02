
!MCMethodDefinition methodsFor: 'comparing'!
hash
	| hash |
	hash _ String stringHash: classIsMeta asString initialHash: 0.
	hash _ String stringHash: source initialHash: hash.
	hash _ String stringHash: category initialHash: hash.
	hash _ String stringHash: className initialHash: hash.
	^ hash! !
