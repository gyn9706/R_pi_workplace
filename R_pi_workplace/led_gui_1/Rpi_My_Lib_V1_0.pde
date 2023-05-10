
// my_lib_rpi

final int led1=2; //#define
final int led2=3;
final int led3=4;
final int led4=17;
final int led5=27;
final int led6=22;
final int led7=10;
final int led8=9;

void byte_out(int data)
{
  bit_out(led1, data%2);      // bit 0 = lsb
  bit_out(led2, data/2%2);    // bit 1 
  bit_out(led3, data/4%2);    // bit 2 
  bit_out(led4, data/8%2);    // bit 3 
  bit_out(led5, data/16%2);   // bit 4 
  bit_out(led6, data/32%2);   // bit 5 
  bit_out(led7, data/64%2);   // bit 6 
  bit_out(led8, data/128%2);  // bit 7 = msb 
}

final void bit_out(int pin, int value)
{
  if(value==1) GPIO.digitalWrite(pin, GPIO.HIGH);
  else GPIO.digitalWrite(pin, GPIO.LOW);
}

final void pin_mode_set(int pin, String value)
{
  if(value=="out") GPIO.pinMode(pin, GPIO.OUTPUT);
  else if(value =="in") GPIO.pinMode(pin, GPIO.INPUT);
}
