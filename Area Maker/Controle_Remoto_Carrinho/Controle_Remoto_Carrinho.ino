
// Joystick demonstração de controle
#include <Servo.h>

// Declaração dos Pinos 
const int pin_servo_dir = 9;

// JoyStick Declaração
int eixo_X = A0;
int eixo_Y = A1;
int botao  = 2;

// Declaração de Componentes
Servo servoDirecao; 

void setup() { 
  // Area de Display para Testes
  Serial.begin(9600);
  servoDirecao.attach(pin_servo_dir);
  servoDirecao.write(90); 
  pinMode(botao, INPUT_PULLUP);
}

void loop() {
   
  if(analogRead(eixo_Y) == 1023) { 
    Serial.println("Direita Acionada");
    servoDirecao.write(70);
  }else{
    if(analogRead(eixo_Y) == 0){ 
    Serial.println("Esquerda Acionada");
     servoDirecao.write(120);
    }else{
     servoDirecao.write(90);
  }
  }

  delay(200);
  
 
  
}
