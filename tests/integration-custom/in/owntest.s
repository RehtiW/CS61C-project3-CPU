    .section .text
    .global _start

_start:
    # 初始化寄存器
    addi s1, x0, 5     # s1 = 5
    addi s0, x0, -3    # s0 = -3
    addi s2, x0, 7     # s2 = 7
    addi s3, x0, 2     # s3 = 2

label1:
    beq x0, x0, label2         # 始终成立，跳转到 label2
label2:
    blt s0, s1, label3         # 如果 s0 < s1 (即 -3 < 5)，跳转到 label3
    addi s3, s3, 1             # 否则，s3 增加 1
label3:
    beq s1, s1, label4         # 始终成立，跳转到 label4
label4:
    bltu s1, s2, label5        # 如果 s1 (5) 无符号小于 s2 (7)，跳转到 label5
    addi s3, s3, 1             # 否则，s3 增加 1
label5:
    bge s0, s1, label6         # 如果 s0 (-3) >= s1 (5)，跳转到 label6
    addi s3, s3, 1             # 否则，s3 增加 1
label6:
    bne s0, s2, label7         # 如果 s0 != s2 (-3 != 7)，跳转到 label7
    addi s3, s3, 1             # 否则，s3 增加 1
label7:
    blt s0, s1, label8         # 如果 s0 < s1，跳转到 label8
    addi s3, s3, 1             # 否则，s3 增加 1
label8:
    bltu s2, s3, label9        # 如果 s2 < s3 无符号，跳转到 label9
    addi s3, s3, 1             # 否则，s3 增加 1
label9:
    beq s0, s0, label10        # 始终成立，跳转到 label10
label10:
    bge s1, s2, label11        # 如果 s1 >= s2，跳转到 label11
    addi s3, s3, 1             # 否则，s3 增加 1
label11:
    bltu s2, s3, label12       # 如果 s2 无符号小于 s3，跳转到 label12
    addi s3, s3, 1             # 否则，s3 增加 1
label12:
    beq s0, s0, end            # 始终成立，跳转到 end

end:
    addi s0, x0, 2             # 结束时，s0 设置为 2
