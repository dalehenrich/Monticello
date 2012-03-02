
!MCToolWindowBuilder methodsFor: 'as yet unclassified'!
initializeWithBuilder: aBuilder tool: aTool
	builder _ aBuilder.
	tool _ aTool.
	window _ builder pluggableWindowSpec new.
	window children: OrderedCollection new.
	window label: tool label asString.
	window model: tool.
	window extent: tool defaultExtent.! !
