c=gets.to_i
while c>0 do
    num_of_dig=gets.to_i
    l=(10**(num_of_dig-1))*4
    u=10**(num_of_dig)-1
    arr=[]
    ans=-1
    for x in (l..u) do 
        x=x.to_s
        unless x.match(/[01235689]/)
            if x.count('4')%7==0&&x.count('7')%4==0 
                ans=x
                break
            end
        end
    end
    #arr=(l..u).to_a.map(&:to_s).select{|x| !x.match(/[01235689]/)}.select{|a| a.count('4')%7==0&&a.count('7')%4==0} #Numbers constituted. FUCK YEAH to approach
    #p arr
    puts ans
    
    c-=1
end
