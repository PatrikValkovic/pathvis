baselines
baseline: spec
  <baseline>

  spec for: #common do: [
	 spec
   		baseline: 'Bloc'
      with: [ spec repository: 'github://pharo-graphics/Bloc:pharo6.1/src' ].
    spec configuration: 'PathVis' with: [
      spec
        version: #stable;
        repository: 'https://github.com/PatrikValkovic/pathvis'; 
		  requires: #('Bloc')].
    spec
      package: 'PathVis';
		package: 'PathVis-Tests';
		package: 'PathVis-Errors';
		package: 'PathVis-External'
	].