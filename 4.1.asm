
ldi r16, 0b00111100
out DDRD, r16

ldi r16, 0b00000001
ldi r17, 0b00000000

and r16,r17
or r16,r17
eor r16,r17

ldi r20, 0b00000010
rcall loopw
out PORTD, r16

Start:
 rjmp Start
 
loopw: lsl r16
       dec r20
       brne loopw
       ret
