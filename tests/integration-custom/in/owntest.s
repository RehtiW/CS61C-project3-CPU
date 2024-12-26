.text
    addi t0,x0,1
    addi t0,t0,1
    addi t0,t0,1
    addi t0,x0,2
    addi t0,t0,3
    addi t0,t0,4
    andi t1, t0, 1  # t1 = 1
    slli t1, t1, 2  # t1 = 4