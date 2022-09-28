int pinInterruptor = 2;
int pinLuz = 3;

int estado = HIGH;
void setup() {
  Serial.begin(9600);
  pinMode(pinInterruptor, INPUT);
  pinMode(pinLuz , OUTPUT);
   
}

void loop() { 
  int sensorValue = digitalRead(pinInterruptor);
  Serial.println(sensorValue, DEC);
  delay(1000);
  if(sensorValue == 1 ) {
     delay(20);
     if(sensorValue == 1 ) {
     digitalWrite(pinLuz , HIGH);
     }else{
     digitalWrite(pinLuz , LOW);
     }
  } else{
     digitalWrite(pinLuz , LOW);
   }
  
}
