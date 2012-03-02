
!Behavior methodsFor: '*monticello'!
recompile: aSelector

	SystemChangeNotifier uniqueInstance doSilently: [ self _recompile: aSelector ]! !
