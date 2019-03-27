#include "DHT.h"
 
#define DHTPIN 4 // pino que estamos conectado
#define DHTTYPE DHT11  //DHT 11

DHT dht(DHTPIN, DHTTYPE);
 
void setup() 
{
  Serial.begin(9600);
  dht.begin();
}
 
void loop() 
{
  float h = dht.readHumidity();
  float temp = dht.readTemperature();

  Serial.println(h);
  Serial.println(temp);

  delay(1000);
}
