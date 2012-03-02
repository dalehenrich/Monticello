
!FilePackage methodsFor: 'change record types'!
doIt: chgRec
	| string |
	string := chgRec string.
	(string matchPattern: #($* 'ubclass:' $* 'instanceVariableNames:' $* 'classVariableNames:' $* 'poolDictionaries:' $* 'category:' $* ))
		ifTrue:[^self classDefinition: string with: chgRec].
	(string matchPattern: #($* ' class' $* 'instanceVariableNames:' $*))
		ifTrue:[^self metaClassDefinition: string with: chgRec].
	(string matchPattern: #($* ' comment:' $*))
	ifTrue:[^self msgClassComment: string with: chgRec].
	(string matchPattern: #($* ' initialize'))
		ifTrue:[^self]. "Initialization is done based on class>>initialize"
	doIts add: chgRec.! !
