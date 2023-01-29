import random
from enum import Enum
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

    def generate_multiple_random_boards(self, amount: int, row_size: int, figs: int, included_fields=None,
                                        randomize_pawns=True) -> list[list]:
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

    difference_mappings = {
        0: 0,
        7: 1,  # left
        8: 2,  # straight
        9: 3,  # right
        16: 4  # 2 straight
    }

    def convert_boards_to_field_directions(self, start_board: list, end_board: list):
        if len(start_board) != len(end_board):
            raise Exception(f"boards do not have the same length ({start_board}, {end_board}")
        board_length = len(start_board)

        changed_field_indexes = []
        for index in range(board_length):
            if end_board[index] - start_board[index] != 0:
                changed_field_indexes.append(index)
        if len(changed_field_indexes) not in [0, 2]:
            changed_field_indexes = [0, 0]
            return changed_field_indexes

        if len(changed_field_indexes) == 0 and (1 in start_board):
            return [start_board.index(1), self.difference_mappings[0]]
        elif 1 not in start_board:
            return [randint(0, len(start_board) - 1), 0]

        index_difference = changed_field_indexes[1] - changed_field_indexes[0]
        try:
            return [changed_field_indexes[1], self.difference_mappings[index_difference]]
        except KeyError:
            print("invalid move, emptying board")
            start_board = [board_length * [0]]
            end_board = [board_length * [0]]
            return self.convert_boards_to_field_directions(start_board, end_board)


    def convert_field_directions_to_movement_int(self, field_direction: list):
        if field_direction[1] == 0:
            return 256

        field_direction[1] -= 1
        return (field_direction[0]) * 4 + field_direction[1]

    def transform_board(self, board_to_transform: list, moving_piece, moving_destination) -> list:
        transforming_board = board_to_transform.copy()
        moving_piece_value = transforming_board[moving_piece]
        transforming_board[moving_piece] = 0
        transforming_board[moving_destination] = moving_piece_value
        return transforming_board

    def are_in_same_row(self, field_1, field_2):
        return self.get_row_number(field_1) == self.get_row_number(field_2)

    def get_row_number(self, field_1):
        board = [0] * 72
        board[field_1] = 1
        list_chunks = []
        for i in range(7, 64, 8):
            list_chunks.append(board[i - 7:i + 1])
        for chunk in list_chunks:
            if 1 in chunk:
                return list_chunks.index(chunk)

    def calculate_best_move_64(self, start_board: list, verbose=True) -> list:
        # priority list:
        # 0. declare the game as over (by pieces having won or by only one color remaining)
        # 1. win the game
        # 2. attack enemy pieces
        # 3. move forward (without getting attacked) # checked in move action
        # 4. move forward
        # 5. declare the game as over (by the player being blocked) -> base case

        working_board = start_board.copy()

        class State(Enum):
            WIN = 0
            ATTACK = 1
            MOVE = 2
            OVER = 3

        player_pieces = []
        non_blocked_player_pieces = []
        enemy_pieces = []

        # finding all pieces
        for index in range(0, len(working_board), 1):
            if working_board[index] == 1:
                player_pieces.append(index)
            if working_board[index] == 2:
                enemy_pieces.append(index)
        non_blocked_player_pieces = player_pieces.copy()

        attackers_attacked = []
        possible_winning_pieces = []
        two_field_movable_pieces = []

        # filtering out blocked pieces
        current_state = State.OVER
        for non_blocked_player_piece in non_blocked_player_pieces.copy():
            # piece is blocked or on last row
            if non_blocked_player_piece-8 in enemy_pieces or non_blocked_player_piece-8 in player_pieces \
                    or non_blocked_player_piece in range(0, 8):
                non_blocked_player_pieces.remove(non_blocked_player_piece)

        # declaring the game as over (by blocking) (5.) -> standard case

        # checking for possible forward movement (4.)
        if len(non_blocked_player_pieces) > 0:
            current_state = State.MOVE
            # also filtering for pieces eligible for first move bonus
            for non_blocked_player_piece in non_blocked_player_pieces:
                if non_blocked_player_piece - 16 not in enemy_pieces and non_blocked_player_piece in range(56, 64):
                    two_field_movable_pieces.append(non_blocked_player_piece)

        # checking for attackable pieces (2.) (3. in end check)
        for player_piece in player_pieces:
            for enemy_piece in enemy_pieces:
                if player_piece - enemy_piece in [7, 9] and \
                        self.get_row_number(player_piece) - self.get_row_number(enemy_piece) == 1:
                    current_state = State.ATTACK
                    attackers_attacked.append([player_piece, enemy_piece])

        # checking for possible winning pieces (1.)
        for non_blocked_player_piece in non_blocked_player_pieces:
            if non_blocked_player_piece in range(8, 16):
                current_state = State.WIN
                possible_winning_pieces.append(non_blocked_player_piece)

        # declaring the game as over (by pieces having won/only one color remaining) (0.)
        for player_winning_field in range(0, 8):
            if player_winning_field in player_pieces:
                current_state = State.OVER
        for enemy_winning_field in range(56, 64):
            if enemy_winning_field in enemy_pieces:
                current_state = State.OVER
        if len(enemy_pieces) == 0:
            current_state = State.OVER

        # processing final state into output
        chosen_piece: int
        chosen_destination: int
        match current_state:
            case State.WIN:
                chosen_piece = random.choice(possible_winning_pieces)
                chosen_destination = chosen_piece - 8
            case State.ATTACK:
                possible_attacking_pieces = [item[0] for item in attackers_attacked]
                possible_attacked_pieces = [item[1] for item in attackers_attacked]
                chosen_piece = random.choice(possible_attacking_pieces)
                chosen_destination = possible_attacked_pieces[possible_attacking_pieces.index(chosen_piece)]
            case State.MOVE:
                movable_pieces = non_blocked_player_pieces.copy()

                for movable_piece in movable_pieces.copy():
                    if movable_piece in two_field_movable_pieces:
                        added_distance = 8
                        row_distance = 3
                    else:
                        added_distance = 0
                        row_distance = 2

                    # avoiding attacked fields
                    if ((movable_piece-15-added_distance) in enemy_pieces and self.get_row_number(movable_piece) - self.get_row_number(movable_piece - 15 - added_distance) == row_distance)\
                        or ((movable_piece-17-added_distance) in enemy_pieces and self.get_row_number(movable_piece) - self.get_row_number(movable_piece - 17 - added_distance) == row_distance):
                        if not ((movable_piece + 1 in player_pieces and self.are_in_same_row(movable_piece, movable_piece + 1))\
                            or (movable_piece - 1 in player_pieces and self.are_in_same_row(movable_piece, movable_piece - 1))):
                            movable_pieces.remove(movable_piece)

                """if len(movable_pieces) == 0:
                    movable_pieces = non_blocked_player_pieces.copy()
                    print("enabled sacrifice")"""

                chosen_piece = random.choices([min(movable_pieces),
                                              random.choice(movable_pieces),
                                               min(non_blocked_player_pieces),
                                               random.choice(non_blocked_player_pieces)], k=1, weights=[5, 6, 2, 1])[0]

                if chosen_piece in two_field_movable_pieces:
                    chosen_destination = chosen_piece - 16
                else:
                    chosen_destination = chosen_piece - 8
            case State.OVER:
                chosen_piece = 0
                chosen_destination = 0
        if verbose:
            print(f"determined piece {chosen_piece}, chosen destination {chosen_destination} "
                  f"with state {current_state}\n"
                  f"player_pieces: {player_pieces}\n"
                  f"non_blocked_player_pieces: {non_blocked_player_pieces}\n"
                  f"enemy_pieces: {enemy_pieces}\n"
                  f"attackers_attacked: {attackers_attacked}\n"
                  f"possible_winning_pieces: {possible_winning_pieces}\n"
                  f"two_field_movable_pieces: {two_field_movable_pieces}\n")

        return self.transform_board(working_board, chosen_piece, chosen_destination)
