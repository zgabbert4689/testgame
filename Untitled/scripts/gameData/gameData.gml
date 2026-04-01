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
			with (_targets[0]) hp = max(0, hp - _damage);
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
		sprites: { idle: sPlaceholder3 },
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
		sprites: { idle: sPlaceholder4 },
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
		sprites: {idle: sPlaceholder2},
		actions: [],
		AIscript : function(){
		
		}
	}
	,
	johnplaceholder:
	{
		name: "John Placeholder",
		hp: 2,
		hpMax: 2,
		strength: 20,
		sprites: {idle: sPlaceholder1},
		actions: [],
		AIscript : function(){
		
		}
	}
}