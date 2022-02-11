void main() {
trisc.f0=0;
trisc.f1=0;
while (1)
{
portc.f0=0;
portc.f1=1;
delay_ms(3000);
portc.f0=1;
portc.f1=0;
delay_ms(3000);
}
}