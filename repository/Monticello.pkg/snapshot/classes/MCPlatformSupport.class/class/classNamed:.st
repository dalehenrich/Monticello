
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
classNamed: className
	"className is either a class name or a class name followed by '
	class'. Answer the class or metaclass it names"
	| meta baseName baseClass |
	(className endsWith: ' class')
		ifTrue: [meta := true.
			baseName := className copyFrom: 1 to: className size - 6]
		ifFalse: [meta := false.
			baseName := className].
	baseClass := self
				smalltalkAt: baseName asSymbol
				ifAbsent: [^ nil].
	meta
		ifTrue: [^ baseClass class]
		ifFalse: [^ baseClass]! !
