
ldi r30, 0b00111100
out DDRD, r16

ldi r16, 0b00000000;W
rcall compw
ldi r20, 0b00000010
rcall loopw
mov r27,r16

ldi r16, 0b00001000
out DDRD, r16
ldi r16, 0b00000000;W
ldi r17, 0b00000000;X   
ldi r19, 0b00000000;Z
rcall compz
mov r21,r17
rcall compx
and r17,r19
and r17,r16
mov r22,r17
rcall compw
and r16,r21
or r16,r22
ldi r20, 0b00000011
rcall loopw
mov r28,r16


ldi r16, 0b00000000;W
ldi r17, 0b00000000;X 
ldi r18, 0b00000000;Y  
ldi r19, 0b00000000;Z
mov r21,r18
rcall compy
and r18,r17
and r18,r16
rcall compx
and r17,r21
rcall compw
and r16,r21
or r16,r17
or r16,r18
ldi r20, 0b00000100
rcall loopw
mov r29,r16

ldi r16, 0b00000000;W
ldi r17, 0b00000000;X 
ldi r18, 0b00000000;Y  
ldi r19, 0b00000000;Z
and r17,r16
and r17,r18
rcall loopw
and r16,r19
or r16,r17
ldi r20, 0b00000101
rcall loopw
mov r30,r16
add r30,r29
add r30,r28
add r30,r27
out PORTD,r30

Start:
 rjmp Start
 
loopw: lsl r16
dec r20
brne loopw
ret

compw: mov r0,r16
ldi r16,0b00000001
eor r16,r0
ret

compx: mov r0,r17
ldi r17,0b00000001
eor r17,r0
ret

compy: mov r0,r18
ldi r18,0b00000001
eor r18,r0
ret

compz: mov r0,r19
ldi r19,0b00000001
eor r19,r0
ret
