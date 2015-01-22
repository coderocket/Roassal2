Class {
	#name : #RTAbstractLineDecorator,
	#superclass : #RTAbstractGrapherDecorator,
	#instVars : [
		'values'
	],
	#category : #'Roassal2-Builder-Grapher'
}

{ #category : #adding }
RTAbstractLineDecorator >> add: aValue [
	values add: aValue
]

{ #category : #adding }
RTAbstractLineDecorator >> addAll: someValues [
	values addAll: someValues
]

{ #category : #initialization }
RTAbstractLineDecorator >> initialize [
	super initialize.
	values := OrderedCollection new.
]