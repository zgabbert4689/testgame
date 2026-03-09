/// @description Insert description here
// You can write your code in this editor
xClamp = clamp(x,(camWidth/2.1+16),room_width-(camWidth/2.1+16))
yClamp = clamp(y,(camHeight/2.1+16),room_height-(camHeight/2.1+16))
xTo = follow.x
yTo = follow.y

x += (xTo - x)/25


y += (yTo - y)/25


camera_set_view_pos(view_camera[0],
xClamp-(camWidth*0.5),
yClamp-(camHeight*0.5));