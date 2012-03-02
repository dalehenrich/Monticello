
!MCMczWriter methodsFor: 'writing'!
addString: string at: path
	| member |
	member _ zip addString: string as: path.
	member desiredCompressionMethod: ZipArchive compressionDeflated 
	! !
