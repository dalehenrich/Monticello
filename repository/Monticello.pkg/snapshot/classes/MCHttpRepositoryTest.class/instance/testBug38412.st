
!MCHttpRepositoryTest methodsFor: 'tests'!
testBug38412

	self 
		should: [
			(MCHttpRepository
				location: 'http://dnu.example.com/ss/monticello'
				user: ''
				password: '') allFileNames ]
		raise: Error.
! !
