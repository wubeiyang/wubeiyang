int sensorPin =A0;
int data;
void setup()
{
  Serial.begin(9600);
}
void loop()
{
  data= analogRead(sensorPin)/4;
   Serial.write(data);
   delay(100);
}

