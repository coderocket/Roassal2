Class {
	#name : #RTPharoCodeAnalyzerTest,
	#superclass : #RTTest,
	#instVars : [
		'a'
	],
	#category : #Roassal2DataStudioObsolete
}

{ #category : #running }
RTPharoCodeAnalyzerTest >> setUp [
	super setUp.
	a := RTPharoCodeAnalyzer new
]

{ #category : #tests }
RTPharoCodeAnalyzerTest >> testAddingClasses [
	a addClassesMatching: 'RT*'.
	self assert: a graph view numberOfElements > 80 
]

{ #category : #tests }
RTPharoCodeAnalyzerTest >> testChangeColor [
	a addClassesMatching: 'RT*'.
	a selectFromRegExp: 'Layout'.
	a setSelectionToColor: Color red.
	
	self assert: (a graph view elementFromModel: RTShape) trachelShape color ~= Color red.
	self assert: (a graph view elementFromModel: RTLayout) trachelShape color equals: Color red.

]

{ #category : #tests }
RTPharoCodeAnalyzerTest >> testDefault [

	self assert: a notNil.
	self assert: a graph view numberOfElements equals: 0.
	self assert: a currentSelection isEmpty
]

{ #category : #tests }
RTPharoCodeAnalyzerTest >> testSelecting [
	| t |
	a addClassesMatching: 'RT*'.
	t := a currentSelection size.
	a selectFromRegExp: 'Layout'.
	self assert: a currentSelection size < t.
	

]

{ #category : #tests }
RTPharoCodeAnalyzerTest >> testSelection [
	a addClassesMatching: 'RT*'.
	self assert: a currentSelection size > 80
]
