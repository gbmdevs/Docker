int pinred   = 9;
int pingreen = 10;
int pinblue  = 11;

void setup() { 
  pinMode(pinred   , OUTPUT);
  pinMode(pingreen , OUTPUT);
  pinMode(pinblue   , OUTPUT);

}
void loop() {
  // put your main code here, to run repeatedly:
  RGB_MODE(255,255,255); 
}

void RGB_MODE( int red , int green , int blue) {
   analogWrite(pinred   , red);
   analogWrite(pingreen , green);
   analogWrite(pinblue  , blue);

  
}
