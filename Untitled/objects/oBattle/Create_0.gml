instance_deactivate_all(true)


units = [];
turn = 0;
unitTurnOrder = [];
unitRenderOrder = [];


for (var i = 0; i < array_length(enemies); i++){
	enemyUnits[i] = instance_create_depth(x + 325 + (i * 40), y + 35 + (i * 80), depth - 10, oBattleUnitEnemy, enemies[i]);
	array_push(units, enemyUnits[i])
}

for (var i = 0; i < array_length(global.party); i++){
	partyUnits[i] = instance_create_depth(x + 30 + (i * 40), y + 35 + (i * 80), depth - 10, oBattleUnitPlayer, global.party[i]);
	array_push(units, partyUnits[i])
}


unitTurnOrder = array_shuffle(units);

RefreshRenderOrder = function()
{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	array_sort(unitRenderOrder,function(_1, _2){
		return _1.y - _2.y;
	});
	
}
RefreshRenderOrder();