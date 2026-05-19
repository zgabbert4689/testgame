enum MODE {
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
	
}
global.actionLibrary =
{
	attack: 
	{
		name: "attack",
		description: "{0} makes an attack",
		subMenu: -1,
		targetRequired: true,
		targetAll: MODE.NEVER,
		userAnimation: "attacks",
		effectSprite: sAttackEffect,
		effectOnTarget: MODE.ALWAYS,
		func: function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage, 0)
		}
	}
}

global.party = 
[
	{
		name: "Roen",
		hp: 30,
		hpMax: 30,
		mp: 8,
		mpMax: 8,
		strength: 7,
		sprites: { idle: sPlaceholder3, attacks: sPlaceholder3atk, down: sDownplaceholder },
		actions: []
	}
	,
	{
		name: "Zane",
		hp: 20,
		hpMax: 20,
		mp: 15,
		mpMax: 15,
		strength: 4,
		sprites: { idle: sPlaceholder4, attacks: sPlaceholder4atk, down: sDownplaceholder },
		actions:[]
	}
]
global.enemies =
{
	policerecruit:
	{
		name: "Police Recruit",
		hp: 25,
		hpMax: 25,
		strength: 5,
		sprites: {idle: sPlaceholder2, attacks: sPlaceholder2atk},
		actions: [global.actionLibrary.attack],
		AIscript : function(){
			var _action = actions[0]
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0)
			})
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)]
			return [_action, _target]
		}
	}
	,
	johnplaceholder:
	{
		name: "John Placeholder",
		hp: 2,
		hpMax: 2,
		strength: 20,
		sprites: {idle: sPlaceholder1, attacks: sPlaceholder1atk},
		actions: [global.actionLibrary.attack],
		AIscript : function(){
			var _action = actions[0]
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0)
			})
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)]
			return [_action, _target]
		}
	}
}