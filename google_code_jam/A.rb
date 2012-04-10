class OptimalSelect
   attr_accessor :max, :list
   @@combo=0
   def initialize(max, list)
      @max=max; @list=list
   end

   def find_combinations
      list.combination(2){|x| @@combo=x if x[0]+x[1]==max}
   end

   def resulteval
      find_combinations
      "#{list.index(@@combo[0])+1} #{list.rindex(@@combo[1])+1}"
   end

end

n=gets.to_i
(1..n).each do |instance|
   max=gets.to_i
   numbers_in_list=gets.to_i
   num_list=gets.split.map(&:to_i)
   puts "Case ##{instance}: "+OptimalSelect.new(max,num_list).resulteval
end
