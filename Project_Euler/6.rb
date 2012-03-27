s=(1..100).inject(0){|s,v| s+v*v}
d=(1..100).reduce(:+)
p d*d-s
