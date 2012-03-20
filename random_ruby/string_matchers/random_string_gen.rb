base_arr=['ankur', 'pratik', 'amita','ankita','astha']
puts base_arr.sample
ctr=0; fh=File.open('randomstringtext','w')
while(ctr<100000)
	var=base_arr.sample
	fh.print(var);
	print var
	ctr+=1
	end
