/*
	Civilization Unique Ability
	Authors: MC
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,																	Kind			)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',										'KIND_TRAIT'	),
		('MODTYPE_BOP_TREECLUB_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',				'KIND_MODIFIER'	);
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,											Name,												Description											)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',					'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_NAME',			'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_BOP_APES',		'TRAIT_CIVILIZATION_BOP_TREECLUB'				);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId										)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',		'MODIFIER_BOP_TREECLUB_GRANARY_YIELD'						);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,												ModifierType,												SubjectRequirementSetId,			RunOnce,		Permanent	)
VALUES	('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		NULL,								0,				1			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'BuildingType',					'BUILDING_GRANARY'						),
		('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'Amount',						4										);

		-- +4 Food from Bananas.
-- Types
INSERT INTO Types
    (Type,                                      Kind)
VALUES  ('TRAIT_CIVILIZATION_BOP_TREECLUB',    'KIND_TRAIT');

-- Traits
INSERT INTO Traits
		 (TraitType,      Name,    Description)
VALUES  ('TRAIT_CIVILIZATION_BOP_TREECLUB',  'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_NAME',  'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_DESCRIPTION');

-- CivilizationTraits
INSERT INTO CivilizationTraits
		(CivilizationType,    TraitType)
VALUES  ('CIVILIZATION_BOP_APES',  'TRAIT_CIVILIZATION_BOP_TREECLUB');

-- Requirements
INSERT INTO Requirements
		 (RequirementId,                        RequirementType)
VALUES  ('BOP_REQUIRES_PLOT_HAS_BANANAS',  'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES');

-- RequirementArguments
INSERT INTO RequirementArguments
		(RequirementId,                        Name,            Value)
VALUES  ('BOP_REQUIRES_PLOT_HAS_BANANAS',  'ResourceType',  'RESOURCE_BANANAS');

-- RequirementSets
INSERT INTO RequirementSets
		 (RequirementSetId,             RequirementSetType)
VALUES  ('BOP_PLOT_HAS_BANANAS',  'REQUIREMENTSET_TEST_ALL');

-- RequirementSetRequirements
INSERT INTO RequirementSetRequirements
		(RequirementSetId,            RequirementId)
VALUES  ('BOP_PLOT_HAS_BANANAS',  'BOP_REQUIRES_PLOT_HAS_BANANAS');

-- Modifiers
INSERT INTO Modifiers
		(ModifierId,      ModifierType,      SubjectRequirementSetId)
VALUES  ('BOP_TRAIT_FOOD_FROM_BANANAS',  'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  'BOP_PLOT_HAS_BANANAS');

-- ModifierArguments
INSERT INTO ModifierArguments
    (	ModifierId,                          Name,        Value)
VALUES  ('BOP_TRAIT_FOOD_FROM_BANANAS',  'YieldType',  'YIELD_FOOD'),
        ('BOP_TRAIT_FOOD_FROM_BANANAS',  'Amount',      4);

-- TraitModifiers
INSERT INTO TraitModifiers
		(TraitType,                              ModifierId)
VALUES  ('TRAIT_CIVILIZATION_BOP_TREECLUB',  'BOP_TRAIT_FOOD_FROM_BANANAS');