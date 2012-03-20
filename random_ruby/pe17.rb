num=Hash.new(0)
num={1=>"one", 2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"ninteen",20=>"twenty",21=>"twentyone",22=>"twentytwo",23=>"twentythree",24=>"twentyfour",25=>"twentyfive",26=>"twentysix",27=>"twentyseven",28=>"twentyeight",29=>"twentynine",30=>"thirty",31=>"thirtyone",32=>"thirtytwo",33=>"thirtythree",34=>"thirtyfour",35=>"thirtyfive",36=>"thirtysix",37=>"thirtyseven",38=>"thirtyeight",39=>"thirtynine",40=>"forty",41=>"fortyone",42=>"fortytwo",43=>"fortythree",44=>"fortyfour",45=>"fortyfive",46=>"fortysix",47=>"fortyseven",48=>"fortyeight",49=>"fortynine",50=>"fifty",51=>"fiftyone",52=>"fiftytwo",53=>"fiftythree",54=>"fiftyfour",55=>"fiftyfive",56=>"fiftysix",57=>"fiftyseven",58=>"fiftyeight",59=>"fiftynine",60=>"sixty",61=>"sixtyone",62=>"sixtytwo",63=>"sixtythree",64=>"sixtyfour",65=>"sixtyfive",66=>"sixtysix",67=>"sixtyseven",68=>"sixtyeight",69=>"sixtynine",70=>"seventy",71=>"seventyone",72=>"seventytwo",73=>"seventythree",74=>"seventyfour",75=>"seventyfive",76=>"seventysix",77=>"seventyseven",78=>"seventyeight",79=>"seventynine",80=>"eighty",81=>"eightyone",82=>"eightytwo",83=>"eightythree",84=>"eightyfour",85=>"eightyfive",86=>"eightysix",87=>"eightyseven",88=>"eightyeight",89=>"eightynine",90=>"ninety",91=>"ninetyone",92=>"ninetytwo",93=>"ninetythree",94=>"ninetyfour",95=>"ninetyfive",96=>"ninetysix",97=>"ninetyseven",98=>"ninetyeight",99=>"ninetynine"}
#okay kiddo, hash is formed. Now analyze the input case.
puts "Enter the number: "
n=gets.to_i #enter the number
if(n>1000)
	puts "Number is greater than 1000, NOT PERMITTED!"
end
if n==1000 then puts "Word: One Thousand, Total chars: 11" end
ans=""; flag=0
if (n>=100 && n<1000) 
	first_digit=n/100
	ans<<num[first_digit]
	ans<<" hundred"
	flag=1
	n%=100
end
if (n<100)
	ans<<" and " if flag==1
	ans<<num[n]
end
exp=/[ ]/
space_count=0
ans.each_char do |x|
	space_count+=1 if((x=~exp)!=nil)
end
puts "Space: #{space_count}"
puts "Word: #{ans}, Total chars: #{ans.length-space_count}"
