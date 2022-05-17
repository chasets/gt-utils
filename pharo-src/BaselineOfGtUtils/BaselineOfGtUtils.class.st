Class {
	#name : #BaselineOfGtUtils,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtUtils
}

{ #category : #baseline }
BaselineOfGtUtils >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'TscGtUtils']
]
