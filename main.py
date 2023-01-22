import matplotlib.pyplot as plt
from matplotlib import pyplot as pp
from PIL import Image
import tensorflow as tf
import numpy as np

pp.figure(figsize=(10, 10))

red_image = Image.open("red.png")
blue_image = Image.open("blue.png")
white_image = Image.open("white.png")

fig_positions = [0, 0, 0, 0, 0, 0,
                 0, 2, 2, 2, 2, 0,
                 0, 1, 1, 1, 1, 0,
                 0, 0, 0, 0, 0, 0]

field_color_dict = {
    0: white_image,
    1: blue_image,
    2: red_image
}

train_fig_starts = [
    [0, 0, 0, 0, 0, 0,
     0, 2, 2, 2, 2, 0,
     0, 1, 1, 1, 1, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 0, 1, 2, 2, 0,
     0, 0, 2, 1, 1, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 1, 0, 2, 2, 0,
     0, 2, 0, 1, 1, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 1, 0, 0, 1, 0,
     0, 2, 0, 0, 2, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 0, 1, 0, 1, 0,
     0, 0, 2, 0, 2, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 2, 2, 2, 2, 0,
     0, 1, 1, 1, 1, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 0, 1, 2, 2, 0,
     0, 0, 2, 1, 1, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 2, 0, 1, 2, 0,
     0, 2, 1, 1, 0, 0,
     0, 0, 0, 0, 0, 0],

    [0, 0, 0, 0, 0, 0,
     0, 2, 0, 1, 1, 0,
     0, 2, 1, 2, 0, 0,
     0, 0, 0, 0, 0, 0]
]

# 1  2  3
# 4 1-4 5
# 6  7  8 (9)
# ex.: 16

train_fig_move = [
    13,
    31,
    41,
    19,
    19,
    21,
    41,
    33,
    21
]


def draw_board(board_list):
    plt.Figure(figsize=(10, 10))
    for i in range(len(board_list)):
        pp.subplot(4, 6, i+1)
        pp.grid = False
        pp.xticks([])
        pp.yticks([])
        pp.imshow(field_color_dict[board_list[i]])
        pp.fill()
    pp.show()


model = tf.keras.Sequential([
    tf.keras.layers.Input(4*4),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(32, activation='relu'),
    tf.keras.layers.Dense(49)
])

model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])


model.fit(train_fig_starts, train_fig_move, epochs=75)
probability_model = tf.keras.Sequential([model,
                                         tf.keras.layers.Softmax()])

out = probability_model.predict([
    [0, 0, 0, 0, 0, 0,
     0, 1, 0, 1, 1, 0,
     0, 2, 0, 2, 0, 0,
     0, 0, 0, 0, 0, 0]
]).tolist()

print(out.sort()[0])
print(out.sort()[1])


