class Hoge
  @@ary=[] #数列格納
  #フィボナッチ数列生成
  def fi(num)
  #fi(1)=0,fi(2)=1
   begin
   case num
    when 1
     @@ary << 0
     return 0
    when 2
     @@ary << 1
     return 1
    else
    #あくまで配列から拾ってきますので直接アレだとアレ
     @@ary << @@ary[num-3]+@@ary[num-2]
     return @@ary[num-3]+@@ary[num-2]
    #下のようにすると爆発する
    #return fi(num-2)+fi(num-1)
    end
    rescue
     puts "直接よんじゃだめぽ"
    end
  end

 #1からn番目のフィボナッチ数列つくろう
 def ran(n)
  (1..n).each do |i|
   puts fi(i)
  end
 end

 #n番目が欲しいとき
 def fib_n(n)
   (1..n).each do |i|
    fi(i)
    #n番目のとき出力
    puts fi(n) if( i == n )
   end
 end
end

a= Hoge.new
#10個つくってみた
a.ran(10)
#10番目のみ出力
a.fib_n(10)
