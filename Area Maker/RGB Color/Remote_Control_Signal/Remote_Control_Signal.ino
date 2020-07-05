
// Exemplo de Controle Remoto
#include <IRremote.h> 

const int pin_remote = 8;
const int pin_luz    = 11;
IRrecv irrecv(pin_remote);
decode_results results;

// Contador
int i = 0;

// RBG Pins
int pinred   = 2;
int pingreen = 3;
int pinblue  = 4;

/// Buzzers

int buzzer = 9;

void setup() {
  Serial.begin(9600);
  pinMode(pin_luz, OUTPUT);
  pinMode(buzzer , OUTPUT);
  irrecv.enableIRIn();
  irrecv.blink13(true);
}

void loop() { 
  if(irrecv.decode(&results)){ 
       tone(buzzer , 1500);
       Serial.println(results.value);
       switch(results.value){
         case 2534850111:
            setColor(255,0,0);
            break;
         case 1033561079:
            setColor(0,255,0);
            break;   
         case 1635910171: 
            setColor(0,0,255);
            break;   
          case 2351064443:
            setColor(255,0,255);
            break;   
         case 1053031451:
            for(i=0;i<7;i++){
                setColor(255,0,0);
                delay(100);
                setColor(0,255,0);
                delay(100);
                setColor(0,0,255);
                delay(100);
                setColor(0,255,255);
                delay(100);
                setColor(255,255,255);
                delay(100);
                
                
            }
            setColor(0,0,0);
            break;
       }
       
       irrecv.resume();
  }  
}

void setColor(int red, int green , int blue){
      analogWrite(pinred, red);
      analogWrite(pingreen, green);
      analogWrite(pinblue, blue);
 }
