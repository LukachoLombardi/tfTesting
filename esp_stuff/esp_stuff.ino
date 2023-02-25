#include <EloquentTinyML.h>
#include <eloquent_tinyml/tensorflow.h>
#include "c_model.h"

#define N_INPUTS 64
#define N_OUTPUTS 256
#define TENSOR_ARENA_SIZE 16 * 1024

Eloquent::TinyML::TensorFlow::TensorFlow<N_INPUTS, N_OUTPUTS, TENSOR_ARENA_SIZE> tf;
float test_board[64] = {2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1};
float result[256];

void setup() {
  Serial.begin(9600);

  Serial.println("ESP32 bootup complete");

  tf.begin(pawn_chess);

  if (!tf.isOk()) {
      Serial.print("ERROR: ");
      Serial.println(tf.getErrorMessage());
  }
  else
  {
    Serial.println("TF is OK!");
  }

  Serial.println("predicting...");

  tf.predict(test_board, result);

  Serial.println("prediction:");

  int highest = result[0];
  int highest_index = 0;

  for(int i = 0; i<256;i++)
  {
    Serial.println(result[i]);
    if(result[i] > highest)
    {
      highest = result[i];
      highest_index = i;
    }
  }

  Serial.println("max index: ");
  Serial.print(highest_index);
}

void loop()
{
  
}
