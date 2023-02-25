import numpy as np
from PIL import Image
from numpy import sqrt
from tensorflow import keras
from PawnChessTrainer import PawnChessTrainer
from algorithmic_batch_generation import default_board, reverse_colors
from matplotlib import pyplot as plt

board = default_board.copy()

model: keras.Model
model = keras.models.load_model("pawn_chess_model_2.0.1")
trainer = PawnChessTrainer()

difference_mappings = {
    0: 7, # right
    1: 8,  # straight
    2: 9,  # left
    3: 16  # 2 straight
}

def is_move_valid(board_in: list, move_int: int) -> bool:
    working_board = board_in.copy()
    field = int(move_int/4)
    move = move_int%4
    if board_in[field] != 1:
        print("wrong color")
        return False
    match move:
        case 0|2:
            if board_in[field - difference_mappings[move]] != 2 or\
                    trainer.are_in_same_row(field - difference_mappings[move], field):
                print("attacked piece missing")
                return False
        case 1:
            if board_in[field - difference_mappings[move]] != 0:
                print("blocked path")
                return False
        case 3:
            if field not in range(56, 64):
                print("not in first row")
                return False
    return True

field_color_dict = {
    0: Image.open("white.png"),
    1: Image.open("blue.png"),
    2: Image.open("red.png"),
}

blocked_moves = 0
predicted_moves = 0
def draw_board(in_board: list):
    plt.Figure(figsize=(10, 10))
    row_size = int(sqrt(len(in_board)))
    for i in range(len(in_board)):
        plt.subplot(row_size, row_size, i + 1)
        if i == len(in_board)-1:
            plt.cla()
            plt.text(s=f"blocked_moves: {blocked_moves}", x=-3, y=1, fontsize=10)
            plt.text(s=f"predicted_moves: {predicted_moves}", x=-3, y=1.5, fontsize=10)
        plt.grid = False
        plt.xticks([])
        plt.yticks([])
        plt.text(-0.4, 0.25, i, size=18)
        plt.imshow(field_color_dict[in_board[i]])
        plt.fill()
    plt.show(block=False)




draw_board(board)
end_game = False
c = 0
while True:
    if c%2==0:
        alg_board = trainer.calculate_best_move_64(board.copy(), verbose=False)
        if alg_board == board:
            print("game should be over")
            end_game = True

        result = np.argmax(model.predict([board]))
        print(result)

        if end_game:
            if result == 256:
                print("algorithm and NN agree on ending the game")
            else:
                print("algorithm is ending the game, NN disagrees")
        elif not end_game and result == 256:
            print("NN wants to end the game, algorithm disagrees")
            blocked_moves += 1

        if result != 256:
            print(f"{int(result / 4)} move {result % 4} to {int(result / 4) - difference_mappings[result % 4]}")
            temporary_board = trainer.transform_board(board.copy(), int(result / 4),
                                                      int(result / 4) - difference_mappings[result % 4])
            is_valid = is_move_valid(board, int(result))
            if is_valid:
                board = temporary_board.copy()
                print("valid move")
            else:
                print("invalid move")
                blocked_moves += 1

            if board == alg_board:
                print("NN made predicted move")
                predicted_moves += 1

        print(f"blocked_moves: {blocked_moves}")
        print(f"predicted_moves: {predicted_moves}")

        draw_board(board.copy())
        print("\n")
    else:
        board = trainer.calculate_best_move_64(board.copy())
        board.reverse()
        draw_board(reverse_colors(board.copy()))
        board.reverse()

    if end_game:
        break

    plt.pause(1)

    board.reverse()
    board = reverse_colors(board.copy())
    c+=1
