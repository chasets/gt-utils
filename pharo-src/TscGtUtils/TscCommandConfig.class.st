Class {
	#name : #TscCommandConfig,
	#superclass : #Object,
	#category : #TscGtUtils
}

{ #category : #accessing }
TscCommandConfig class >> environmentVars [
	self subclassResponsibility
]

{ #category : #accessing }
TscCommandConfig class >> workingDirectory [
	self subclassResponsibility
]
