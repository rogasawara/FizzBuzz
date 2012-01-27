class Hoge
  @@ary=[] #into fib
  #フィボナッチ数列生成
  def fi(num)
  #f(1)=0,f(2)=1
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
     #return fi(num-2)+fi(num-1)
    end
 end
end

a= Hoge.new
(1..100).each do |i|
 puts a.fi(i)
end
