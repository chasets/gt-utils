Class {
	#name : #TscCommand,
	#superclass : #Object,
	#instVars : [
		'workingDirectory'
	],
	#category : #TscGtUtils
}

{ #category : #accessing }
TscCommand >> cmd: commandList [ 	
	| process output |
	process := GtSubprocessWithInMemoryOutput new
	"addAllEnvVariablesFromParentWithoutOverride;"
	"put vars from CommandConfig subclass here"
	"environmentAt: 'PATH' put: (SqlRunnerEnvironment path);"
	"workingDirectory: (SqlRunnerEnvironment workingDirectory);"
	workingDirectory: self workingDirectory;
	command: self commandPath;
	arguments: commandList.
process errorBlock: [ :proc | self error: 'Failed to run command' ].
	process runAndWait.
	output := process stdout.
	^ output trim
]

{ #category : #accessing }
TscCommand >> commandPath [
	self subclassResponsibility
]

{ #category : #accessing }
TscCommand >> workingDirectory [ 
	workingDirectory ifNil: [self workingDirectory: FileLocator home].
	^ workingDirectory
]

{ #category : #accessing }
TscCommand >> workingDirectory: aPath [
	workingDirectory := aPath
]
