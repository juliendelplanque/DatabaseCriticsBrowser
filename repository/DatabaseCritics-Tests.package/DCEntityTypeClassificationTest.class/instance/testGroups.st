tests-grouping
testGroups
	| classification |
	classification := DCEntityTypeClassification rules: rules.
	classification groups with:( classification groupedRules keys sorted: classification sortingBlock )do: [ :group :key |
		self assert: group class equals: DCGroup.
		self assert: group groupName equals: key asString ]