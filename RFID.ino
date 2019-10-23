#include <deprecated.h>
#include <MFRC522.h>
#include <MFRC522Extended.h>
#include <require_cpp11.h>

#include <SPI.h>

#define SS_PIN 10
#define RST_PIN 9
MFRC522 mfrc522(SS_PIN, RST_PIN);   // Create MFRC522 instance.
 
void setup() 
{
  Serial.begin(9600);   // Initiate a serial communication
  SPI.begin();      // Initiate  SPI bus
  mfrc522.PCD_Init();   // Initiate MFRC522
 // Serial.println("Approximate your card to the reader...");
 // Serial.println();

}
void loop() 
{
  // Look for new cards
  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  //Show UID on serial monitor
  //Serial.print("UID tag :");
  String content= "";
  byte letter;
  for (byte i = 0; i < mfrc522.uid.size; i++) 
  {
     Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
     Serial.print(mfrc522.uid.uidByte[i], HEX);
     content.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " "));
     content.concat(String(mfrc522.uid.uidByte[i], HEX));
  }
  //Serial.println();
  //Serial.print("Message : ");
  content.toUpperCase();
  if (content.substring(1) == "91 3C 23 2F") //change here the UID of the card/cards that you want to give access
  {
    Serial.print(".Yash.1");
    Serial.println();
    delay(2000);
  }
  else if (content.substring(1) == "35 66 2E 83") //change here the UID of the card/cards that you want to give access
  {
    Serial.println(".Sachin.2");
    Serial.println();
    delay(2000);
  }
 else if (content.substring(1) == "C1 F3 55 46") //change here the UID of the card/cards that you want to give access
  {
    Serial.println(".Sanjana.3");
    Serial.println();
    delay(2000);
  }
 else   {
    Serial.println(" Access denied");
    delay(3000);
  }
} 
