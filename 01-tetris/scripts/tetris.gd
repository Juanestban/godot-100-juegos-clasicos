class_name Tetris extends Node2D

@export var shape: TetrisConstants.Shape = TetrisConstants.Shape.SQUARE

@onready var blocks_tilemap_layer: TileMapLayer = $BlocksTileMapLayer
@onready var cooldown: Timer = $Cooldown

@onready var is_game_over = false
@onready var base_piece_color = randi_range(0, 5)
@onready var width_board = TetrisConstants.WIDTH_BOARD
@onready var height_board = TetrisConstants.HEIGHT_BOARD
@onready var board = TetrisConstants.BOARD.duplicate(true)

@onready var piece = {
	"position": { "x": 6, "y": 1 },
	"shape": TetrisConstants.SHAPES[shape]
}

func _ready():
	cooldown.autostart = true
	cooldown.start()

func _process(_delta):
	move()
	update()

func move():
	if Input.is_action_just_pressed("right"):
		piece.position.x += 1

		if check_collision():
			piece.position.x -= 1
		return

	if Input.is_action_just_pressed("left"):
		piece.position.x -= 1

		if check_collision():
			piece.position.x += 1
		return

	if Input.is_action_just_pressed("rotate"):
		rotate_piece()
		return

	if Input.is_action_just_pressed("down"):
		piece.position.y += 1

		if check_collision():
			piece.position.y -= 1
			solidify_piece()
			remove_row()
		return

func draw():
	for row in range(height_board):
		for col in range(width_board):
			var value = board[row][col]

			set_cell(Vector2i(col, row), value == 0)

	for y in range(piece.shape.size()):
		var row = piece.shape[y]

		for x in range(row.size()):
			var value = piece.shape[y][x]
			var piece_x = piece.position.x
			var piece_y = piece.position.y

			set_cell(Vector2i(x + piece_x, y + piece_y), value == 0, base_piece_color)

func update():
	if not is_game_over:
		draw()

func check_collision() -> bool:
	if piece.position.x < 0 or piece.position.x >= width_board - 1 or piece.position.y >= height_board - 1:
		return true

	var piece_x = piece.position.x
	var piece_y = piece.position.y

	for y in range(piece.shape.size()):
		var row = piece.shape[y]

		if y + piece_y >= height_board:
			return true

		for x in range(row.size()):
			var value = piece.shape[y][x]
			if x + piece_x >= width_board:
				return true

			if value == 1 and board[y + piece_y][x + piece_x] == 1:
				return true

	return false

func timeout_cooldown():
	piece.position.y += 1

	if check_collision():
		piece.position.y -= 1
		solidify_piece()
		remove_row()

	if not is_game_over:
		cooldown.start()
	else:
		cooldown.stop()

func solidify_piece():
	for y in range(piece.shape.size()):
		var row = piece.shape[y]

		for x in range(row.size()):
			var value = piece.shape[y][x]
			var piece_x = piece.position.x
			var piece_y = piece.position.y

			if value == 1:
				board[y + piece_y][x + piece_x] = 1

	piece.position.x = width_board / 2 - 2
	piece.position.y = 1
	piece.shape = TetrisConstants.SHAPES[randi_range(0, 4)]
	base_piece_color = randi_range(0, 5)

	if check_collision():
		print('game over!!!')
		is_game_over = true
		board = TetrisConstants.BOARD.duplicate()

func rotate_piece():
	var rotated = []

	for i in range(piece.shape[0].size()):
		var row = []

		for j in range(piece.shape.size()):
			row.append(piece.shape[j - piece.shape.size()][i])

		rotated.append(row)

	piece.shape = rotated

func remove_row():
	for y in range(board.size()):
		var row = board[y]
		
		if row.all(func(value): return value == 1):
			board.remove_at(y)
			var new_row = []
			new_row.resize(width_board)
			new_row.fill(0)
			var new_board = [new_row]
			new_board.append_array(board)
			board = new_board

func set_cell(coords: Vector2i, is_empty = false, color: int = TetrisConstants.BlockColor.YELLOW):
	var source_id = 0
	var atlas_coords = Vector2i(color, 0) if not is_empty else Vector2i(5, 0)

	blocks_tilemap_layer.set_cell(coords, source_id, atlas_coords)
