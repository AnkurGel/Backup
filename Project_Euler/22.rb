class String
    def sum_char_values
        t=0
        self.split(//).each{|chara| t+=(chara.ord-64)}
        t
    end
end
f=File.read('names.txt').split(/[",]/).uniq
f.delete_at(0)
f=f.sort
total_score=0
f.each_with_index do |name,ind|
    total_score+=name.sum_char_values*(ind+1)
end
p total_score
