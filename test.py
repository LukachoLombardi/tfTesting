from time import sleep
from PawnChessTrainer import pp
from PawnChessTrainer import PawnChessTrainer

trainer = PawnChessTrainer()

board = [2]*8 + [0]*48 + [1]*8


def reverse_colors():
    for field_index in range(len(board)):
        if board[field_index] == 1:
            board[field_index] = 2
        elif board[field_index] == 2:
            board[field_index] = 1


while True:
    board = trainer.calculate_best_move_64(board)
    trainer.draw_board(board)

    pp.pause(1)

    board.reverse()
    reverse_colors()

    board = trainer.calculate_best_move_64(board)

    board.reverse()
    reverse_colors()

    trainer.draw_board(board)

    pp.pause(1)

