
!MCHttpRepository methodsFor: 'required'!
writeStreamForFileNamed: aString replace: ignoreBoolean do: aBlock
	| stream response |
	stream _ RWBinaryOrTextStream on: String new.
	aBlock value: stream.
	response _ HTTPSocket
					httpPut: stream contents
					to: (self urlForFileNamed: aString)
					user: self user
					passwd: self password.

	(#( 'HTTP/1.1 201 ' 'HTTP/1.1 200 ' 'HTTP/1.0 201 ' 'HTTP/1.0 200 ')
		anySatisfy: [:code | response beginsWith: code ])
			ifFalse: [self error: response].! !
