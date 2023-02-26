#include <EloquentTinyML.h>
#include <eloquent_tinyml/tensorflow.h>
#include "c_model.h"

#define N_INPUTS 64
#define N_OUTPUTS 256
#define TENSOR_ARENA_SIZE 16 * 1024

Eloquent::TinyML::TensorFlow::TensorFlow<N_INPUTS, N_OUTPUTS, TENSOR_ARENA_SIZE> tf;

float currentBoard[N_INPUTS];
float resultLogits[N_OUTPUTS];

void setup() {
  Serial.begin(115200);

  Serial.println("ESP32 bootup complete");

  tf.begin(pawn_chess);

  if (!tf.isOk()) {
      Serial.print("ERROR: ");
      Serial.println(tf.getErrorMessage());
  }
  else
  {
    Serial.println("ETML (TF) is OK!");
  }
}

int latestIndex = 0;

void loop()
{
  if(Serial.available() > 0)
  {
    currentBoard[latestIndex] = Serial.read() - 48.0;
    latestIndex++;
  }
  if(latestIndex == 64)
  {
    Serial.flush();
    Serial.println(predictMove());

    /*
    for(int i = 0; i < 64; i++)
    {
      Serial.print(currentBoard[i]); Serial.print(",");
    }
    Serial.println(""); */
    latestIndex = 0;
  }
}

int predictMove()
{
  float resultLogits[256];

  tf.predict(currentBoard, resultLogits);

  int highest = resultLogits[0];
  int highestIndex = 0;
  
  for(int i = 0; i<256;i++)
  {
    if(resultLogits[i] > highest)
    {
      highest = resultLogits[i];
      highestIndex = i;
    }
  }
  return highestIndex;
}
