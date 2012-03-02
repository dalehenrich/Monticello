
!Behavior methodsFor: '*monticello'!
removeInstVarName: aString
	"This is used by Magritte, but MCClassDefinition does so much of this so nicely, that I will
	 cheat for a bit"
	
	SafelyPerformBlockRequiringAbort new
		signal: [:abortPerformed | |  def ivs newClass sel |
			abortPerformed ifFalse: [ ^self error: 'Could not migrate instances' ].
			def := self thisClass asUncachedClassDefinition.
			ivs := def variables.
			sel := self isMeta
				ifTrue: [ #isClassInstanceVariable ]
				ifFalse: [ #isInstanceVariable ].
			ivs copy do: [:each |
				((each perform: sel) and: [ each name = aString asString ])
					ifTrue: [ ivs remove: each ]].
			MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ def load ].
			newClass := System myUserProfile symbolList objectNamed: self thisClass name.
			System commitTransaction ifFalse: [ 
				^self error: 'Could not migrate instances' ].
			System inTransaction ifFalse: [ System beginTransaction ].
			MCPlatformSupport _migrateInstancesWithSubclassesOf: newClass. 
			System commitTransaction ifFalse: [ 
				^self error: 'Could not migrate instances' ] ].
! !
