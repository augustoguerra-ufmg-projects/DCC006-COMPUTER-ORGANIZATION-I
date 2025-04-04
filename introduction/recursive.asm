.data
.text
fact:
addi x2, x2, -16 #x2: stack ptr
sw x1, 8(x2)
sw x12, 0(x2)
addi x5, x12, -1
bge x5, x0, label1
addi x10, x0, 1
addi x2, x2, 16
jalr x0, 0(x1)
label1:
addi x12, x12, -1
jal x1, fact
addi x6, x10, 0
lw x12,0(x2)
lw x1, 8(x2)
addi x2, x2, 16
mul x10, x12, x6
jalr x0, 0(x1)