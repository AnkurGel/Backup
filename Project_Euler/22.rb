f=File.read('names.txt').split(/[",]/).uniq
f.delete_at(0)
f=f.sort
total_score=0
f.each_with_index do |name,ind|
    t=0
    name.split(//).each{|character| t+=(character.ord-64)}
    total_score+=t*(ind+1)
end
p total_score
