.text
    addi t0,x0,-6
    srai t0,t0,2 # t0 = -2
    addi t1,x0,2 # t1 = 2
    sub t1,t1,t0 # t1 = 4
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sub t1,t1,t0
    sra t1, t1, t1     
    mul t1,t1,t1
    mulh t1,t1,t1
    mulhu t1,t1,t1
    
    