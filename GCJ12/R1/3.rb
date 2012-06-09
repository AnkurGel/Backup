c=gets.to_i
1.upto(c) do |cases| 
    n,*arr=gets.chomp.split.map(&:to_i)
    if arr.uniq.length==1 
        t=(100.to_f/n.to_f).to_f
        print "Case ##{cases}: "
        for i in 0...n
            print t, " "
        end
    else
        arrdup=arr.dup
        ndup=n
        arr.uniq!
        n=arr.length
        total=arrdup.inject(:+)
        #t=(total.to_f*2.to_f)/n.to_f
        t=arrdup.inject(:+)
        print "Case ##{cases}: "
        for i in 0...ndup 
            printf("%.6f", (t.to_f-arrdup[i].to_f)/total.to_f*100)
            print " "
        end
    end
    print "\n"
end
