
!MCPatchBrowser methodsFor: 'morphic ui'!
widgetSpecs
	Preferences annotationPanes ifFalse: [ ^#(
		((listMorph:selection:menu: list selection methodListMenu:) (0 0 1 0.4) (0 0 0 0))
		((textMorph: text) (0 0.4 1 1))
		) ].

	^ {
		#((listMorph:selection:menu: list selection methodListMenu: ) (0 0 1 0.4) (0 0 0 0)).
		{ #(textMorph: annotations). #(0 0.4 1 0.4). { 0. 0. 0. self defaultAnnotationPaneHeight. } }.
		{ #(textMorph: text). #(0 0.4 1 1). { 0. self defaultAnnotationPaneHeight. 0. 0. } }.
		}! !
