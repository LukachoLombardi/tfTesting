import time

import keras.utils
import matplotlib.pyplot as plt
from keras import regularizers
from matplotlib import pyplot as pp
from PIL import Image
import tensorflow as tf
import numpy as np
from PawnChessTrainer import PawnChessTrainer
import os
import data
import algorithmic_data
import algorithmic_batch_generation as ag

os.environ["PATH"] += os.pathsep + "C:/Program Files (x86)/Graphviz/bin/"

trainer = PawnChessTrainer()

ag.generate_new_batch(1024)
time.sleep(3)
train_fig_starts = algorithmic_data.board_variants
train_fig_moves = algorithmic_data.board_solutions

"""
train_fig_starts = data.board_variants
train_fig_moves = data.board_solutions
for index in range(len(train_fig_moves)):
    train_fig_moves[index] = trainer.convert_field_directions_to_movement_int(train_fig_moves[index])
"""

print(len(train_fig_starts))

def extract_sublist_members(lst, index):
    return [item[index] for item in lst]


def insert_sublist_members(lst1, lst2, index):
    working_list_1 = lst1
    working_list_2 = lst2
    for_index = 0
    for member in lst1:
        member[index] = working_list_2[for_index]
        for_index += 1
    return working_list_1

train_fig_starts = np.array(train_fig_starts)
train_fig_moves = keras.utils.to_categorical(train_fig_moves, num_classes=256)

inputs = tf.keras.layers.Input(shape=64, name="board_input")
inputs = tf.keras.layers.BatchNormalization()(inputs)

x = tf.keras.layers.Dense(64, activation="relu", kernel_regularizer=regularizers.l2(0.001))(inputs)
x = tf.keras.layers.Dense(16, activation="relu", kernel_regularizer=regularizers.l2(0.001))(x)

result = tf.keras.layers.Dense(256,  name="result")(x)


model = tf.keras.Model(inputs=inputs, outputs=result)
#model = keras.models.load_model("pawn_chess_model")

print(model.summary())
tf.keras.utils.plot_model(model, to_file='model_plot.png', show_shapes=True, show_layer_names=True)

model.compile(optimizer='adam',
              loss=tf.keras.losses.CategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])


history = model.fit(np.array(train_fig_starts), train_fig_moves, epochs=100, validation_split=0.2)

plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epoch')
plt.legend(['train', 'val'], loc='upper left')
plt.show()
plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend(['train', 'val'], loc='upper left')
plt.show()

model.save("pawn_chess_model")