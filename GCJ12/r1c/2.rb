boxes=gets.split.map(&:to_i)
toys=gets.split.map(&:to_i)
def slice(array)
    n=[]
    array.each_slice(2){|x| n<<x}
    n.transpose.reverse
end
toys=slice(toys); boxes=slice(boxes)
p boxes
p toys
boxhash=Hash.new(0)
boxes[0].each_with_index{|x,i| boxhash[x]+=boxes[1][i]}
p boxhash
toyhash=Hash.new(0)
toys[0].each_with_index{|x, i| toyhash[x]+=toys[1][i]}
p toyhash
