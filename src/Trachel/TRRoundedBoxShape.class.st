"
Box shape with (optionally) rounded corners.
"
Class {
	#name : #TRRoundedBoxShape,
	#superclass : #TRBoxShape,
	#instVars : [
		'borderRadius'
	],
	#category : #'Trachel-Shapes'
}

{ #category : #accessing }
TRRoundedBoxShape >> borderRadius [
	^ borderRadius
]

{ #category : #accessing }
TRRoundedBoxShape >> borderRadius: aNumber [
	borderRadius := aNumber
]

{ #category : #private }
TRRoundedBoxShape >> computePath [
	| r vr hr |
	canvas ifNil: [ ^ self ].
	r := self borderRadius.
	vr := 0 @ r.
	hr := r @ 0.
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: rectangle topLeft + hr;
				lineTo: rectangle topRight - hr;
				cwArcTo: rectangle topRight + vr angle: Float halfPi;
				lineTo: rectangle bottomRight - vr;
				cwArcTo: rectangle bottomRight - hr angle: Float halfPi;
				lineTo: rectangle bottomLeft + hr;
				cwArcTo: rectangle bottomLeft - vr angle: Float halfPi;
				lineTo: rectangle topLeft + vr;
				cwArcTo: rectangle topLeft + hr angle: Float halfPi;
				closePath ]
]