
Notification subclass: #SafelyPerformBlockRequiringAbort
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Gemstone'!

!SafelyPerformBlockRequiringAbort commentStamp: 'dkh 10/29/2008 12:24' prior: 0!
Use this Notification in your Seaside application when you find the need to do something like allInstances (which requires a commit or abort). See Behavior>>addInstVarName: for an example.!
