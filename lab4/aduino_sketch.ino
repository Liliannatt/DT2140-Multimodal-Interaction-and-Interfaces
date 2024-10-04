const int motorPin = 7;
void setup() {
 pinMode(motorPin, OUTPUT);
 Serial.begin(9600);
}
void loop() {
 if (Serial.available() > 0) {
   char val = Serial.read();
   if (val == '1') {
     digitalWrite(motorPin, HIGH);
   } else if (val == '0') {
     digitalWrite(motorPin, LOW);
   }
} }