Class {
	#name : #TscDefaultCommandConfig,
	#superclass : #TscCommandConfig,
	#category : #TscGtUtils
}

{ #category : #accessing }
TscDefaultCommandConfig >> environmentVars [
	| d |
	d := Dictionary new. 
	d at: 'PATH' put: '/usr/bin:/usr/local/bin'.
	^ d
]

{ #category : #accessing }
TscDefaultCommandConfig >> workingDirectory [
	^ '/Users/timothy.chase'
]
