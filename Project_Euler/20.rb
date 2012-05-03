class Fixnum
    def fact
        raise "bad argument, dude" if self<1
        return 1 if self==1
        self*(self-1).fact
    end
end
p 100.fact.to_s.split(//).map(&:to_i).inject(&:+)
