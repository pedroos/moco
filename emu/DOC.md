```
register holds 8 bits
word size is 8 bits
number size is 8 bits (either signed or unsigned)
instruction needs 16 bits

registers:
N (transient ("new"))
A - H (general purpose)

numbers: dec or hex.

instruction layout:
-opcodes take 4 bits
-register references take 4 bits
-values (numbers) take 8 bits
-words (addresses) take 8 bits

all:
-opcode
  new:
  -value (this is how a value is input into the system)
  cp:
  -source register
  -dest register
  push:
  -source register
  pop:
  -dest register
  add/mult:
  -first number register
  -second number register
  (result goes to transient register)
  load:
  -dest register
  -source register with source address
  save:
  -source register
  -source register with dest address

examples:
new   255 #0000111111110000
cp    N G #0010000011100000
new   10  #0000000010100000
save  G N #0110111000000000
load  N B #0101000010010000
new   11  #0000000010110000
add   B N #1010100100000000
cp    N B #0010000010010000
```
