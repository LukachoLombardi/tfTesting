from matplotlib import pyplot as pp
from PIL import Image
from random import randint
from pickle import dump, load

import warnings

warnings.filterwarnings("ignore")


class PawnChessTrainer:
    field_color_dict = {
        0: Image.open("white.png"),
        1: Image.open("blue.png"),
        2: Image.open("red.png"),
    }

    _row_size = 8

    @property
    def row_size(self):
        return self._row_size

    @row_size.setter
    def row_size(self, value):
        self.row_size = value
        self._board_length = value ** 2

    _board_length = _row_size ** 2

    @property
    def board_length(self):
        return self._board_length

    # draws a board of size len(board) from a list containing a square board
    def draw_board(self, board: list):
        if len(board) != self.board_length:
            raise Exception(f"board does not match expected length of {self.board_length}")

        pp.Figure(figsize=(10, 10))
        for i in range(self.board_length):
            row_size = int(self.row_size)
            pp.subplot(row_size, row_size, i + 1)
            pp.grid = False
            pp.xticks([])
            pp.yticks([])
            pp.text(-0.4, 0.25, i, size=18)
            pp.imshow(self.field_color_dict[board[i]])
            pp.fill()
        pp.show(block=False)

    # then asks users to enter a pawn move using startfield-destfield notation
    # or 0 if no move should be made. Afterwards it displays the solved board and a cleared one seperated by delays
    def prompt_solution(self, board: list, input_start, input_destination):
        board_variant = list(board)
        solved_board = list(board)

        start_int = int(input_start)
        solved_board[int(input_destination)] = board_variant[start_int]
        solved_board[start_int] = 0

        self.draw_board(solved_board)

        return solved_board

    # generates a random board with size size**2 and the amount of figures specified in figs.
    # Decides colors/sides randomly.
    # included_fields can be specified using indexes of a generated board to limit generation to only some fields.
    def generate_random_board(self, row_size: int, figs: int, included_fields=None, randomize_pawns=True) -> list:
        size = row_size ** 2
        if figs > size or (included_fields is not None and figs > len(included_fields)):
            raise Exception("number of pawns is greater than space on board")

        working_board = list(size * [0])
        used_fields = []

        range_value = figs
        if randomize_pawns:
            range_value = randint(1, figs)
        for i in range(range_value):
            random_color = randint(1, 2)

            while True:
                if included_fields is None:
                    random_field_index = randint(0, size - 1)
                else:
                    included_fields_random_index = randint(0, len(included_fields) - 1)
                    random_field_index = included_fields[included_fields_random_index]

                if random_field_index not in used_fields:
                    used_fields.append(random_field_index)
                    break
                # print(f"shuffling {random_field_index}, {random_color}") # debug endless loop

            working_board[random_field_index] = random_color
            # print(f"iteration {i}")   #used for debugging board generation
            # print(f"color {random_color}")
            # print(f"field {random_field_index}")

        return working_board

    def generate_multiple_random_boards(self, amount: int, row_size: int, figs: int, included_fields=None, randomize_pawns=True) -> list[list]:
        generated_boards = []
        for i in range(amount):
            while True:
                generated_board = self.generate_random_board(row_size, figs, included_fields, randomize_pawns)
                if generated_board not in generated_boards:
                    generated_boards.append(generated_board)
                    break
        return generated_boards

    def _deserialize_training_data(self, filename):
        imported = []
        file = open(filename, "rb")
        try:
            imported = load(file)
        except EOFError:
            print(f"file {filename} is probably empty")
        finally:
            file.close()
            return imported

    def read_serialized_variants(self):
        return self._deserialize_training_data("variants.dat")

    def read_serialized_solutions(self):
        return self._deserialize_training_data("solutions.dat")

    def convert_boards_to_direction(self, start_board: list, end_board: list):
        if len(start_board) != len(end_board):
            raise Exception(f"boards do not have the same length ({start_board}, {end_board}")
        board_length = len(start_board)

        changed_field_indexes = []
        for index in range(board_length):
            if end_board[index] - start_board[index] != 0:
                changed_field_indexes.append(index)
        if len(changed_field_indexes) != (0 or 2):
            changed_field_indexes = [0] * 2

        difference_mappings = {
            0: 0,  # no change
            7: 1,  # left
            8: 2,  # straight
            9: 3,  # right
            16: 4  # 2 straight
        }

        if len(changed_field_indexes) == 0:
            return difference_mappings[0]

        index_difference = changed_field_indexes[1] - changed_field_indexes[0]
        try:
            return [changed_field_indexes[1], difference_mappings[index_difference]]
        except KeyError:
            print("invalid move, emptying board")
            start_board = [board_length * [0]]
            end_board = [board_length * [0]]
            return self.convert_boards_to_direction(start_board, end_board)
