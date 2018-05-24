def judge(d, x)
	case d
	when 0 then x = x + 3
	when 1, 2 then x = x + 6
end 
	return x
end

def update(z, t)
	z.times do
	print("_")
	end

	print("p")
	
	w = t - z

	w.times do
	print("_")
	end
	printf("\n")

end

x = 0
y = 0
t = 20

while 1

while 1
	print("数字を入力\n0グー\n1チョキ\n2パー\n")
	a = gets.to_i
	if(a >= 0 && a <= 2) then break end
	print("もう一回\n")
end

b = rand(2)

c = b - a

case b
when 0 then puts"\n相手はグーです"
when 1 then puts"\n相手はチョキです"
when 2 then puts"\n相手はパーです"
end

case c
when 0 then print("あいこです\n")
when 1, -2 then x = judge(a, x) 
when -1, 2 then y = judge(b, y)
end

printf("現在%d対%dです\n\n", x, y)

if x >= t then print("あなたの勝ちです\n")
break end
if y >= t then print("あなたの負けです\n") 
break end

update(x, t)
update(y, t)

end
