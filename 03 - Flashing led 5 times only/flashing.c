void main() {
int i;
TRISC.B0=0;  //led is output
PORTC.B0=0;                 //led is off
for( i=0;i<5;i++)
{
PORTC.B0=1;                   //led on
delay_ms(1000);                       //wait 1 second
PORTC.B0=0;                   //led off
delay_ms(1000);                        //wait i second
}
 }