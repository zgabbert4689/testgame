Menu(x+10,y+10,
[
	["test1", -1, -1, true],
	["subtest", SubMenu,
		[[
			["sub1", -1, -1, true],
			["leavesub", MenuGoBack, -1, true]
		]],
		true
	],
	["test2", -1, -1, true]
]);



