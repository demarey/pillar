Class {
	#name : #BaselineOfPillarApp,
	#superclass : #BaselineOf,
	#category : #BaselineOfPillarApp
}

{ #category : #baselines }
BaselineOfPillarApp >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self
			chrysal: spec;
			containersPropertyEnvironment: spec;
			microdown: spec;
			mustache: spec;
			petitParser2: spec.

		spec
			package: 'Pillar-MicrodownToPillarConverter' with: [ spec requires: #( 'Pillar-Core' 'Microdown' ) ];
			package: 'Pillar-Microdown'
			with: [ spec requires: #( 'Pillar-MicrodownToPillarConverter' 'Pillar-Model' 'Pillar-ExporterCore' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-ExporterMicrodown' with: [ spec requires: #( 'Microdown' 'Pillar-PetitPillar' 'Pillar-ExporterCore' ) ];
			package: 'Pillar-Core';
			package: 'Pillar-Tests-Core' with: [ spec requires: #( 'Pillar-Core' 'Pillar-ExporterText' 'Pillar-ExporterPillar' 'Pillar-PetitPillar' ) ];
			package: 'Pillar-Model' with: [ spec requires: #( 'Pillar-Core' ) ];
			package: 'Pillar-Chrysal-Generator' with: [ spec requires: #( 'Chrysal' ) ];
			package: 'Pillar-Cli' with: [ spec requires: #( 'Pillar-ExporterCore' 'Pillar-Chrysal' ) ];
			package: 'Pillar-Chrysal' with: [ spec requires: #( 'Pillar-ExporterCore' ) ];
			package: 'Pillar-ExporterAsciiDoc' with: [ spec requires: #( 'Pillar-ExporterCore' ) ];
			package: 'Pillar-ExporterBeamer' with: [ spec requires: #( 'Pillar-ExporterLaTeX' ) ];
			package: 'Pillar-ExporterCore' with: [ spec requires: #( 'Pillar-Model' 'ContainersPropertyEnvironment' ) ];
			package: 'Pillar-ExporterDeckJS' with: [ spec requires: #( 'Pillar-ExporterHTML' ) ];
			package: 'Pillar-ExporterEPub' with: [ spec requires: #( 'Pillar-ExporterCore' 'Pillar-ExporterHTML' ) ];
			package: 'Pillar-Tests-ExporterEPub' with: [ spec requires: #( 'Pillar-ExporterEPub' 'Pillar-Tests-ExporterCore' 'Pillar-Tests-ExporterHTML' ) ];
			package: 'Pillar-ExporterHTML' with: [ spec requires: #( 'Pillar-ExporterCore' ) ];
			package: 'Pillar-ExporterLaTeX' with: [ spec requires: #( 'Pillar-ExporterCore' 'Pillar-ExporterPillar' ) ];
			package: 'Pillar-ExporterMarkdown' with: [ spec requires: #( 'Pillar-ExporterCore' 'Pillar-ExporterHTML' ) ];
			package: 'Pillar-ExporterPillar' with: [ spec requires: #( 'Pillar-ExporterCore' 'Pillar-PetitPillar' ) ];
			package: 'Pillar-ExporterText' with: [ spec requires: #( 'Pillar-ExporterCore' ) ];
			package: 'Pillar-CodeBlockEvaluator' with: [ spec requires: #( 'Pillar-Core' ) ];
			package: 'Pillar-PetitPillar' with: [ spec requires: #( 'PetitParser2Core' 'Pillar-Model' ) ];
			package: 'Pillar-Pharo-Tools' with: [ spec requires: #( 'Pillar-Model' 'All exporters' ) ];
			package: 'Pillar-Project' with: [ spec requires: #( 'Pillar-Model' 'All exporters' ) ];
			package: 'Pillar-BookTester' with: [ spec requires: #( 'Pillar-Project' ) ];
			package: 'Pillar-Tests-Cli' with: [ spec requires: #( 'Pillar-Cli' ) ];
			package: 'Pillar-Tests-ExporterAsciiDoc' with: [ spec requires: #( 'Pillar-ExporterAsciiDoc' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-Tests-ExporterBeamer' with: [ spec requires: #( 'Pillar-ExporterBeamer' 'Pillar-Tests-ExporterLaTeX' ) ];
			package: 'Pillar-Tests-ExporterCore' with: [ spec requires: #( 'Pillar-Tests-Model' 'Pillar-ExporterCore' ) ];
			package: 'Pillar-Tests-ExporterDeckJS' with: [ spec requires: #( 'Pillar-ExporterDeckJS' 'Pillar-Tests-ExporterHTML' ) ];
			package: 'Pillar-Tests-ExporterHTML' with: [ spec requires: #( 'Pillar-ExporterHTML' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-Tests-ExporterLaTeX' with: [ spec requires: #( 'Pillar-ExporterLaTeX' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-Tests-ExporterMarkdown' with: [ spec requires: #( 'Pillar-ExporterMarkdown' 'Pillar-Tests-ExporterCore' 'Pillar-Tests-ExporterHTML' ) ];
			package: 'Pillar-Tests-ExporterPillar' with: [ spec requires: #( 'Pillar-ExporterPillar' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-Tests-ExporterText' with: [ spec requires: #( 'Pillar-ExporterText' 'Pillar-Tests-ExporterCore' ) ];
			package: 'Pillar-Tests-Model'
			with: [ spec requires: #( 'Pillar-Model' 'Pillar-ExporterPillar' 'Pillar-ExporterText' 'Pillar-Core' 'Pillar-Tests-PetitPillar' ) ];
			package: 'Pillar-Tests-Model-PetitPillar'
			with: [ spec requires: #( 'Pillar-Core' 'Pillar-Tests-Core' 'Pillar-Tests-Model' 'Pillar-PetitPillar' 'Pillar-Model' 'Pillar-Tests-PetitPillar' ) ];
			package: 'Pillar-Tests-Model-ExporterText' with: [ spec requires: #( 'Pillar-Core' 'Pillar-PetitPillar' 'Pillar-Tests-ExporterText' ) ];
			package: 'Pillar-Tests-Model-ExporterPillar' with: [ spec requires: #( 'Pillar-Model' 'Pillar-PetitPillar' 'Pillar-Tests-ExporterPillar' ) ];
			package: 'Pillar-Tests-PetitPillar' with: [ spec requires: #( 'PetitParser2Core' 'Pillar-PetitPillar' ) ];
			package: 'Pillar-Tests-BookTester' with: [ spec requires: #( 'Pillar-BookTester' ) ];
			package: 'Pillar-Tests-Project' with: [ spec requires: #( 'Pillar-Project' ) ];
			package: 'Pillar-Tests-Integration' with: [ spec requires: #( 'Pillar-Project' ) ].

		spec
			group: 'ALL' with: #( 'All tests' 'All but tests' );
			group: 'All but tests'
			with: #( 'All exporters' 'Pillar-Cli' 'Pillar-Pharo-Tools' 'parser' 'Pillar-Project' 'Pillar-BookTester' 'Pillar-CodeBlockEvaluator' );
			group: 'All exporter tests'
			with: #( 'html exporter tests' 'latex exporter tests' 'beamer exporter tests' 'deckjs exporter tests' 'markdown exporter tests' 'pillar exporter tests'
				   'text exporter tests' 'asciidoc exporter tests' 'ePub exporter tests' );
			group: 'All exporters'
			with: #( 'html exporter' 'latex exporter' 'beamer exporter' 'deckjs exporter' 'markdown exporter' 'pillar exporter' 'text exporter' 'asciidoc exporter'
				   'ePub exporter' );
			group: 'All tests'
			with:
				#( 'All exporter tests' 'Pillar-Tests-Model' 'Pillar-Tests-ExporterCore' #'Pillar-Tests-Cli' 'parser tests' 'Pillar-Tests-Project' 'Pillar-Tests-Integration' );
			group: 'asciidoc exporter' with: #( #'Pillar-ExporterAsciiDoc' );
			group: 'asciidoc exporter tests' with: #( #'Pillar-Tests-ExporterAsciiDoc' 'ePub exporter' );
			group: 'beamer exporter' with: #( 'Pillar-ExporterBeamer' );
			group: 'beamer exporter tests' with: #( 'Pillar-Tests-ExporterBeamer' );
			group: 'deckjs exporter' with: #( 'Pillar-ExporterDeckJS' );
			group: 'deckjs exporter tests' with: #( 'Pillar-Tests-ExporterDeckJS' );
			group: 'ePub exporter' with: #( #'Pillar-ExporterEPub' );
			group: 'ePub exporter tests' with: #( #'Pillar-Tests-ExporterEPub' );
			group: 'html exporter' with: #( 'Pillar-ExporterHTML' );
			group: 'html exporter tests' with: #( 'Pillar-Tests-ExporterHTML' );
			group: 'booktester' with: #( 'Pillar-BookTester' );
			group: 'booktester tests' with: #( 'Pillar-Tests-BookTester' );
			group: 'latex exporter' with: #( 'Pillar-ExporterLaTeX' );
			group: 'latex exporter tests' with: #( 'Pillar-Tests-ExporterLaTeX' );
			group: 'markdown exporter' with: #( 'Pillar-ExporterMarkdown' 'parser' );
			group: 'markdown exporter tests' with: #( 'Pillar-Tests-ExporterMarkdown' );
			group: 'parser' with: #( 'Pillar-PetitPillar' );
			group: 'parser tests' with: #( 'Pillar-Tests-PetitPillar' );
			group: 'pillar exporter' with: #( 'Pillar-ExporterPillar' );
			group: 'pillar exporter tests' with: #( 'Pillar-Tests-ExporterPillar' );
			group: 'text exporter' with: #( 'Pillar-ExporterText' );
			group: 'text exporter tests' with: #( 'Pillar-Tests-ExporterText' ) ].

	spec for: #windows do: [
		self processWrapper: spec.
		spec package: 'Pillar-Project' with: [ spec requires: 'ProcessWrapper' ] ].


	spec for: #( unix osx ) do: [
		self osSubProcess: spec.
		spec package: 'Pillar-Project' with: [ spec requires: 'OSSubprocess' ] ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> chrysal: spec [

	spec baseline: 'Chrysal' with: [ spec repository: 'github://Ducasse/Chrysal:v1.0.0/src' ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> containersPropertyEnvironment: spec [

	spec baseline: 'ContainersPropertyEnvironment' with: [ spec repository: 'github://Ducasse/Containers-PropertyEnvironment:v1.0.0' ]
]

{ #category : #baselines }
BaselineOfPillarApp >> customProjectAttributes [
    "Edit to return a collection of any custom attributes e.g. for conditional loading: Array with: #'Condition1' with: #'Condition2.
	For more information see: http://code.google.com/p/metacello/wiki/CustomProjectAttrributes "

	| attributes |
	attributes := OrderedCollection new.
	OSPlatform current isWindows ifTrue: [ attributes add: #windows ].
	OSPlatform current isUnix    ifTrue: [ attributes add: #unix ].
	OSPlatform current isMacOS   ifTrue: [ attributes add: #osx ].
	^ attributes asArray
]

{ #category : #dependencies }
BaselineOfPillarApp >> microdown: spec [

	spec baseline: 'Microdown' with: [ spec repository: 'github://pillar-markup/Microdown:v2.3.1/src' ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> mustache: spec [

	spec baseline: 'Mustache' with: [
		spec
			repository: 'github://noha/mustache:v1.0/repository';
			loads: #( 'Core' 'Tests' ) ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> osSubProcess: spec [

	spec baseline: 'OSSubprocess' with: [ spec repository: 'github://pharo-contributions/OSSubprocess:v1.4.0/repository' ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> petitParser2: spec [

	spec baseline: 'PetitParser2Core' with: [ spec repository: 'github://kursjan/petitparser2' ]
]

{ #category : #dependencies }
BaselineOfPillarApp >> processWrapper: spec [

	spec configuration: 'ProcessWrapper' with: [
		spec
			versionString: '1.2';
			repository: 'http://smalltalkhub.com/mc/hernan/ProcessWrapper/main' ]
]
