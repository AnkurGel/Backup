puts "Enter Text: "; str=gets.chomp
puts "Enter Pattern: "; pat=gets.chomp
n,m=str.length, pat.length
for s in 0..(n-m) do
len_ctr=0
	if pat[0]==str[s]
	len_ctr=1
		for i in 1..m
		if pat[i]!=str[s+i] then break
		else len_ctr+=1 
		end
		puts "Pattern occurs with shift: #{s}" if len_ctr==m
		end
	end
end

