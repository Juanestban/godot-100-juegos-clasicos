class_name TetrisConstants

enum BlockColor {
	RED,
	BLUE,
	YELLOW,
	GREEN,
	PURPLE,
	EMPTY
}

enum Shape {
	SQUARE,
	LARGE,
	ZERO,
	SALT,
	ITER,
	TRACK
}

const PIECES_ROTATE = {
	Shape.SQUARE: [
		[
			[1, 1],
			[1, 1]
		]
	],
	Shape.LARGE: [
		[
			[1, 0],
			[1, 0],
			[1, 1]
		],
		[
			[1, 1, 1],
			[1, 0, 0]
		],
		[
			[1, 1],
			[0, 1],
			[0, 1]
		],
		[
			[0, 0, 1],
			[1, 1, 1]
		]
	],
	Shape.ZERO: [
		[
			[1, 1, 0],
			[0, 1, 1],
		],
		[
			[0, 1],
			[1, 1],
			[1, 0],
		]
	],
	Shape.SALT: [
		[
			[0, 1, 1],
			[1, 1, 0],
		],
		[
			[1, 0],
			[1, 1],
			[0, 1],
		]
	],
	Shape.ITER: [
		[
			[1, 1, 1, 1]
		],
		[
			[1],
			[1],
			[1],
			[1],
		]
	],
	Shape.TRACK: [
		[
			[0, 1, 0],
			[1, 1, 1]
		],
		[
			[1, 0],
			[1, 1],
			[1, 0]
		],
		[
			[1, 1, 1],
			[0, 1, 0]
		],
		[
			[0, 1],
			[1, 1],
			[0, 1]
		],
	],
}

const SHAPES = [
	# 0:square
	[
		[1, 1],
		[1, 1]
	],
	# 1:large
	[
		[1, 0],
		[1, 0],
		[1, 1]
	],
	# 2:zero
	[
		[1, 1, 0],
		[0, 1, 1],
	],
	# 3:salt
	[
		[0, 1, 1],
		[1, 1, 0],
	],
	# 4:iter
	[
		[1, 1, 1, 1],
	],
	# 5:track
	[
		[0, 1, 0],
		[1, 1, 1]
	]
]

const WIDTH_BOARD = 14
const HEIGHT_BOARD = 18

# row:18[ col:14[] ]
const BOARD = [
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
	[{ "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }, { "value": 0, "color": -1 }],
]
