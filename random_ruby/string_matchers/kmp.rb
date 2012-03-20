pi=Array.new
def kmp(text, pattern)
	n,m=text.length-1,pattern.length-1
	pi=compute_prefix_on(pattern)
	q=0 
	for i in 1..n
	while((q>0)&&(pattern[q+1]!=text[i])) do
		q = pi[q]
	end
	q+=1 if pattern[q+1]==text[i]
	begin puts "Pattern occurs with shift: #{i-m}"; q=pi[q];end if q==m
	end #of for loop
end
def compute_prefix_on(pat)
	m=pat.length-1;pie=Array.new
	pie[1]=0; k=0
	for q in 2..m
		while((k>0)&&(pat[k+1]!=pat[q])) do
			k=pie[k]
		end
		k+=1 if pat[k+1]==pat[q]
		pie[q]=k
		end
		pie
end 
puts "Enter Text: "; str=gets.chomp!
puts "Enter Pattern: ";pat=gets.chomp!
str,pat=" "+str, " "+pat
kmp(str,pat)
