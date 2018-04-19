

ldi r16, 0b11111100
out DDRD, r16
ldi r16, 0b00000001
out DDRB, r16

ldi r16, 0b10010000
out PORTD, r16
ldi r16, 0b00000000
out PORTB. r16

Start:
rjmp Start
