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
    delay(500);
    digitalWrite(Led, LOW);
    delay(200);
    }
  else {
    digitalWrite(Led, LOW);
    }

}
