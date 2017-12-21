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
        repository: 'https://github.com/PatrikValkovic/pathvis'
		].
    spec
      package: 'PathVis' with: [spec requires: #('Bloc')];
		package: 'PathVis-Tests';
		package: 'PathVis-Errors';
		package: 'PathVis-External';
		package: 'PathVis-ControlMenu'
	].