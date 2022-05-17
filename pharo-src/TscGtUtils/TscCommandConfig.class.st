Class {
	#name : #TscCommandConfig,
	#superclass : #Object,
	#category : #TscGtUtils
}

{ #category : #accessing }
TscCommandConfig class >> environmentVars: aDict [ 
	self subclassResponsibility
]

{ #category : #accessing }
TscCommandConfig class >> workingDirectory: aFilepath [ 
	self subclassResponsibility
]
