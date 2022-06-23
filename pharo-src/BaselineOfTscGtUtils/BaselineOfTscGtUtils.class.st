Class {
	#name : #BaselineOfTscGtUtils,
	#superclass : #BaselineOf,
	#category : #BaselineOfTscGtUtils
}

{ #category : 'accessing' }
BaselineOfTscGtUtils class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory
			/ 'pharo-local'
			/ 'iceberg'
			/ 'chasets'
			/ 'gt-utils'
			/ 'lepiter'.
	
	LeDatabasesRegistry default defaultLogicalDatabase reload.
]

{ #category : #baseline }
BaselineOfTscGtUtils >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'TscGtUtils']
]
