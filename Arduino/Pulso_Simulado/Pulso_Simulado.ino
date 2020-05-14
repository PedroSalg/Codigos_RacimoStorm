const int Boton = 7;
const int Led = 13;
int Lectura_Boton = 1;

void setup() {
  // put your setup code here, to run once:
  pinMode(Boton, INPUT);
  pinMode(Led, OUTPUT);
 

}

void loop() {
  // put your main code here, to run repeatedly:
  Lectura_Boton = digitalRead(Boton);
  if (Lectura_Boton == HIGH){
    digitalWrite(Led, HIGH);
    delayMicroseconds(20);
    digitalWrite(Led, LOW);
    delay(180);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(20);
    digitalWrite(Led, LOW);
    delay(25);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(35);
    digitalWrite(Led, LOW);
    delay(40);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(25);
    digitalWrite(Led, LOW);
    delay(57);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(30);
    digitalWrite(Led, LOW);
    delay(85);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(30);
    digitalWrite(Led, LOW);
    delay(76);
    digitalWrite(Led, HIGH);    // PUNTO HIGH
    delayMicroseconds(40);
    digitalWrite(Led, LOW);
    delay(25);
    
    
    
    
        
    
    }
  else {
    digitalWrite(Led, LOW);
    }

}
