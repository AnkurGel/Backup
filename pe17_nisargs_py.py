words={0:'',1:'one',2:'two',3:'three',4:'four',5:'five',6:'six',7:'seven',8:'eight',9:'nine',10:'ten',11:'eleven',12:'twelve',13:'thirteen',14:'fourteen',15:'fifteen',16:'sixteen',17:'seventeen',18:'eighteen',19:'nineteen',20:'twenty',30:'thirty',40:'forty',50:'fifty',60:'sixty',70:'seventy',80:'eighty',90:'ninety',100:'hundred',1000:'onethousand'}
total_count=0

def tens_digit(no,words):
        if no>=100:
            return no/10-hundreds_digit*10
        return no/10

def convert_no_to_word(no):

    if no>=1 and no<=20:
        return len(words[no])

    if no>=21 and no<=99:
        return len(words[tens_digit(no,words)*10])+len(words[ones_digit])

    if no>=100 and no<=999:

        if tens_digit(no,words)==1:
            return len(words[hundreds_digit])+len(words[100])+len('and')+len(words[10+ones_digit])
        
        if no%100!=0:
            return len(words[hundreds_digit])+len(words[100])+len('and')+len(words[tens_digit(no,words)*10])+len(words[ones_digit])
        else:
            return len(words[hundreds_digit])+len(words[100])

    if no==1000:
        return len(words[no])

for no in range(1,1001):
    hundreds_digit=no/100
    ones_digit=no%10
    total_count+=convert_no_to_word(no)

print total_count
