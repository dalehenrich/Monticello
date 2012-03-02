
!Class methodsFor: '*monticello'!
poolDictionaryNames
| ar anArray |
ar := Array new.
self sharedPools do: [:each |
  anArray := System myUserProfile dictionaryAndSymbolOf: each.
  anArray == nil
        ifTrue: [ | d |
            (d := System myUserProfile objectNamed: each name) ~~ nil 
			ifTrue: [ 
				((d isKindOf: Class) and: [d isSubclassOf: SharedPool])
					ifTrue: [ ar add: each name  ]
					ifFalse: [ ar add: ' "(not named)" ' ]
			]
			ifFalse: [ar add: ' "(not named)" ' ]
        ]
        ifFalse: [ ar add: (anArray at: 2)].
].
^ar! !
