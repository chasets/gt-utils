Class {
	#name : #TscCommandGit,
	#superclass : #TscCommand,
	#category : #'TscGtUtils-TscGtUtils'
}

{ #category : #accessing }
TscCommandGit >> clone: aUrl [
	| repo |
	repo := (((aUrl splitOn: '/') last) splitOn: '.git') first asFileReference.
	repo  exists ifFalse: [self cmd: {'clone' . aUrl}].
	^ repo 
	
]

{ #category : #accessing }
TscCommandGit >> commandPath [
	^ '/usr/local/bin/git'
]
