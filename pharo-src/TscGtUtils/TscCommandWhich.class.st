Class {
	#name : #TscCommandWhich,
	#superclass : #TscCommand,
	#category : #'TscGtUtils-TscGtUtils'
}

{ #category : #accessing }
TscCommandWhich >> commandPath [
	^ '/bin/sh'
]

{ #category : #accessing }
TscCommandWhich >> which: aString [ 
	^ self cmd: {'-c' . 'which ', aString}.
]
