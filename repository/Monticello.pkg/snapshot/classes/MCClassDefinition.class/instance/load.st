
!MCClassDefinition methodsFor: 'installing'!
load
	| cl |
	(cl := self createClass) ~~ nil 
		ifTrue: [ self hasComment  
			ifTrue: [ SystemChangeNotifier uniqueInstance doSilently: [ cl classComment: comment stamp: commentStamp ]]]
		ifFalse: [ Error signal: 'Could not create class ', self className printString, 'as subclass of ', self superclassName printString ]! !
