Extension { #name : #MAElementDescription }

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> csvFieldName [
	^ self propertyAt: #csvFieldName ifAbsent: [ nil ]
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> csvFieldName: aString [
	^ self propertyAt: #csvFieldName put: aString
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> csvReader [
	^ self propertyAt: #csvReader ifAbsent: [ self defaultCSVReader ]
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> csvReader: aBlock [
	^ self propertyAt: #csvReader put: aBlock
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> defaultCSVReader [
	^ [ :trimmed | self fromString: trimmed ]
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> descriptionCSVFieldName [
	<magritteDescription>
	^ MAStringDescription new
			accessor: #csvFieldName;
			priority: 1000;
			yourself
]

{ #category : #'*Neo-CSV-Magritte' }
MAElementDescription >> descriptionCSVReader [
	<magritteDescription>
	^ MABlockDescription new
			accessor: #csvReader;
			priority: 1100;
			default: self defaultCSVReader;
			yourself
]
