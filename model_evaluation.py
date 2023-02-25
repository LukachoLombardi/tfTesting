import numpy as np
from tensorflow import keras
import algorithmic_data as ad
import algorithmic_batch_generation as ab

model: keras.Model
model = keras.models.load_model("pawn_chess_model_2.0.2_o")
ab.generate_new_batch(64)
model.evaluate(np.array(ad.board_variants), keras.utils.to_categorical(ad.board_solutions))
