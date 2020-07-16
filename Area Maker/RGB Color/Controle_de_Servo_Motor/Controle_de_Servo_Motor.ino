#include "Servo.h"

Servo meuservo;


void setup() {
  meuservo.attach(9);

}

void loop() { 
  meuservo.write(90);
  delay(3000);   
  meuservo.write(70);
  delay(3000);  
  meuservo.write(110);
  delay(3000);  

}
