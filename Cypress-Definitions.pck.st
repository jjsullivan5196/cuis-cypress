'From Cuis7.9 [latest update: #8056] on 8 July 2026 at 6:06:30 pm'!
'Description Basic definitions for Cypress. Install first.'!
!provides: 'Cypress-Definitions' 1 1!
SystemOrganization addCategory: #'Cypress-Definitions'!


!classDefinition: #CypressDefinition category: #'Cypress-Definitions'!
Object subclass: #CypressDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressDefinition class' category: #'Cypress-Definitions'!
CypressDefinition class
	instanceVariableNames: ''!

!classDefinition: #CypressClassDefinition category: #'Cypress-Definitions'!
CypressDefinition subclass: #CypressClassDefinition
	instanceVariableNames: 'name superclassName category comment instVarNames classInstVarNames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressClassDefinition class' category: #'Cypress-Definitions'!
CypressClassDefinition class
	instanceVariableNames: ''!

!classDefinition: #CypressMethodDefinition category: #'Cypress-Definitions'!
CypressDefinition subclass: #CypressMethodDefinition
	instanceVariableNames: 'classIsMeta source category selector className timeStamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressMethodDefinition class' category: #'Cypress-Definitions'!
CypressMethodDefinition class
	instanceVariableNames: ''!

!classDefinition: #CypressDefinitionIndex category: #'Cypress-Definitions'!
Object subclass: #CypressDefinitionIndex
	instanceVariableNames: 'definitionMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressDefinitionIndex class' category: #'Cypress-Definitions'!
CypressDefinitionIndex class
	instanceVariableNames: ''!

!classDefinition: #CypressDependencySorter category: #'Cypress-Definitions'!
Object subclass: #CypressDependencySorter
	instanceVariableNames: 'required provided orderedItems'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressDependencySorter class' category: #'Cypress-Definitions'!
CypressDependencySorter class
	instanceVariableNames: ''!

!classDefinition: #CypressLoader category: #'Cypress-Definitions'!
Object subclass: #CypressLoader
	instanceVariableNames: 'additions removals unloadable provisions errors methodAdditions requirements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressLoader class' category: #'Cypress-Definitions'!
CypressLoader class
	instanceVariableNames: ''!

!classDefinition: #CypressPackageDefinition category: #'Cypress-Definitions'!
Object subclass: #CypressPackageDefinition
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressPackageDefinition class' category: #'Cypress-Definitions'!
CypressPackageDefinition class
	instanceVariableNames: ''!

!classDefinition: #CypressPatch category: #'Cypress-Definitions'!
Object subclass: #CypressPatch
	instanceVariableNames: 'operations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressPatch class' category: #'Cypress-Definitions'!
CypressPatch class
	instanceVariableNames: ''!

!classDefinition: #CypressPatchOperation category: #'Cypress-Definitions'!
Object subclass: #CypressPatchOperation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressPatchOperation class' category: #'Cypress-Definitions'!
CypressPatchOperation class
	instanceVariableNames: ''!

!classDefinition: #CypressAddition category: #'Cypress-Definitions'!
CypressPatchOperation subclass: #CypressAddition
	instanceVariableNames: 'definition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressAddition class' category: #'Cypress-Definitions'!
CypressAddition class
	instanceVariableNames: ''!

!classDefinition: #CypressModification category: #'Cypress-Definitions'!
CypressPatchOperation subclass: #CypressModification
	instanceVariableNames: 'obsoletion modification'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressModification class' category: #'Cypress-Definitions'!
CypressModification class
	instanceVariableNames: ''!

!classDefinition: #CypressRemoval category: #'Cypress-Definitions'!
CypressPatchOperation subclass: #CypressRemoval
	instanceVariableNames: 'definition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressRemoval class' category: #'Cypress-Definitions'!
CypressRemoval class
	instanceVariableNames: ''!

!classDefinition: #CypressSnapshot category: #'Cypress-Definitions'!
Object subclass: #CypressSnapshot
	instanceVariableNames: 'definitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-Definitions'!
!classDefinition: 'CypressSnapshot class' category: #'Cypress-Definitions'!
CypressSnapshot class
	instanceVariableNames: ''!


!CypressDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition
	^(aDefinition isKindOf: CypressDefinition) and: [self isRevisionOf: aDefinition]
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
actualClass

	self subclassResponsibility
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
loadClassDefinition
	"default is to do nothing"
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
loadMethodDefinition
	"default is to do nothing"
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
postLoad
	"noop"
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
postLoadOver: aDefinition

	self postLoad
! !

!CypressDefinition methodsFor: 'loading' stamp: ''!
unloadDefinition

	self subclassResponsibility
! !

!CypressDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock
	"default is noop"
! !

!CypressDefinition methodsFor: 'accessing' stamp: ''!
description
	self subclassResponsibility
! !

!CypressDefinition methodsFor: 'testing' stamp: ''!
isRevisionOf: aDefinition
	^ (aDefinition isKindOf: CypressDefinition) and: [aDefinition description = self description]
! !

!CypressDefinition methodsFor: 'testing' stamp: ''!
isSameRevisionAs: aDefinition
	^ self = aDefinition
! !

!CypressDefinition methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	^#()
! !

!CypressDefinition methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	^#()
! !

!CypressClassDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition
	^(super = aDefinition)
		and: [superclassName = aDefinition superclassName
		and: [category = aDefinition category
		and: [instVarNames = aDefinition instVarNames
		and: [classInstVarNames = aDefinition classInstVarNames
		and: [comment = aDefinition comment]]]]]
! !

!CypressClassDefinition methodsFor: 'comparing' stamp: 'dkh 24/Apr/2012, 2:30:00 am (UTC)'!
hash
    | hash |
    hash := String stringHash: name initialHash: 0.
    hash := String stringHash: superclassName initialHash: hash.
    hash := String stringHash: (category ifNil: [ '' ]) initialHash: hash.
    instVarNames , classInstVarNames do: [ :vName | hash := String stringHash: vName initialHash: hash ].
    ^ hash! !

!CypressClassDefinition methodsFor: 'loading' stamp: 'jmv 7/Jun/2012, 5:07:00 am (UTC)'!
actualClass

	^Smalltalk at: self name
! !

!CypressClassDefinition methodsFor: 'loading' stamp: 'jmv 7/Jun/2012, 5:07:00 am (UTC)'!
createClass

	| superClass |
	superClass := Smalltalk at: self superclassName.
	^ClassBuilder new
		superclass: superClass 
		subclass: self name
		instanceVariableNames: (self stringForVariables: self instVarNames)
		classVariableNames: '' poolDictionaries: '' category: self category
! !

!CypressClassDefinition methodsFor: 'loading' stamp: ''!
loadClassDefinition

	 | cls |
	cls := self createClass.
	cls class instanceVariableNames: (self stringForVariables: self classInstVarNames).
	self comment notEmpty ifTrue: [ cls comment: self comment ]
! !

!CypressClassDefinition methodsFor: 'loading' stamp: 'jmv 7/Jun/2012, 5:07:00 am (UTC)'!
unloadDefinition

	Smalltalk removeClass: self actualClass.
! !

!CypressClassDefinition methodsFor: 'converting' stamp: ''!
asCypressClassDefinition

	^self
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
category

	^category
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
classInstVarNames

	^classInstVarNames
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
className

	^self name
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
comment

	^comment
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
description

	^ Array with: name
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
instVarNames

	^instVarNames
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
name

	^name
! !

!CypressClassDefinition methodsFor: 'accessing' stamp: ''!
superclassName

	^superclassName
! !

!CypressClassDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock

	classBlock value: self
! !

!CypressClassDefinition methodsFor: 'initialization' stamp: 'jmv 7/Jun/2012, 5:09:00 am (UTC)'!
name: aClassName superclassName: aSuperclassName category: aCategory instVarNames: anInstanceVariableNames classInstVarNames: aClassInstanceVariableNames comment: aComment

	name := aClassName asSymbol.
	superclassName := aSuperclassName asSymbol.
	category := aCategory asSymbol.
	instVarNames := anInstanceVariableNames.
	classInstVarNames := aClassInstanceVariableNames.
	comment := aComment
! !

!CypressClassDefinition methodsFor: 'printString' stamp: 'dkh 24/Apr/2012, 1:24:00 am (UTC)'!
printString

	| str |
	str := WriteStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self name;
		nextPutAll: ')'.
	^str contents
! !

!CypressClassDefinition methodsFor: 'printString' stamp: ''!
stringForVariables: aCollectionOfVariableNames
	^ String streamContents:
		[:stream |
		aCollectionOfVariableNames
			do: [:ea | stream nextPutAll: ea]
			separatedBy: [stream space]]
! !

!CypressClassDefinition methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	^{ self name }
! !

!CypressClassDefinition methodsFor: 'dependency' stamp: 'jmv 7/Jun/2012, 5:04:00 am (UTC)'!
requirements
	"Answer list of global names required by this definition"

	^{self superclassName}
! !

!CypressClassDefinition class methodsFor: 'instance creation' stamp: ''!
name: aClassName 
superclassName: aSuperclassName
category: aCategory
instVarNames: anInstanceVariableNames
classInstVarNames: aClassInstanceVariableNames
comment: aComment

	^(self new) 
		name: aClassName 
		superclassName: aSuperclassName
		category: aCategory
		instVarNames: anInstanceVariableNames
		classInstVarNames: aClassInstanceVariableNames
		comment: aComment
! !

!CypressMethodDefinition methodsFor: 'comparing' stamp: ''!
= aDefinition
    ^ super = aDefinition
        and: [ aDefinition source = self source
                and: [ aDefinition category = self category ] ]
! !

!CypressMethodDefinition methodsFor: 'comparing' stamp: 'dkh 24/Apr/2012, 4:20:00 am (UTC)'!
hash
    | hash |
    hash := String stringHash: classIsMeta asString initialHash: 0.
    hash := String stringHash: source initialHash: hash.
    hash := String stringHash: category initialHash: hash.
    hash := String stringHash: className initialHash: hash.
    ^ hash! !

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
actualClass

	| cls |
	cls := self theNonMetaClass.
	^self classIsMeta
		ifTrue: [ cls class ]
		ifFalse: [ cls  ].
! !

!CypressMethodDefinition methodsFor: 'loading' stamp: 'jmv 15/Jun/2012, 4:48:00 am (UTC)'!
loadMethodDefinition

	self actualClass
		compile: self source
		classified: self category
		withStamp: self timeStamp
		notifying: nil.! !

!CypressMethodDefinition methodsFor: 'loading' stamp: ''!
postLoadOver: aDefinition

	super postLoadOver: aDefinition.
	(self isInitializer
		and: [ aDefinition isNil or: [ self source ~= aDefinition source ]]) 
			ifTrue: [ self theNonMetaClass initialize ].
! !

!CypressMethodDefinition methodsFor: 'loading' stamp: 'dkh 24/Apr/2012, 8:26:00 pm (UTC)'!
theNonMetaClass
	^Smalltalk at: self className
! !

!CypressMethodDefinition methodsFor: 'loading' stamp: 'dkh 24/Apr/2012, 8:28:00 pm (UTC)'!
unloadDefinition

	self actualClass removeSelector: self selector asSymbol
! !

!CypressMethodDefinition methodsFor: 'converting' stamp: ''!
asCypressMethodDefinition

	^self
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
category

	^category
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
classIsMeta

	^classIsMeta
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
className

	^className
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
description
	^ Array	
		with: className
		with: selector
		with: classIsMeta
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
selector

	^selector
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: ''!
source

	^source
! !

!CypressMethodDefinition methodsFor: 'accessing' stamp: 'jmv 15/Jun/2012, 4:57:00 am (UTC)'!
timeStamp

	^timeStamp
! !

!CypressMethodDefinition methodsFor: 'visiting' stamp: ''!
classDefinition: classBlock methodDefinition: methodBlock

	methodBlock value: self
! !

!CypressMethodDefinition methodsFor: 'visiting' stamp: ''!
instanceMethod: instanceBlock classMethod: classBlock

	^(self classIsMeta
		ifTrue: [ classBlock ]
		ifFalse: [ instanceBlock ]) value: self
! !

!CypressMethodDefinition methodsFor: 'initialization' stamp: 'dkh 24/Apr/2012, 5:27:00 am (UTC)'!
className: aName classIsMeta: isMetaclass selector: aSelector category: aCategory source: aSource

	className := aName asSymbol.
	classIsMeta := isMetaclass.
	selector := aSelector asSymbol.
	category := aCategory asSymbol.
	source := aSource withLineEndings: String lfString.
! !

!CypressMethodDefinition methodsFor: 'initialization' stamp: 'jmv 15/Jun/2012, 4:49:00 am (UTC)'!
className: aName classIsMeta: isMetaclass selector: aSelector category: aCategory source: aSource timeStamp: aTimeStamp

	className := aName asSymbol.
	classIsMeta := isMetaclass.
	selector := aSelector asSymbol.
	category := aCategory asSymbol.
	source := aSource withLineEndings: String lfString.
	timeStamp := aTimeStamp! !

!CypressMethodDefinition methodsFor: 'testing' stamp: ''!
isInitializer
	^ self selector = 'initialize' and: [self classIsMeta]
! !

!CypressMethodDefinition methodsFor: 'printing' stamp: 'dkh 24/Apr/2012, 1:24:00 am (UTC)'!
printString

	| str |
	str := WriteStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self className.
	self classIsMeta
		ifTrue: [ str nextPutAll: ' class' ].
	str 
		nextPutAll: '>>';
		nextPutAll: self selector;
		nextPutAll: ')'.
	^str contents
! !

!CypressMethodDefinition methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	^{self className}
! !

!CypressMethodDefinition class methodsFor: 'instance creation' stamp: ''!
className: aName
classIsMeta: isMetaclass
selector: aSelector
category: aCategory
source: aSource

	^(self new)
		className: aName
		classIsMeta: isMetaclass
		selector: aSelector
		category: aCategory
		source: aSource
! !

!CypressMethodDefinition class methodsFor: 'instance creation' stamp: 'jmv 15/Jun/2012, 4:54:00 am (UTC)'!
className: aName
classIsMeta: isMetaclass
selector: aSelector
category: aCategory
source: aSource
timeStamp: aTimeStamp

	^(self new)
		className: aName
		classIsMeta: isMetaclass
		selector: aSelector
		category: aCategory
		source: aSource
		timeStamp: aTimeStamp
! !

!CypressDefinitionIndex methodsFor: 'adding' stamp: ''!
add: aDefinition
	^ self definitionMap at: aDefinition description put: aDefinition
! !

!CypressDefinitionIndex methodsFor: 'adding' stamp: ''!
addAll: aCollection
	aCollection do: [:ea | self add: ea]
! !

!CypressDefinitionIndex methodsFor: 'querying' stamp: ''!
definitionLike: aDefinition ifPresent: foundBlock ifAbsent: errorBlock
	| definition |
	definition := self definitionMap at: aDefinition description ifAbsent: [].
	^ definition
		ifNil: errorBlock
		ifNotNil: [foundBlock value: definition]
! !

!CypressDefinitionIndex methodsFor: 'accessing' stamp: ''!
definitionMap
	definitionMap ifNil: [ definitionMap := Dictionary new ].
	^ definitionMap
! !

!CypressDefinitionIndex methodsFor: 'accessing' stamp: ''!
definitions
	^self definitionMap values
! !

!CypressDefinitionIndex methodsFor: 'removing' stamp: ''!
remove: aDefinition
	self definitionMap removeKey: aDefinition description ifAbsent: []
! !

!CypressDefinitionIndex class methodsFor: 'instance creation' stamp: ''!
definitions: aCollection
	^ self new addAll: aCollection
! !

!CypressDependencySorter methodsFor: 'building' stamp: ''!
add: aPatchOperation
	| requirements |
	requirements := self unresolvedRequirementsFor: aPatchOperation.
	requirements isEmpty
		ifTrue: [self addToOrder: aPatchOperation]
		ifFalse: [self addRequirements: requirements for: aPatchOperation].
	^ aPatchOperation
! !

!CypressDependencySorter methodsFor: 'building' stamp: ''!
addAll: aCollection
	aCollection do: [:aPatchOperation | self add: aPatchOperation ]
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addExternalProvisions: aCollection
	(aCollection intersection: self externalRequirements)
		do: [:globalName | self addProvision: globalName]
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addProvision: aGlobalName
	| newlySatisfied |
	self provided add: aGlobalName.
	newlySatisfied := self required removeKey: aGlobalName ifAbsent: [#()].
	self addAll: newlySatisfied.
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addRequirement: globalName for: aPatchOperation
	(self itemsRequiring: globalName) add: aPatchOperation
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addRequirements: aCollection for: aPatchOperation
	aCollection do: [:globalName | self addRequirement: globalName for: aPatchOperation]
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
addToOrder: aPatchOperation
	self orderedItems add: aPatchOperation.
	aPatchOperation provisions do: [:globalName | self addProvision: globalName ].
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
itemsRequiring: globalName
	^ self required at: globalName ifAbsentPut: [Set new]
! !

!CypressDependencySorter methodsFor: 'private' stamp: ''!
unresolvedRequirementsFor: aPatchOperation
	"Answer a list of global names that are required by <aPatchOperation>, but not 
	 provided by patchOperations that have already been processed"

	^ aPatchOperation requirements difference: self provided
! !

!CypressDependencySorter methodsFor: 'accessing' stamp: 'JS 8/Jul/2026, 9:39:06 pm (UTC)'!
externalRequirements
	| unloaded providedByUnloaded |
	unloaded := self itemsWithMissingRequirements.
	providedByUnloaded := unloaded collect: [:e | e provisions].
	^ self required keys reject: [:globalName | providedByUnloaded includes: globalName ]
! !

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
itemsWithMissingRequirements
	| patchOperations |
	patchOperations := Set new.
	self required values do: [:aSetOfPatchOperations | patchOperations addAll: aSetOfPatchOperations ].
	^ patchOperations
! !

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
orderedItems
	"ordered list of patch operations"

	orderedItems ifNil: [ orderedItems := OrderedCollection new ].
	^orderedItems
! !

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
provided
	"set of global names provided by definitions already loaded"

	provided ifNil: [ provided := Set new ].
	^provided
! !

!CypressDependencySorter methodsFor: 'accessing' stamp: ''!
required
	"dictionary of required global name mapped to list of definitions that require the global"

	required ifNil: [ required := Dictionary new ].
	^required
! !

!CypressLoader methodsFor: 'accessing' stamp: ''!
additions

	additions ifNil: [ additions := OrderedCollection new ].
	^additions
! !

!CypressLoader methodsFor: 'accessing' stamp: ''!
errors
	errors ifNil: [ errors := OrderedCollection new ].
	^errors
! !

!CypressLoader methodsFor: 'accessing' stamp: ''!
methodAdditions

	^#()
! !

!CypressLoader methodsFor: 'accessing' stamp: 'dkh 24/Apr/2012, 2:03:00 am (UTC)'!
provisions
	^ provisions ifNil: [provisions := (Smalltalk classes collect: [:cl | cl name]) asSet ]
! !

!CypressLoader methodsFor: 'accessing' stamp: ''!
removals

	removals ifNil: [ removals := OrderedCollection new ].
	^removals
! !

!CypressLoader methodsFor: 'accessing' stamp: ''!
unloadable

	unloadable ifNil: [ unloadable := OrderedCollection new ].
	^unloadable
! !

!CypressLoader methodsFor: 'loading' stamp: ''!
analyze

	self 
		analyzeAdditions;
		analyzeRemovals
! !

!CypressLoader methodsFor: 'loading' stamp: ''!
analyzeAdditions

	| sorter |
	sorter := CypressDependencySorter new 
		addAll: self additions;
		addExternalProvisions: self provisions;
		yourself.
	additions := sorter orderedItems.
	requirements := sorter externalRequirements.
	unloadable := sorter itemsWithMissingRequirements.
! !

!CypressLoader methodsFor: 'loading' stamp: ''!
analyzeRemovals

	| sorter |
	sorter := CypressDependencySorter new 
		addAll: self removals;
		yourself.
	removals := sorter orderedItems reversed.
! !

!CypressLoader methodsFor: 'loading' stamp: 'dkh 24/Apr/2012, 1:26:00 am (UTC)'!
basicLoad
	errors := OrderedCollection new.
	self additions do: [:ea | self loadClassDefinition: ea ]. "load class definitions first"
	self additions do: [:ea | self loadMethodDefinition: ea ] . "load method definitions now"
	self removals do: [:ea | self unloadDefinition: ea ]. "now we can remove things"
	self errors do: [:ea | ea addMethodAdditionTo: methodAdditions]. "not sure about methodAddtions...yet"
	self methodAdditions do: [:ea | self loadMethodAddition: ea ]. "ditto"
	self additions do: [:ea | self postLoad: ea ]. "this is where the obsoletion is taken into account ..."
! !

!CypressLoader methodsFor: 'loading' stamp: ''!
load

	self analyze.
	self unloadable isEmpty ifFalse: [self unloadableDefinitionsError].
	self basicLoad
! !

!CypressLoader methodsFor: 'loading' stamp: ''!
updatePackage: aPackage withSnapshot: aSnapshot
	|  patch snapshot |
	snapshot := aPackage snapshot.
	patch := aSnapshot patchRelativeToBase: snapshot.
	patch applyTo: self.
	snapshot definitions do: [:ea | self provisions addAll: ea provisions]
! !

!CypressLoader methodsFor: 'applying' stamp: ''!
applyAddition: aCypressPatchOperation

	self additions add: aCypressPatchOperation
! !

!CypressLoader methodsFor: 'applying' stamp: ''!
applyModification: aCypressPatchOperation

	self additions add: aCypressPatchOperation
! !

!CypressLoader methodsFor: 'applying' stamp: ''!
applyRemoval: aCypressPatchOperation

	self removals add: aCypressPatchOperation
! !

!CypressLoader methodsFor: 'error handling' stamp: 'dkh 24/Apr/2012, 8:30:00 pm (UTC)'!
handleErrorFor: aPatchOperation during: aBlock
	aBlock on: Error do: [:ex | self errors add: aPatchOperation ].
! !

!CypressLoader methodsFor: 'operations' stamp: ''!
loadClassDefinition: aPatchOperation

	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation loadClassDefinition ]
! !

!CypressLoader methodsFor: 'operations' stamp: ''!
loadMethodDefinition: aPatchOperation
	
	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation loadMethodDefinition ]
! !

!CypressLoader methodsFor: 'operations' stamp: ''!
postLoad: aPatchOperation
	aPatchOperation postLoadDefinition
! !

!CypressLoader methodsFor: 'operations' stamp: ''!
unloadDefinition: aPatchOperation
	
	self 
		handleErrorFor: aPatchOperation 
		during: [ aPatchOperation unloadDefinition ]
! !

!CypressLoader class methodsFor: 'loading' stamp: ''!
updatePackage: aPackage withSnapshot: aSnapshot
	self new
		updatePackage: aPackage withSnapshot: aSnapshot;
		load
! !

!CypressPackageDefinition methodsFor: 'comparing' stamp: ''!
= other
	^ other species = self species and: [other name sameAs: name]
! !

!CypressPackageDefinition methodsFor: 'accessing' stamp: ''!
name
	^ name
! !

!CypressPackageDefinition methodsFor: 'accessing' stamp: ''!
name: aString
	name := aString
! !

!CypressPackageDefinition methodsFor: 'printing' stamp: ''!
printString
	^super printString, '(', name, ')'
! !

!CypressPackageDefinition methodsFor: 'snapshotting' stamp: 'JS 8/Jul/2026, 9:37:03 pm (UTC)'!
snapshot
    | package definitions map classMap |
    package := CodePackage named: self name createIfAbsent: true registerIfNew: false.
    definitions := OrderedCollection new.
    package classesInSafeOrderDo: [ :cls | 
            definitions add: cls asCypressClassDefinition.
            (cls methodDictionary values sorted: [ :a :b | a selector <= b selector ])
                do: [ :method | 
                    (method category at: 1) = $*
                        ifFalse: [ definitions add: method asCypressMethodDefinition ] ].
            (cls class methodDictionary values sorted: [ :a :b | a selector <= b selector ])
                do: [ :method | 
                    (method category at: 1) = $*
                        ifFalse: [ definitions add: method asCypressMethodDefinition ] ] ].
    classMap := Dictionary new.
    Smalltalk allClasses
        do: [ :each | 
            {each.
            (each class)}
                do: [ :aClass | 
                    | defs |
                    defs := OrderedCollection new.
                    map := Dictionary new.
                    aClass organization categories
                        do: [ :category | 
                            | methods |
                            methods := aClass organization listAtCategoryNamed: category.
                            (category asLowercase beginsWith: '*' , self name asLowercase)
                                ifTrue: [ map at: category put: methods ] ].
                    (map keys sorted: [ :a :b | a <= b ])
                        do: [ :category | 
                            ((map at: category) sorted: [ :a :b | a <= b ])
                                do: [ :method | defs add: (aClass compiledMethodAt: method) asCypressMethodDefinition ] ].
                    defs notEmpty
                        ifTrue: [ classMap at: each put: defs ] ] ].
    Smalltalk hierarchySorted: (classMap keys) do: [ :aClass | definitions addAll: (classMap at: aClass) ].
    ^ CypressSnapshot definitions: definitions! !

!CypressPatch methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader
	operations do: [:ea | ea applyTo: aCypressLoader].
! !

!CypressPatch methodsFor: 'initialization' stamp: ''!
fromBase: baseSnapshot toTarget: targetSnapshot
	| base target |	
	operations := OrderedCollection new.
	base := CypressDefinitionIndex definitions: baseSnapshot definitions.
	target := CypressDefinitionIndex definitions: targetSnapshot definitions.
	
	target definitions do:
		[:t |
		base
			definitionLike: t
			ifPresent: [:b | (b isSameRevisionAs: t) ifFalse: [operations add: (CypressModification of: b to: t)]]
			ifAbsent: [operations add: (CypressAddition of: t)]].
		
	base definitions do:
		[:b |
		target
			definitionLike: b
			ifPresent: [:t | ]
			ifAbsent: [operations add: (CypressRemoval of: b)]]
! !

!CypressPatch methodsFor: 'accessing' stamp: ''!
operations

	^operations
! !

!CypressPatch class methodsFor: 'instance creation' stamp: ''!
fromBase: baseSnapshot toTarget: targetSnapshot
	^ (self new)
		fromBase: baseSnapshot
		toTarget: targetSnapshot
! !

!CypressPatchOperation methodsFor: 'comparing' stamp: ''!
= aPatchOperation
	^aPatchOperation isKindOf: self class
! !

!CypressPatchOperation methodsFor: 'comparing' stamp: 'dkh 24/Apr/2012, 4:21:00 am (UTC)'!
hash
    ^ self description hash! !

!CypressPatchOperation methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'accessing' stamp: ''!
description

	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
loadClassDefinition

	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
loadMethodDefinition
	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
postLoadDefinition
	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'loading' stamp: ''!
unloadDefinition

	self error: 'inappropriate to send #unloadDefinition to an addition or modification operation'
! !

!CypressPatchOperation methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	self subclassResponsibility
! !

!CypressPatchOperation methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	self subclassResponsibility
! !

!CypressAddition methodsFor: 'comparing' stamp: ''!
= aPatchOperation
	^(super = aPatchOperation) and: [self definition = aPatchOperation definition]
! !

!CypressAddition methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

	aCypressLoader applyAddition: self
! !

!CypressAddition methodsFor: 'accessing' stamp: ''!
definition

	^definition
! !

!CypressAddition methodsFor: 'accessing' stamp: 'dkh 24/Apr/2012, 4:22:00 am (UTC)'!
description
    ^ 'add: ' , self definition printString! !

!CypressAddition methodsFor: 'initialization' stamp: ''!
definition: aDefinition

	definition := aDefinition
! !

!CypressAddition methodsFor: 'loading' stamp: ''!
loadClassDefinition

	self definition loadClassDefinition
! !

!CypressAddition methodsFor: 'loading' stamp: ''!
loadMethodDefinition
	self definition loadMethodDefinition
! !

!CypressAddition methodsFor: 'loading' stamp: ''!
postLoadDefinition
	self definition postLoadOver: nil
! !

!CypressAddition methodsFor: 'printing' stamp: 'dkh 24/Apr/2012, 1:24:00 am (UTC)'!
printString

	| str |
	str := WriteStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self description;
		nextPutAll: ')'.
	^str contents
! !

!CypressAddition methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	^self definition provisions
! !

!CypressAddition methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	^self definition requirements
! !

!CypressAddition class methodsFor: 'instance creation' stamp: ''!
of: aDefinition
	^ self new definition: aDefinition
! !

!CypressModification methodsFor: 'initialization' stamp: ''!
= aPatchOperation
	^(super = aPatchOperation) and: [self obsoletion = aPatchOperation obsoletion and: [ self modification = aPatchOperation modification]]
! !

!CypressModification methodsFor: 'initialization' stamp: ''!
base: base target: target

	obsoletion := base.
	modification := target.
! !

!CypressModification methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

	aCypressLoader applyModification: self
! !

!CypressModification methodsFor: 'accessing' stamp: 'dkh 24/Apr/2012, 4:22:00 am (UTC)'!
description
    ^ 'modify from: ' , self obsoletion printString , ' to: ' , self modification printString! !

!CypressModification methodsFor: 'accessing' stamp: ''!
modification

	^modification
! !

!CypressModification methodsFor: 'accessing' stamp: ''!
obsoletion

	^obsoletion
! !

!CypressModification methodsFor: 'loading' stamp: ''!
loadClassDefinition

	self modification loadClassDefinition
! !

!CypressModification methodsFor: 'loading' stamp: ''!
loadMethodDefinition
	self modification loadMethodDefinition
! !

!CypressModification methodsFor: 'loading' stamp: ''!
postLoadDefinition
	self modification postLoadOver: self obsoletion
! !

!CypressModification methodsFor: 'printing' stamp: 'dkh 24/Apr/2012, 1:25:00 am (UTC)'!
printString

	| str |
	str := WriteStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self description;
		nextPutAll: ')'.
	^str contents
! !

!CypressModification methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	^self modification provisions
! !

!CypressModification methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	^self modification requirements
! !

!CypressModification class methodsFor: 'instance creation' stamp: ''!
of: base to: target
	^ self new base: base target: target
! !

!CypressRemoval methodsFor: 'comparing' stamp: ''!
= aPatchOperation
	^(super = aPatchOperation) and: [self definition = aPatchOperation definition]
! !

!CypressRemoval methodsFor: 'applying' stamp: ''!
applyTo: aCypressLoader

	aCypressLoader applyRemoval: self
! !

!CypressRemoval methodsFor: 'accessing' stamp: ''!
definition

	^definition
! !

!CypressRemoval methodsFor: 'accessing' stamp: 'dkh 24/Apr/2012, 4:23:00 am (UTC)'!
description

	^'remove: ', self definition printString
! !

!CypressRemoval methodsFor: 'initialization' stamp: ''!
definition: aDefinition

	definition := aDefinition
! !

!CypressRemoval methodsFor: 'loading' stamp: ''!
loadClassDefinition
	
	self error: 'inappropriate to send #loadClassDefinition to a removal operation'
! !

!CypressRemoval methodsFor: 'loading' stamp: ''!
loadMethodDefinition
	
	self error: 'inappropriate to send #loadMethodDefinition to a removal operation'
! !

!CypressRemoval methodsFor: 'loading' stamp: ''!
postLoadDefinition
	
	self error: 'inappropriate to send #postLoadDefinition to a removal operation'
! !

!CypressRemoval methodsFor: 'loading' stamp: ''!
unloadDefinition

	self definition unloadDefinition
! !

!CypressRemoval methodsFor: 'printing' stamp: 'dkh 24/Apr/2012, 1:25:00 am (UTC)'!
printString

	| str |
	str := WriteStream on: String new.
	str 
		nextPutAll: super printString;
		nextPutAll: ' (';
		nextPutAll: self description;
		nextPutAll: ')'.
	^str contents
! !

!CypressRemoval methodsFor: 'dependency' stamp: ''!
provisions
	"Answer list of global names defined by this definition"

	^#()
! !

!CypressRemoval methodsFor: 'dependency' stamp: ''!
requirements
	"Answer list of global names required by this definition"

	^#()
! !

!CypressRemoval class methodsFor: 'instance creation' stamp: ''!
of: aDefinition
	^ self new definition: aDefinition
! !

!CypressSnapshot methodsFor: 'comparing' stamp: ''!
= other
	^ definitions asArray = other definitions asArray
! !

!CypressSnapshot methodsFor: 'enumerating' stamp: ''!
classDefinitions: classBlock methodDefinitions: methodBlock

	self definitions do: [:definition |
		definition classDefinition: classBlock methodDefinition: methodBlock]
! !

!CypressSnapshot methodsFor: 'accessing' stamp: ''!
definitions

	^definitions
! !

!CypressSnapshot methodsFor: 'accessing' stamp: ''!
definitions: aDefinitions

	definitions := aDefinitions
! !

!CypressSnapshot methodsFor: 'patching' stamp: ''!
patchRelativeToBase: aSnapshot
	^ CypressPatch fromBase: aSnapshot toTarget: self
! !

!CypressSnapshot methodsFor: 'loading' stamp: ''!
updatePackage: aPackage
	CypressLoader updatePackage: aPackage withSnapshot: self
! !

!CypressSnapshot class methodsFor: 'instance creation' stamp: ''!
definitions: aDefinitions

	^(self new) definitions: aDefinitions
! !

!Class methodsFor: '*Cypress-Definitions' stamp: 'dkh 24/Apr/2012, 1:54:00 am (UTC)'!
asCypressClassDefinition
	^CypressClassDefinition
		name: self name
		superclassName: self superclass name
		category: self category 
		instVarNames: self instVarNames
		classInstVarNames: self class instVarNames
		comment: self comment
! !

!CompiledMethod methodsFor: '*Cypress-Definitions' stamp: 'jmv 15/Jun/2012, 4:50:00 am (UTC)'!
asCypressMethodDefinition

	^CypressMethodDefinition 
        	className: (self methodClass isMeta ifTrue: [ self methodClass theNonMetaClass ] ifFalse: [ self methodClass ]) name
		classIsMeta: self methodClass isMeta
		selector: self selector
		category: self category
		source: self getSource
		timeStamp: self timeStamp
! !
