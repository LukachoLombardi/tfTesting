import traceback
from pickle import dump
from random import randint

from PawnChessTrainer import PawnChessTrainer

board_size = 8
delay = 0.0
delay_white = 0.0

trainer = PawnChessTrainer()

board_variants = trainer.read_serialized_variants()
board_solutions = trainer.read_serialized_solutions()
if len(board_variants) != len(board_solutions):
    raise IndexError("files don't have the same length!")

string_bool_dict = {
    "0": False,
    "1": True
}

#  for index in range(len(board_variants)):
#    trainer.draw_board(board_variants[index])
#    trainer.draw_board(board_solutions[index])

while True:
    try:
        trainer.draw_board([0] * board_size ** 2)
        user_start = int(input("start (inclusive) (leave empty for default): ") or 0)
        print(user_start)
        user_end = int(input("end (exclusive): ") or board_size ** 2)
        print(user_end)
        used_fields_slice = range(user_start, user_end)
        print(used_fields_slice)
        user_pawns = int(input("pawn amount (empty for default): ") or len(used_fields_slice) / 4)
        print(user_pawns)
        user_randomize_pawns = string_bool_dict[(input("randomize pawns (0/1 empty for 1): ") or "1")]
        print(user_randomize_pawns)
    except Exception:
        print("an exception occured, reatarting setup")
        continue

    print("started data collection")

    using_custom = False
    while True:
        while not using_custom:
            current_board_variant = trainer.generate_random_board(board_size, user_pawns,
                                                                  used_fields_slice, user_randomize_pawns)
            if current_board_variant not in board_variants:
                break

        trainer.draw_board(current_board_variant)

        special_inputs = ["n", "0", "s", "c", "d", "r", "a"]
        try:
            print(f"set {len(board_variants)-1}/{len(board_solutions)-1}")
            start_field = input("input 0, n, c, d, s, r, a or start field: ")
            if start_field not in special_inputs:
                destination_field = input("input destination field: ")
                current_board_solution = trainer.prompt_solution(current_board_variant, start_field, destination_field)
            elif start_field == "n" or start_field == "0":
                start_field = randint(0, board_size-1)
                destination_field = start_field
            elif start_field == "d":
                print(board_variants)
                print(board_solutions)
                board_directions_file = open("directions.dat", "wb")
                board_directions = []
                for index in range(len(board_variants)):
                    board_directions.append(
                        trainer.convert_boards_to_direction(board_variants[index], board_solutions[index]))
                board_directions_file.close()
                print(board_directions)

                with open("data.txt", "w") as data_out_file:
                    data_out_file.write(f"{board_variants}\n\n{board_solutions}\n\n{board_directions}")
                continue
            elif start_field == "s":
                print("redoing setup")
                break
            elif start_field == "c":
                print("create custom:")
                custom_board = [0] * trainer.board_length
                trainer.draw_board(custom_board)
                blue_fields = input("enter blue fields (separate with ,): ").split(",")
                print(blue_fields)
                red_fields = input("enter red fields (separate with ,): ").split(",")
                print(red_fields)
                for field in blue_fields:
                    custom_board[int(field)] = 1
                for field in red_fields:
                    custom_board[int(field)] = 2
                current_board_variant = custom_board
                using_custom = True
                continue
            elif start_field == "r":
                index_to_remove = input("indexes to remove(separate with ,): ").split(",")
                print(index_to_remove)
                for i in range(len(index_to_remove)):
                    index_to_remove[i] = int(index_to_remove[i])

                for i in index_to_remove:
                    board_variants.pop(i)
                    board_solutions.pop(i)
                continue
            elif start_field == "a":
                current_board_solution = trainer.calculate_best_move_64(current_board_variant)
                trainer.draw_board(current_board_solution)

            using_custom = False
        except ValueError:
            print("invalid input, skipping")
            print(traceback.format_exc())
            continue
        except IndexError:
            print("index out of range, skipping")
            print(traceback.format_exc())
            continue

        board_variants.append(current_board_variant)
        board_solutions.append(current_board_solution)

        board_variants_file = open("variants.dat", "wb")
        board_solutions_file = open("solutions.dat", "wb")

        dump(board_variants, board_variants_file)
        dump(board_solutions, board_solutions_file)

        board_variants_file.close()
        board_solutions_file.close()
