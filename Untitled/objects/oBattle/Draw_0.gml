/// @description Insert description here
// You can write your code in this editor

draw_sprite(sBattleBg,0,x,y)

var unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
	}
}

draw_sprite_stretched(sDialogue,0,x + 90, y + 157,385,120)
draw_sprite_stretched(sDialogue,0,x - 8, y + 157,117,120)

#macro COLUMN_ENEMY 33
#macro COLUMN_NAME 130
#macro COLUMN_HP 230
#macro COLUMN_MP 345

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_gray)
 

draw_text_transformed(x+COLUMN_ENEMY, y + 180, "ENEMY",0.45,0.45,0)
draw_text_transformed(x+COLUMN_NAME, y + 180, "NAME",0.45,0.45,0)
draw_text_transformed(x+COLUMN_HP, y + 180, "HP",0.45,0.45,0)
draw_text_transformed(x+COLUMN_MP, y + 180, "MP",0.45,0.45,0)

draw_set_color(c_white)
var drawLimit = 5;
var drawn = 0;

for (var i = 0; (i<array_length(enemyUnits)) && (drawn < drawLimit); i++)
{
	var char = enemyUnits[i]
	if (char.hp > 0)
	{
		drawn++;
		draw_set_color(c_white)
		if (char.id == unitWithCurrentTurn){ draw_set_color(c_yellow) }
		draw_text_transformed(x+COLUMN_ENEMY, y + 190 + (i * 11), char.name, 0.37, 0.37, 0)
	}
}

for (var i = 0; i < array_length(partyUnits); i++)
{
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	var char = partyUnits[i]
	if (char.id == unitWithCurrentTurn) draw_set_color(c_yellow)
	if (char.hp <= 0) draw_set_color(c_red)
	draw_text_transformed(x + COLUMN_NAME, y+190 + (i * 11), char.name, 0.37, 0.37, 0)
	draw_set_halign(fa_right)
	
	draw_set_color(c_white)
	if (char.hp < (char.hpMax * 0.5)) draw_set_color(c_orange)
	if (char.hp <= 0) draw_set_color(c_red)
	draw_text_transformed(x + COLUMN_HP + 10, y+190 + (i * 11), string(char.hp) + "/" + string(char.hpMax), 0.37, 0.37, 0)
	
	draw_set_color(c_white)
	if (char.mp < (char.mpMax * 0.5)) draw_set_color(c_orange)
	if (char.mp <= 0) draw_set_color(c_red)
	draw_text_transformed(x + COLUMN_MP + 10, y+190 + (i * 11), string(char.mp) + "/" + string(char.mpMax), 0.37, 0.37, 0)
}