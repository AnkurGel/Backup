base_arr=('a'..'e').map(&:to_s)
ctr=0; fh=File.open('randomcharactersfile','w'); begin var=base_arr.sample;fh.print(var); print var; ctr+=1 end while(ctr<4000000)
