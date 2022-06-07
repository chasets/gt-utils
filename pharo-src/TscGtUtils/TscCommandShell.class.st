Class {
	#name : #TscCommandShell,
	#superclass : #TscCommand,
	#category : #TscGtUtils
}

{ #category : #accessing }
TscCommandShell >> commandPath [
	^ '/bin/sh'
]

{ #category : #accessing }
TscCommandShell >> echo: aString [ 
	^ self cmd: {'-c' . 'echo ', aString}.
]

{ #category : #accessing }
TscCommandShell >> ls [
	^ self cmd: {'-c' . 'ls -ltr'}.
]

{ #category : #accessing }
TscCommandShell >> which: aString [ 
	^ self cmd: {'-c' . 'which' . aString}.
]
