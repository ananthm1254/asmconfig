
sbi DDRD, 5
ldi r16, 0b00000101
out TCCR0B, r16
clr r18
ldi r20, 0b00100000

loop:
      eor r18,r20
      out PORTB, r18
      ldi r19,0b01000000
      rcall PAUSE
      rjmp loop
      
PAUSE:
lp2: IN r16, TIFR0
      ldi r17,0b00000010
      and r16,r17
      breq PAUSE
      out TIFR0,r17
      
dec r19
brne lp2
ret
