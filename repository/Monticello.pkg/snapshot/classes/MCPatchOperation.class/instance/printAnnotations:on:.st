
!MCPatchOperation methodsFor: 'accessing'!
printAnnotations: requests on: aStream
	"Add a string for an annotation pane, trying to fulfill the annotation requests.
	These might include anything that
		Preferences defaultAnnotationRequests 
	might return. Which includes anything in
		Preferences annotationInfo
	To edit these, use:"
	"Preferences editAnnotations"

	self definition printAnnotations: requests on: aStream.! !
