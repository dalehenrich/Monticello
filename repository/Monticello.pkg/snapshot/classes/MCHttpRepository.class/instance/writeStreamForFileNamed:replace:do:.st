
!MCHttpRepository methodsFor: 'required'!
writeStreamForFileNamed: aString replace: ignoreBoolean do: aBlock 
	| response |
	response := MCPlatformSupport
				writeStreamForFileNamed: (self urlForFileNamed: aString)
				user: user
				passwd: password
				replace: ignoreBoolean
				do: aBlock.
	(#('HTTP/1.1 201 ' 'HTTP/1.1 200 ' 'HTTP/1.0 201 ' 'HTTP/1.0 200 ' )
			anySatisfy: [:code | response beginsWith: code])
		ifFalse: [ 
			(self confirm: 'Error saving ', aString printString, ' to ', self description printString, '.', String cr, 'Try again with new userName and password? ')
			ifTrue: [ | newPass |
			newPass := self promptForUserNamePassword.
			newPass ~= password
				ifTrue: [
					self password: newPass.
					^self writeStreamForFileNamed: aString replace: ignoreBoolean do: aBlock ]]
			ifFalse: [self error: 'Error saving ', aString printString, ' to repository: ', String cr, response]]! !
