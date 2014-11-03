Class {
	#name : #RTActiveAnimation,
	#superclass : #RTAnimation,
	#instVars : [
		'blockToExecute',
		'view'
	],
	#category : #'Roassal2-Core'
}

{ #category : #accessing }
RTActiveAnimation >> blockToExecute [
	^ blockToExecute
]

{ #category : #accessing }
RTActiveAnimation >> blockToExecute: anObject [
	blockToExecute := anObject
]

{ #category : #testing }
RTActiveAnimation >> hasCompleted [
	^ false
]

{ #category : #public }
RTActiveAnimation >> inView: aView [
	view := aView.
	super inView: aView
]

{ #category : #initialization }
RTActiveAnimation >> initialize [
	super initialize.
	blockToExecute := [  ]
]

{ #category : #refreshing }
RTActiveAnimation >> refresh [
	blockToExecute value.
	view ifNotNil: [ view canvas signalUpdate ].
]

{ #category : #actions }
RTActiveAnimation >> start [
	view canvas signalUpdate
]