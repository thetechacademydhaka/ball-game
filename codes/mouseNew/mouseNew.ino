#include<Mouse.h>

int a,b,x,y,avg;
void setup() {

  Serial.begin(9600);
  pinMode(5,INPUT);
  Mouse.begin();
  calibration();
}

void loop() {

  int x = analogRead(A0);
  int y = analogRead(A1);
  
  x = constrain(x,100,500);
  y = constrain(y,100,500);
  
  x = map(x,100,a,2,-2);
  y = map(y,100,a,2,-2);

  Serial.print(x);
  Serial.print("  ");
  Serial.print(y);
  Serial.print("  ");
  Serial.println(a);
  
   if(digitalRead(5) == HIGH){
     Mouse.move(x, y, 0);
     Serial.println("Hi");
  }
  delay(2);
}

void calibration(){
  
  x = analogRead(A0);
  y = analogRead(A1);
  avg = (x+y)/2;
  a = avg+300;
}


