Class {
	#name : #TscDefaultCommand,
	#superclass : #TscCommand,
	#category : #TscGtUtils
}

{ #category : #accessing }
TscDefaultCommand class >> echo: aString [ 
	^ self new cmd: {'-c' . 'echo ', aString}.
]

{ #category : #accessing }
TscDefaultCommand class >> ls [
	^ self new cmd: {'-c' . 'ls -ltr'}.
]

{ #category : #accessing }
TscDefaultCommand >> commandPath [
	^ '/bin/sh'
]
