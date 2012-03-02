
!MCMergeResolutionRequest methodsFor: 'as yet unclassified'!
defaultAction
	^ (MCMergeBrowser new
		merger: merger;
		label: messageText) showModally! !
