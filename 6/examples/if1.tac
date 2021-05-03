  t0 = 5
  a = 5
  t3 = a
  t4 = 10
  t5 = t3 - 10
  jneg l2 t5
  jump l1
l2:
  t2 = 1
  b = 1
  jump l0
l1:
  t1 = 2
  b = 2
l0:
  t6 = b
  ret t6
