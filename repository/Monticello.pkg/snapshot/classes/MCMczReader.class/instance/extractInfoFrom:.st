
!MCMczReader methodsFor: 'as yet unclassified'!
extractInfoFrom: origDict
	| vn queue creationBlock ic |
	ic := self infoCache.
	vn := self infoCache at: (origDict at: #id) ifAbsent: [nil].
	vn ~~ nil ifTrue: [ ^vn ].
	queue := OrderedCollection new.
	creationBlock := [:dict | | newV name msg date time author |
		newV := self infoCache at: (dict at: #id) ifAbsent: [nil].
		name := dict at: #name ifAbsent: [''].
		msg := dict at: #message ifAbsent: [''].
		date := [ | d |
				[d := Date fromString: (dict at: #date)] on: Error do: [ :ex | ex return: nil ].
				d == nil ifTrue: [ d := Date fromString: (dict at: #date) usingFormat: #(2 1 3 $/ 1 2 $: false ) ].
				d ] on: Error do: [ :ex | ex return: nil ].
		time := [ Time fromString:(dict at: #time)] on: Error do: [ :ex | ex return: nil ].
		author := dict at: #author ifAbsent: [''].
		newV == nil 
			ifTrue: [
				newV := MCVersionInfo
					name: name
					id: (UUID fromString: (dict at: #id))
					message: msg
					date: date
					time: time
					author: author
					ancestors: Array new
					stepChildren: Array new]
			ifFalse: [ "fill in empty slots"
				(newV name isEmpty and: [name isEmpty not])
					ifTrue: [
						newV 
							initializeWithName: name 
							id: newV id 
							message: msg
							date: date 
							time: time 
							author: author 
							ancestors: newV ancestors 
							stepChildren: newV stepChildren]].
		newV].
	vn := creationBlock value: origDict.
	self infoCache at: (origDict at: #id) put: vn.
	queue add: (vn -> origDict).
	[ queue isEmpty ] whileFalse: [ | v assoc vi d |
		assoc := queue removeFirst.
		v := assoc key.
		d := assoc value.
		(d at: #ancestors ifAbsent: [ #() ] ) do: [:ea | 
			vi := self infoCache at: (ea at: #id) ifAbsent: [ nil ].
			vi == nil 
				ifTrue: [
					vi := creationBlock value: ea.
					v ancestors addLast: vi.
					self infoCache at: (ea at: #id) put: vi]
				ifFalse: [vi name isEmpty ifTrue: [ creationBlock value: ea ]].
			queue addFirst: (vi -> ea). 
			self infoCache at: (ea at: #id) put: vi].
		(d at: #stepChildren ifAbsent: [ #() ] ) do: [:ea | 
			vi := self infoCache at: (ea at: #id) ifAbsentPut: [ 
				vi := creationBlock value: ea.
				v stepChildren addLast: vi.
				vi].
			queue addFirst: (vi -> ea). 
			self infoCache at: (ea at: #id) put: vi]].
	^vn! !
