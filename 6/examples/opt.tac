  t0 = 1
  t1 = 1
  t2 = 1 + 1
  two = t2
  t10 = two
  t11 = 0
  t12 = t10 - 0
  jneg l1 t12
  jump l0
l1:
  t3 = two
  two2 = t3
l2:
  t7 = two2
  t8 = 0
  t9 = t7 - 0
  jneg l4 t9
  jump l3
l4:
  t4 = two2
  t5 = 1
  t6 = t4 + 1
  two2 = t6
  jump l2
l3:
l0:
  t13 = arg
  n = t13
  t14 = 1
  r = 1
  t19 = n
  t20 = 0
  t21 = t19 - 0
  jneg l6 t21
  jump l7
l7:
  t16 = n
  t17 = 0
  t18 = t16 - 0
  jz l6 t18
  jump l5
l6:
  t15 = r
  ret t15
l5:
l8:
  t58 = n
  t59 = 0
  t60 = 1
  t61 = 0 + 1
  t62 = t58 - t61
  jneg l14 t62
  jump l10
l14:
  t53 = n
  t54 = 0
  t55 = 1
  t56 = 0 + 1
  t57 = t53 - t56
  jneg l9 t57
  jump l10
l10:
  t22 = 1
  one = 1
  t23 = one
  t24 = two
  t25 = t23 + t24
  three = t25
  t26 = three
  t27 = one
  t28 = t26 + t27
  four = t28
  t29 = n
  t30 = two
  t31 = t29 / t30
  ndiv = t31
  t32 = n
  t33 = one
  t34 = t32 - t33
  t35 = two
  t36 = t34 / t35
  nmdiv = t36
  t37 = n
  newn = t37
  t46 = ndiv
  t47 = nmdiv
  t48 = t46 - t47
  jz l13 t48
  jump l12
l13:
  t41 = n
  t42 = one
  t43 = t41 - t42
  t44 = two
  t45 = t43 / t44
  newn = t45
  jump l11
l12:
  t38 = n
  t39 = two
  t40 = t38 / t39
  newn = t40
l11:
  t49 = newn
  n = t49
  t50 = r
  t51 = one
  t52 = t50 + t51
  r = t52
  jump l8
l9:
  t63 = r
  ret t63
