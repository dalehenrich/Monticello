
!Behavior methodsFor: '*monticello'!
copyMCMethodsFrom: sourceClass dictionaries: dicts

"Copies all instance and class methods, pool dictionaries, and references
 to class variables from the given class to ourselves.  Returns an Array of
 methods in the source class which failed to compile.  Some of them
 might be class methods.  The Array will be empty if none failed."

| failed srccls targcls cats cvs cmtStamp clsComment priorCivNames toIgnoreCount civNames |

self _validatePrivilege.
failed := Array new.

"Copy class comment"
(clsComment := sourceClass classComment) isEmpty not
	ifTrue: [ self classComment: sourceClass classComment stamp: sourceClass commentStamp ].

"Copy class and instance methods"
1 to: 2 do: [ :i |
  i == 1 ifTrue: [
    srccls := sourceClass.  targcls := self
  ]
  ifFalse: [
    srccls := sourceClass class.  targcls := self class
  ].

  cats := srccls _categories.
  cats keysAndValuesDo: [ :cat :sels |
    sels do: [ :sel | | result stamp |
	stamp := srccls stampForMethod: sel.
      result := targcls compileMethod: (srccls sourceCodeAt: sel)
				category: cat
                    	using: dicts .

      result == nil 
		ifTrue: [ targcls setStamp: stamp forMethod: sel ]
		ifFalse: [
			MCFailedCopyMethodToNewClass
				signal: (GsMethod _sourceWithErrors: result fromString:  (srccls sourceCodeAt: sel))
				with: (MCMethodDefinition 
						className: self name
						classIsMeta: i == 2
						selector: sel
						category: cat
						timeStamp: stamp
						source: (srccls sourceCodeAt: sel)).
			 failed add: (srccls _methodDict at: sel) ].
    ].
  ].
].

^failed.! !
