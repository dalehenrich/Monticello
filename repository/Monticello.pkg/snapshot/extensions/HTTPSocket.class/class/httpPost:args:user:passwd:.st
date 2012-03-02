
!HTTPSocket class methodsFor: '*monticello'!
httpPost: url args: args user: user passwd: passwd
	| authorization |
	authorization _ (Base64MimeConverter mimeEncode: (user , ':' , passwd) readStream) contents.
	^self 
		httpPostDocument: url args: args accept: '*/*' 
		request: 'Authorization: Basic ' , authorization , CrLf! !
