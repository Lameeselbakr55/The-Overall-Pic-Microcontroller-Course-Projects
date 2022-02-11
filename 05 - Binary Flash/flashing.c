void main() {
TRISB=0b00000000;  //led is output
PORTB=0b0000000;
delay_ms(2000);                 //led is off
while (1)      //infinite loop
{
PORTB = PORTB + 1;
delay_ms(2000);                       //wait 1 second
}
 }