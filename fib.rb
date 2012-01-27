class Hoge
  @@ary=[] #into fib
  #(num)番目のフィボナッチ数列生成
  def fi(num)
  #fi(1)=0,fi(2)=1
   case num
    when 1
     @@ary << 0
     return 0
    when 2
     @@ary << 1
     return 1
    else
     @@ary << @@ary[num-3]+@@ary[num-2]
     return @@ary[num-3]+@@ary[num-2]
    end
 end
end
#100個つくってみた
a= Hoge.new
(1..100).each do |i|
 puts a.fi(i)
end
