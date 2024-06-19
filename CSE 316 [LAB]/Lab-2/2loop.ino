int a=7,b=8;
void setup(){
  pinMode(a,OUTPUT);
  pinMode(b,OUTPUT);
}


void LED(int var1){
  for(int i=1000;i>10;)
  {
  digitalWrite(var1,HIGH);
  delay(i);
  digitalWrite(var1,LOW);
  delay(i);
  if (i<=100)i=i-5;
  else i=i-100;
}

digitalWrite(var1,HIGH);
  delay(1000);
  for(int i=10;i<=1000;)
  {
    delay(i);
    digitalWrite(var1, HIGH);
    delay(i);
    digitalWrite(var1, LOW);
    if (i<=100)i=i+5;
    else i=i+100;
      }
  }

void loop(){
  
  LED(a);
  delay(1000);
  LED(b);
}
