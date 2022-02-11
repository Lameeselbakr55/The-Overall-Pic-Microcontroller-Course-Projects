void main() {
TRISC.B0=0;  //led is output
PORTC.B0=0;                 //led is off
TRISB.F0=1;
while (1)      //infinite loop
{
if(PORTB.F0==1)
{
PORTC.B0=1;                   //led on
delay_ms(1000);                       //wait 1 second
PORTC.B0=0;                   //led off
delay_ms(1000);                        //wait i second
}
 }
}