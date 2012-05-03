class T9 
    attr_accessor :words
    @@hash={abc: 2, def: 3, ghi: 4, jkl: 5, mno: 6, pqrs: 7, tuv: 8, wxyz: 9, ' '=>0}
    @@last=-1
    def initialize(string)
        @words=string.downcase
        @ans=String.new
    end

    def find_t9
        words.chars {|c|
            @@hash.each{|n, v| if n.to_s.include?c
                        @ans<<' ' if v==@@last
                        ((n.to_s=~Regexp.new(c))+1).times {@ans<<v.to_s}
                        @@last=v
    end
            }}
            @ans
end
end

cases=gets.to_i
1.upto(cases) do |instance|
    str=gets.chomp
    puts "Case ##{instance}: "+T9.new(str).find_t9.strip
end
