    addi s1, x0, 1        # s1 = 1 初始化，测试比较的基本条件
    addi s0, x0, -1       # s0 = -1 初始化，测试负数的比较

label5:
    beq x0, x0, label1    # 恒成立的条件：x0 == x0，始终跳转到 label1               

label6:                                                                          
    bltu x0, s0, label8   # 无符号比较：测试 x0 是否无符号小于 s0。因为 x0 = 0，s0 = -1，因此跳转会成立。 pc:12 异常跳转

label4:
    blt s1, x0, label5    # 有符号比较：测试 s1 是否小于 x0。因为 s1 = 1，x0 = 0，跳转不成立。     stu:4

    beq x0, x0, label6    # 恒成立的条件：x0 == x0，跳转到 label6

label3:
    beq s1, s1, label4    # 恒成立的条件：s1 == s1，始终跳转到 label4               

label10:
    beq s0, s0, end       # 恒成立的条件：s0 == s0，始终跳转到 end

label2:
    blt x0, s1, label3    # 有符号比较：测试 x0 是否小于 s1。x0 = 0，s1 = 1，因此跳转成立。

label9:
    blt s0, s1, label10   # 有符号比较：测试 s0 是否小于 s1。s0 = -1，s1 = 1，因此跳转成立。

label1:
    beq x0, x0, label2    # 恒成立的条件：x0 == x0，始终跳转到 label2               

label8:
    bltu s1, s1, label9   # 无符号比较：测试 s1 是否无符号小于 s1。这个条件永远不会成立，因为 s1 == s1。 ref:11

    beq s1, s1, label9    # 恒成立的条件：s1 == s1，始终跳转到 label9

end:
    addi s0, x0, 2        # 程序结束后，s0 被设置为 2，标志程序执行完毕。
