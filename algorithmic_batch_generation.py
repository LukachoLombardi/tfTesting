import random
from time import sleep
from PawnChessTrainer import pp
from PawnChessTrainer import PawnChessTrainer

trainer = PawnChessTrainer()
default_board = [2] * 8 + [0] * 48 + [1] * 8


def reverse_colors(board):
    for field_index in range(len(board)):
        if board[field_index] == 1:
            board[field_index] = 2
        elif board[field_index] == 2:
            board[field_index] = 1
    return board


def generate_new_batch(amount):
    file_blocked = True

    board_variants = []
    board_solutions = []

    last_board = [0] * 64

    for i in range(amount):
        board = default_board.copy()
        while board != last_board:
            last_board = board.copy()

            board_variants.append(board)
            board = trainer.calculate_best_move_64(board, randomize=False)  # you can change this and the comments or whatever lol
            board_solutions.append(
                trainer.convert_boards_to_field_directions(board_variants[len(board_variants) - 1], board))

            board.reverse()
            board = reverse_colors(board.copy())
            """board_variants.append(board)"""
            board = trainer.calculate_best_move_64(board)
            """board_solutions.append(
                trainer.convert_boards_to_field_directions(board_variants[len(board_variants) - 1], board))"""

            board.reverse()
            board = reverse_colors(board.copy())

    indexes_to_delete = []
    for index in range(len(board_solutions)):
        board_solutions[index] = trainer.convert_field_directions_to_movement_int(board_solutions[index])

        if board_solutions[index] == 256:
            indexes_to_delete.append(index)

    indexes_to_delete.reverse()
    for index in indexes_to_delete:
        board_variants.pop(index)
        board_solutions.pop(index)

    data_file = open("algorithmic_data.py", "w")
    data_file.write(f"board_variants = {board_variants}\nboard_solutions = {board_solutions}")
    data_file.close()


def generate_randomized_solutions(amount: int):
    start_boards: list = []
    results: list = []
    for i in range(amount):
        current_board = (trainer.generate_random_board(8, random.randint(1, 16)))
        start_boards.append(current_board)
        current_result = (trainer.calculate_best_move_64(current_board.copy(), randomize=False))
        results.append(trainer.convert_field_directions_to_movement_int(trainer.convert_boards_to_field_directions(
            current_board, current_result)))

    indexes_to_delete = []
    for index in range(len(results)):

        if results[index] == 256:
            indexes_to_delete.append(index)

    indexes_to_delete.reverse()
    for index in indexes_to_delete:
        start_boards.pop(index)
        results.pop(index)

    data_file = open("algorithmic_data.py", "w")
    data_file.write(f"board_variants = {start_boards}\nboard_solutions = {results}")
    data_file.close()

