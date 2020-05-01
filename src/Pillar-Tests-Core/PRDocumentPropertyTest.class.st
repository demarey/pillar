Class {
	#name : #PRDocumentPropertyTest,
	#superclass : #PRObjectTest,
	#category : #'Pillar-Tests-Core'
}

{ #category : #testing }
PRDocumentPropertyTest class >> isAbstract [
	^ false
]

{ #category : #private }
PRDocumentPropertyTest >> actualClass [

	^ PRDocument
]

{ #category : #tests }
PRDocumentPropertyTest >> testPropertyIsParsed [

	| doc |
	doc := PRDocument parser parse: '{ "key":99, "key2": "100" } 
	! My cool title'.
	
	self assert: (doc propertyAt: #key) equals: 99.
	self assert: (doc propertyAt: #key2) equals: '100'.
	self assert: doc hasChildren
]
