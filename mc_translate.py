import keras
import keras.utils
import numpy as np
from everywhereml.code_generators.tensorflow import tf_porter
from tinymlgen import port

c_model = open("c_model.txt", "w")

c_model.write(port(keras.models.load_model("pawn_chess_model"), variable_name='pawn_chess', pretty_print=True, optimize=False))

c_model.close()
