Class {
	#name : #BaselineOfTscGtUtils,
	#superclass : #BaselineOf,
	#category : #BaselineOfTscGtUtils
}

{ #category : #baseline }
BaselineOfTscGtUtils >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'TscGtUtils']
]
