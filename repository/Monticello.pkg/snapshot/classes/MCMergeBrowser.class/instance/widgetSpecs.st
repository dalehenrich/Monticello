
!MCMergeBrowser methodsFor: 'as yet unclassified'!
widgetSpecs
	Preferences annotationPanes ifFalse: [ ^#(
		((buttonRow) (0 0 1 0) (0 0 0 30))
		((listMorph:selection:menu: list selection methodListMenu:) (0 0 1 0.4) (0 30 0 0))
		((innerButtonRow) (0 0.4 1 0.4) (0 0 0 30))
		((textMorph: text) (0 0.4 1 1) (0 30 0 0))
		)].

	^ #(
		((buttonRow) (0 0 1 0) (0 0 0 30))
		((listMorph:selection:menu: list selection methodListMenu:) (0 0 1 0.4) (0 30 0 0))
		((innerButtonRow) (0 0.4 1 0.4) (0 0 0 30))
		((textMorph: annotations) (0 0.4 1 0.4) (0 30 0 60))
		((textMorph: text) (0 0.4 1 1) (0 60 0 0))
		)! !
