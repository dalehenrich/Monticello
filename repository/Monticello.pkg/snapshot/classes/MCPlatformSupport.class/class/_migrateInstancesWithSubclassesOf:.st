
!MCPlatformSupport classSide methodsFor: 'smalltalk'!
_migrateInstancesWithSubclassesOf: topClass

	| organizer oldClasses oldSubclassCollector instances |
	self autoMigrate ifFalse: [ ^self ].
	organizer := ClassOrganizer cachedOrganizer.
	oldClasses := Array new.
	"Collect all the old class versions"
	oldSubclassCollector := [ :newClass |
		1 to: newClass classHistory size - 1 do: [ :i |
			oldClasses add: (newClass classHistory at: i).
			(organizer subclassesOf: newClass) do: [ :sub |
				oldSubclassCollector value: sub ]]].
	oldSubclassCollector value: topClass.

	"Get the instances - in one repository sweep"
	System commitTransaction ifFalse: [ ^self error: 'Commit failed. Instances not migrated' ].
	System inTransaction ifFalse: [ System beginTransaction ].
	oldClasses := Array withAll: (IdentitySet withAll: oldClasses). "sort in oop order: Bug41254"
	instances := SystemRepository listInstances: oldClasses.
	1 to: oldClasses size do: [ :i |
		| oldClass |
		(instances at: i) notEmpty 
			ifTrue: [ 
				(oldClasses at: i)
					migrateInstances: (instances at: i)
					to: (instances at: i) first class classHistory last ]]! !
