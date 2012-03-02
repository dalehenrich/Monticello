
!Behavior methodsFor: '*monticello'!
addInstVarName: aString
	"This is used by Magritte, but MCClassDefinition does so much of this so nicely, that I will
	 cheat for a bit"
	
	SafelyPerformBlockRequiringAbort new
		signal: [:abortPerformed | |  def ivs newClass |
			abortPerformed ifFalse: [ ^self error: 'Could not migrate instances' ].
			def := self thisClass asUncachedClassDefinition.
			ivs := Array with: aString.
			self isMeta
				ifTrue: [ def addVariables: ivs ofType: MCClassInstanceVariableDefinition ]
				ifFalse: [ def addVariables: ivs ofType: MCInstanceVariableDefinition ].
			MCPlatformSupport suspendAutoCommitAndMigrationDuring: [ def load ].
			newClass := System myUserProfile symbolList objectNamed: self thisClass name.
			System commitTransaction ifFalse: [ 
				^self error: 'Could not migrate instances' ].
			System inTransaction ifFalse: [ System beginTransaction ].
			MCPlatformSupport _migrateInstancesWithSubclassesOf: newClass. 
			System commitTransaction ifFalse: [ 
				^self error: 'Could not migrate instances' ] ].! !
