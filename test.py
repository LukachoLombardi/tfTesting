from time import sleep

from PawnChessTrainer import PawnChessTrainer

trainer = PawnChessTrainer()

rand_boards = trainer.generate_multiple_random_boards(16, 8, 8, range(0, 16))

for board in rand_boards:
    solution = trainer.calculate_best_move_64(board)
    trainer.draw_board(board)
    sleep(2)
    trainer.draw_board(solution)
    sleep(2)
