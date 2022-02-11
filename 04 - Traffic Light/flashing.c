void main() {
TRISC=0b00000000;  //led is output
PORTC=0b00000000;  //led is off
while (1)      //infinite loop
{
PORTC.F0=1;                   //led on
PORTC.F1=0;
PORTC.F2=0;
delay_ms(1000);                       //wait 1 second
PORTC.F0=0;
PORTC.F1=1;
PORTC.F2=0;
delay_ms(1000);                        //wait i second
PORTC.F0=0;
PORTC.F1=0;
PORTC.F2=1;
delay_ms(1000);
}
 }