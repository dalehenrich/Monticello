
!MCPackageManager methodsFor: 'system changes'!
update: aSymbol
	InMidstOfFileinNotification signal ifFalse: [
	[((aSymbol = #recentMethodSubmissions)
		and: [self packageInfo
				includesMethodReference: MCPlatformSupport recentMethodSubmissions last])
					ifTrue: [self modified: true]]
		on: Error do: []]! !
