Class {
	#name : #TscCommandKeyring,
	#superclass : #TscCommand,
	#category : #'TscGtUtils-TscGtUtils'
}

{ #category : #accessing }
TscCommandKeyring >> commandPath [
	^ '/Users/timothy.chase/miniconda3/bin/keyring'
]

{ #category : #accessing }
TscCommandKeyring >> keyringForService: aService name: aName [
	^ self cmd: {'get' . aService . aName}
]
