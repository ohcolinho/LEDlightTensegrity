/* 
 MMA8452Q Basic Example Code
 Nathan Seidle
 SparkFun Electronics
 November 5, 2012
 
 License: This code is public domain but you buy me a beer if you use this and we meet someday (Beerware license).
 
 This example code shows how to read the X/Y/Z accelerations and basic functions of the MMA5842. It leaves out
 all the neat features this IC is capable of (tap, orientation, and inerrupts) and just displays X/Y/Z. See 
 the advanced example code to see more features.
 
 Hardware setup:
 MMA8452 Breakout ------------ Arduino
 3.3V --------------------- 3.3V
 SDA -------^^(330)^^------- A4
 SCL -------^^(330)^^------- A5
 GND ---------------------- GND
 
 The MMA8452 is 3.3V so we recommend using 330 or 1k resistors between a 5V Arduino and the MMA8452 breakout.
 
 The MMA8452 has built in pull-up resistors for I2C so you do not need additional pull-ups.
 */

#include <Wire.h> // Used for I2C
#include <Adafruit_NeoPixel.h>


// The SparkFun breakout board defaults to 1, set to 0 if SA0 jumper on the bottom of the board is set
#define MMA8452_ADDRESS 0x1D  // 0x1D if SA0 is high, 0x1C if low

//Define a few of the registers that we will be accessing on the MMA8452
#define OUT_X_MSB 0x01
#define XYZ_DATA_CFG  0x0E
#define WHO_AM_I   0x0D
#define CTRL_REG1  0x2A

#define GSCALE 2 // Sets full-scale range to +/-2, 4, or 8g. Used to calc real g values.
int PIN = 6;
Adafruit_NeoPixel strip = Adafruit_NeoPixel(50, PIN, NEO_GRB + NEO_KHZ800);

// Here is where you can put in your favorite colors that will appear!
// just add new {nnn, nnn, nnn}, lines. They will be picked out randomly
// R G B
uint8_t myFavoriteColors[][3] = {{200, 0, 200}, // purple
{200, 0, 0}, // red
{200, 200, 200}, // white
};

// don't edit the line below
#define FAVCOLORS sizeof(myFavoriteColors) / 3
 
// mess with this number to adjust TWINklitude :)
// lower number = more sensitive
#define MOVE_THRESHOLD 45

//variable control intensity
uint8_t fadeValue = 255;
uint8_t fadeRate = 3;

void setup()
{
  Serial.begin(57600);
  //Serial.println("MMA8452 Basic Example");
  
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
  
  Wire.begin(); //Join the bus as a master

  initMMA8452(); //Test and intialize the MMA8452
}

void loop()
{  
  int accelCount[3];  // Stores the 12-bit signed value
  readAccelData(accelCount);  // Read the x/y/z adc values

  // Now we'll calculate the accleration value into actual g's
  float accelG[3];  // Stores the real accel value in g's
  for (int i = 0 ; i < 3 ; i++)
  {
    accelG[i] = (float) accelCount[i] / ((1<<12)/(2*GSCALE));  // get actual g value, this depends on scale being set
  }

  // Print out values
  for (int i = 0 ; i < 3 ; i++)
  {
    //Serial.print(accelG[i], 4);  // Print g values
    //Serial.print("\t");  // tabs in between axes
  }
  //Serial.println();

  delay(10);  // Delay here for visibility
  
  // Get the magnitude (length) of the 3 axis vector
  // http://en.wikipedia.org/wiki/Euclidean_vector#Length
  double storedVector = accelG[1]*accelG[1];
  storedVector += accelG[2]*accelG[2];
  storedVector += accelG[3]*accelG[3];
  storedVector = sqrt(storedVector);
  //Serial.print("Len: "); //Serial.println(storedVector);
  // wait a bit
  delay(50);
  // get new data!
  readAccelData(accelCount);  // Read the x/y/z adc values

  // Now we'll calculate the accleration value into actual g's
  //update accelG
  for (int i = 0 ; i < 3 ; i++)
  {
    accelG[i] = (float) accelCount[i] / ((1<<12)/(2*GSCALE));  // get actual g value, this depends on scale being set
  }
  
  double newVector = accelG[1]*accelG[1];
  newVector += accelG[2]*accelG[2];
  newVector += accelG[3]*accelG[3];
  newVector = sqrt(newVector);
  //Serial.print("New Len: "); //Serial.println(newVector);
  
  //color for storing intensity according to Z axis (-1 to 1)
  uint8_t zColor = (uint8_t) abs(250*accelG[3]);
  Serial.print("ZColor = "); Serial.println(zColor);
  
  
  //if movement 
  if (abs(newVector - storedVector) > 0.2) {
    /*
    if (fadeValue == 0 || fadeValue <= 150) {
      fadeValue = fadeValue + 100;
    }
    else if (fadeValue >= 255) {
      fadeValue = fadeValue - fadeRate;
    }
    else if (fadeValue <= 150)
    */
    fadeValue = 250;
    //Serial.println("Twinkle!");
    blastAll(255-zColor, 0, zColor);
    //flashRandom(5, 5); // first number is 'wait' delay, shorter num == shorter twinkle
    //flashRandom(5, 8); // second number is how many neopixels to simultaneously light up
    //flashRandom(5, 15);
  }
  // if no movement
  else {
    fadeValue = fadeValue - fadeRate;
    Serial.print("fadeScalar  = "); Serial.println((fadeValue/255.0));
    Serial.print("fadeScalar*color  = "); Serial.println((int)(fadeValue/255.0)*zColor);
    
    //blastAll((255-zColor),0, zColor);
    blastAll(0,0,0);
  }
  
}

void blastAll(uint8_t R, uint8_t G, uint8_t B) {
  for (int i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(R, G, B));
  }
  strip.show(); 
}


void flashRandom(int wait, uint8_t howmany) {
 
  for(uint16_t i=0; i<howmany; i++) {
    // pick a random favorite color!
    int c = random(FAVCOLORS);
    int red = myFavoriteColors[c][0];
    int green = myFavoriteColors[c][1];
    int blue = myFavoriteColors[c][2];
     
    // get a random pixel from the list
    int j = random(strip.numPixels());
    ////Serial.print("Lighting up "); //Serial.println(j);
    // now we will 'fade' it in 5 steps
    for (int x=0; x < 5; x++) {
      int r = red * (x+1); r /= 5;
      int g = green * (x+1); g /= 5;
      int b = blue * (x+1); b /= 5;
      strip.setPixelColor(j, strip.Color(r, g, b));
      strip.show();
      delay(wait);
    }
    // & fade out in 5 steps
    for (int x=5; x >= 0; x--) {
      int r = red * x; r /= 5;
      int g = green * x; g /= 5;
      int b = blue * x; b /= 5;
      strip.setPixelColor(j, strip.Color(r, g, b));
      strip.show();
      delay(wait);
    }
  }
}

void readAccelData(int *destination)
{
  byte rawData[6];  // x/y/z accel register data stored here

  readRegisters(OUT_X_MSB, 6, rawData);  // Read the six raw data registers into data array

  // Loop to calculate 12-bit ADC and g value for each axis
  for(int i = 0; i < 3 ; i++)
  {
    int gCount = (rawData[i*2] << 8) | rawData[(i*2)+1];  //Combine the two 8 bit registers into one 12-bit number
    gCount >>= 4; //The registers are left align, here we right align the 12-bit integer

    // If the number is negative, we have to make it so manually (no 12-bit data type)
    if (rawData[i*2] > 0x7F)
    {  
      gCount = ~gCount + 1;
      gCount *= -1;  // Transform into negative 2's complement #
    }

    destination[i] = gCount; //Record this gCount into the 3 int array
  }
}

// Initialize the MMA8452 registers 
// See the many application notes for more info on setting all of these registers:
// http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=MMA8452Q
void initMMA8452()
{
  byte c = readRegister(WHO_AM_I);  // Read WHO_AM_I register
  if (c == 0x2A) // WHO_AM_I should always be 0x2A
  {  
    //Serial.println("MMA8452Q is online...");
  }
  else
  {
    //Serial.print("Could not connect to MMA8452Q: 0x");
    //Serial.println(c, HEX);
    while(1) ; // Loop forever if communication doesn't happen
  }

  MMA8452Standby();  // Must be in standby to change registers

  // Set up the full scale range to 2, 4, or 8g.
  byte fsr = GSCALE;
  if(fsr > 8) fsr = 8; //Easy error check
  fsr >>= 2; // Neat trick, see page 22. 00 = 2G, 01 = 4A, 10 = 8G
  writeRegister(XYZ_DATA_CFG, fsr);

  //The default data rate is 800Hz and we don't modify it in this example code

  MMA8452Active();  // Set to active to start reading
}

// Sets the MMA8452 to standby mode. It must be in standby to change most register settings
void MMA8452Standby()
{
  byte c = readRegister(CTRL_REG1);
  writeRegister(CTRL_REG1, c & ~(0x01)); //Clear the active bit to go into standby
}

// Sets the MMA8452 to active mode. Needs to be in this mode to output data
void MMA8452Active()
{
  byte c = readRegister(CTRL_REG1);
  writeRegister(CTRL_REG1, c | 0x01); //Set the active bit to begin detection
}

// Read bytesToRead sequentially, starting at addressToRead into the dest byte array
void readRegisters(byte addressToRead, int bytesToRead, byte * dest)
{
  Wire.beginTransmission(MMA8452_ADDRESS);
  Wire.write(addressToRead);
  Wire.endTransmission(false); //endTransmission but keep the connection active

  Wire.requestFrom(MMA8452_ADDRESS, bytesToRead); //Ask for bytes, once done, bus is released by default

  while(Wire.available() < bytesToRead); //Hang out until we get the # of bytes we expect

  for(int x = 0 ; x < bytesToRead ; x++)
    dest[x] = Wire.read();    
}

// Read a single byte from addressToRead and return it as a byte
byte readRegister(byte addressToRead)
{
  Wire.beginTransmission(MMA8452_ADDRESS);
  Wire.write(addressToRead);
  Wire.endTransmission(false); //endTransmission but keep the connection active

  Wire.requestFrom(MMA8452_ADDRESS, 1); //Ask for 1 byte, once done, bus is released by default

  while(!Wire.available()) ; //Wait for the data to come back
  return Wire.read(); //Return this one byte
}

// Writes a single byte (dataToWrite) into addressToWrite
void writeRegister(byte addressToWrite, byte dataToWrite)
{
  Wire.beginTransmission(MMA8452_ADDRESS);
  Wire.write(addressToWrite);
  Wire.write(dataToWrite);
  Wire.endTransmission(); //Stop transmitting
}
