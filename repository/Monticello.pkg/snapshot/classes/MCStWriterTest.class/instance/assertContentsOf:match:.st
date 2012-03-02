
!MCStWriterTest methodsFor: 'asserting'!
assertContentsOf: strm match: expected 
	| actual exp |
	actual := strm contents withSqueakLineEndings.
	exp := expected withSqueakLineEndings.
	self assert: actual size = exp size.
	actual with: exp do: [:a :e | self assert: a = e]! !
