import processing.serial.*;
Serial arduinoPort;
char val;
boolean vibrating = false;
void setup() {
  size(400, 400);
  arduinoPort = new Serial(this, Serial.list()[8], 9600);
}
void draw() {
  background(vibrating ? color(0, 255, 0) : 255);
}
void mousePressed() {
  vibrating = true;
  arduinoPort.write('1');
}
void mouseReleased() {
  vibrating = false;
  arduinoPort.write('0');
}