from time import sleep
from PawnChessTrainer import pp
from PawnChessTrainer import PawnChessTrainer

trainer = PawnChessTrainer()

def generate_new_batch(amount ):
    default_board = [2] * 8 + [0] * 48 + [1] * 8

    board_variants = []
    board_solutions = []
    def reverse_colors():
        for field_index in range(len(board)):
            if board[field_index] == 1:
                board[field_index] = 2
            elif board[field_index] == 2:
                board[field_index] = 1

    last_board = [0] * 64

    for i in range(amount):
        board = default_board.copy()
        while board != last_board:
            last_board = board.copy()

            board_variants.append(board)
            board = trainer.calculate_best_move_64(board)
            board_solutions.append(trainer.convert_boards_to_field_directions(board_variants[len(board_variants) - 1], board))

            board.reverse()
            reverse_colors()
            board_variants.append(board)
            board = trainer.calculate_best_move_64(board)
            board_solutions.append(trainer.convert_boards_to_field_directions(board_variants[len(board_variants) - 1], board))

            board.reverse()
            reverse_colors()

    for index in range(len(board_solutions)):
        board_solutions[index] = trainer.convert_field_directions_to_movement_int(board_solutions[index])

    data_file = open("algorithmic_data.py", "w")
    data_file.write(f"board_variants = {board_variants}\nboard_solutions = {board_solutions}")
    data_file.close()
