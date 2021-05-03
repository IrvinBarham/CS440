  t0 = 5
  n = 5
  t1 = 1
  fact = 1
l0:
  t8 = n
  t9 = 1
  t10 = t8 - 1
  jneg l1 t10
  jump l2
l2:
  t2 = fact
  t3 = n
  t4 = t2 * t3
  fact = t4
  t5 = n
  t6 = 1
  t7 = t5 - 1
  n = t7
  jump l0
l1:
  t11 = fact
  ret t11
