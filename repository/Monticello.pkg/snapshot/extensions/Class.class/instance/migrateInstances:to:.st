
!Class methodsFor: '*monticello'!
migrateInstances: instances to: anotherClass

"Migrates each of the instances to anotherClass, using migrateFrom:instVarMap:
 and performing become: operations to accomplish this task.  Removes the
 indexes of indexed instances.  Returns an Array of four Sets of instances,
 none of which were migrated:

 * Objects that you cannot read.  (obsolete - always empty)
 * Objects that you cannot write. (obsolete - always empty)
 * Objects that are in indexed collections that have different formats.
   (For a more detailed description, see Object | become:.)
 * Objects whose class is not identical to the receiver.

 Generates the error errNotSameClassHist if the classHistory of the receiver
 is not identical to the classHistory of anotherClass."

| inst other otherivi noread nowrite inIndex checkidx badClass |

"check for legal class histories."
self classHistory == anotherClass classHistory ifFalse:[
  ^ self _error: #errNotSameClassHist args: #[ anotherClass ] .
  ].

noread := IdentitySet new.
nowrite := IdentitySet new.
inIndex := IdentitySet new.
badClass := IdentitySet new .
checkidx := self inheritsFrom: UnorderedCollection.
otherivi := anotherClass instVarMappingTo: self.

Exception
  category: GemStoneError
  number: (ErrorSymbols at: #rtErrCantBecomeOneIdx)
  do: [:ex :cat :num :args | inIndex add: inst ] .

1 to: instances size do: [:i |
  inst := instances _at: i.
  (checkidx _and: [inst _hasIndexes]) ifTrue: [
        inst removeAllIndexes ].
  inst class == self 
  ifFalse:[ badClass add: inst ]
  ifTrue:[
      	other := anotherClass _basicNew.
      	other migrateFrom: inst instVarMap: otherivi.
       ((inst _onStackAsSelfBelow: 1) or: [ (other _onStackAsSelfBelow: 1) ])
			ifTrue:[ | sema |
				sema := Semaphore new.
				[	other become: inst.
					sema signal.] fork.
				sema wait]
			ifFalse: [ other become: inst ]]].
^#[noread, nowrite, inIndex, badClass ]
! !
