grouping
groups
	"Creates nested DCBGroup/DCBRule to represent the classification
	 as a tree (of course, DCBRules are the leafs of this tree) and returns it."
	| groupedRules |
	groupedRules := self groupedRules. "We use a variable to compute it only once."
	^ (self sort: groupedRules keys) collect: [ :key |
		| rulesList |
		rulesList := groupedRules at: key.
		DCGroup
			named: key asString
			children: (self subgroupClassification rules: rulesList; yourself) groups ]