/// @description Insert description here
// You can write your code in this editor

Menu(x,y,[
	["test1", -1, -1, true],
	["subtest", SubMenu,
		[[
			["sub1", -1, -1, true],
			["leavesub", MenuGoBack, -1, true]
		]],
		true
	],
	["test2", -1, -1, true]
])


