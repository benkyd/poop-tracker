/*
 * There are three serial ports on the ESP known as U0UXD, U1UXD and U2UXD.
 * 
 * U0UXD is used to communicate with the ESP32 for programming and during reset/boot.
 * U1UXD is unused and can be used for your projects. Some boards use this port for SPI Flash access though
 * U2UXD is unused and can be used for your projects.
 * 
*/

#define RXD2 16
#define TXD2 17

void setup() {
  // Note the format for setting a serial port is as follows: Serial2.begin(baud-rate, protocol, RX pin, TX pin);
  Serial.begin(115200);
  //Serial1.begin(9600, SERIAL_8N1, RXD2, TXD2);
  Serial2.begin(57600);
}

// Protocol
// 0xFE
// adress
// data 1... data 10 (0x01 - 1, 0x02-2... 0x0A space)
//0x8F
//0x80
// 0x8E - no refresh / 0x8D - with refresh / 0x82 - refresh command
// addres - 0xFF- ALL
// data1...data10
//0x8F
void SendDigits(long number_to_send, int adres = 0xFF)
{
  int u;
  long digit;
  int wasdigit = 0;
  int send_buffer[] = { 0xFE, 0xFF, 0x02 , 0x02, 0x02, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x8F, 0x8F};
  if (number_to_send > 9999999999L) return;
  
  for (u = 9; u > -1; u--) { 
    digit = (int)(number_to_send / pow(10,u));
    // if (digit>0) wasdigit=1;
    //if ((digit == 0) && (wasdigit == 0)) digit=0x0A;
    send_buffer[11 - u] = (int)digit;
    number_to_send = number_to_send - (digit*(int)pow(10,u));
  }
  
  send_buffer[1] = adres;
  for (u = 0; u < 14; u++) { 
    Serial2.write(send_buffer[u]); // send transmission for one panel
    // println(send_buffer[u]);
   }
}


void loop() {
  SendDigits(0);
  for (long t = 0; t < 9999999999L; t++) { 
    SendDigits(t*6969);
    delay(100);
  }
}
