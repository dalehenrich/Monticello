
!MCTestCase methodsFor: 'mocks'!
mockVersionInfoWithAncestor: aVersionInfo 
	^ MCVersionInfo
		name: aVersionInfo name, '-child'
		id: UUID new
		message: self mockMessageString
		date: Date today
		time: Time now
		author: MCPlatformSupport authorInitials 
		ancestors: (Array with: aVersionInfo)! !
