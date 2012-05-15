n=gets.to_i
prod={}
n.times{ a,b=gets.chomp.split; prod[a]=b.to_i}
prod=prod.sort_by{|x, v| v}.reverse
n=gets.to_i
while n>0 do
    q=gets.chomp #will convert this in regexp and push it in hash
    h={}; 
    for name,pri in prod
        begin h[name]=pri; break; end if name=~Regexp.new(q)
    end
    res=h.sort_by{|k,v| v}.reverse
    puts (res.empty?)? "NO": "#{res.first[0]}"
    n-=1
end
