
!MCPlatformSupport classSide methodsFor: 'http'!
readStreamForUrl: url user: user passwd: password do: aBlock
	| contents |
	contents _ HTTPSocket httpGet: url args: nil user: user passwd: password.
	^ contents isString
		ifTrue: [ nil ] 
		ifFalse: [aBlock value: contents]! !
