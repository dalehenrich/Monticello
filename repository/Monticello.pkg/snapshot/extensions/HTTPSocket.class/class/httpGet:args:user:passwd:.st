
!HTTPSocket class methodsFor: '*monticello'!
httpGet: url args: args user: user passwd: passwd
	| authorization |
	authorization _ (Base64MimeConverter mimeEncode: (user , ':' , passwd) readStream) contents.
	^self 
		httpGet: url args: args accept: '*/*' 
		request: 'Authorization: Basic ' , authorization , CrLf! !
