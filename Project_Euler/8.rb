arr=[]
f=File.open('8_string').read.chomp
for i in 0..9995
    arr<<f[i...i+5]
end
arr=arr.compact
p arr.map{|x| x.split(//).map(&:to_i).inject(1){|p,v| p*v}}.max
