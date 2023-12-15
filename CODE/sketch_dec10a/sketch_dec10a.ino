// scientist BENIEL'S LAB
// GAS DETECTOR
int Input = A0;
int R_LED = 2;
int G_LED = 3;
int Buzzer = 4;
int fan2 = 8;
int fan1 = 9;
// VAL INTEGER
int val;
int MAX = 400;
voidsetup() 
{
Serial.begin(9600);
Serial.begin(9600); // Setting the baud rate of Serial Monitor (Arduino)
delay(100);
pinMode(Input ,INPUT);
pinMode(R_LED ,OUTPUT);
pinMode(G_LED ,OUTPUT);
pinMode(Buzzer ,OUTPUT);
pinMode(fan1 ,OUTPUT);
pinMode(fan2 ,OUTPUT);
}
voidloop(){
val = analogRead(A0);
if(val >= MAX){
digitalWrite(R_LED ,HIGH);
digitalWrite(Buzzer ,HIGH);
digitalWrite(fan1 ,HIGH);
digitalWrite(fan2 ,HIGH); 
 digitalWrite(G_LED ,LOW);
 Serial.println("GAS LEAKING");
 Serial.println("ATD+CMGF=1");
 delay(1000); 
Serial.println("ATD+CMGS=\"+919943249595\"\r");// Replace x with mobile
number
delay(1000);
//Wait forever
Serial.println("AT+CMGF=1"); //Sets the GSM Module in Text Mode
delay(1000); // Delay of 1000 milli seconds or 1 second
Serial.println("AT+CMGS=\"+919943249595\"\r");// Replace x with mobile 
number
delay(1000);
Serial.println(" dust partical is founded keep safe side");// The SMS text you 
want to send
delay(100);
Serial.println((char)26);// ASCII code of CTRL+Z
delay(1000);
while(1); //Wait forever
}
else{
digitalWrite(R_LED ,LOW);
digitalWrite(Buzzer ,LOW);
 digitalWrite(fan1 ,LOW);
 digitalWrite(fan2 ,LOW);
 digitalWrite(G_LED ,HIGH);
Serial.println("NORMAL");
}
}