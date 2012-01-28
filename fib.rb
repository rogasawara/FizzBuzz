class Hoge
  @@ary=[] #数列格納
  #(num)番目のフィボナッチ数列生成
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
     puts "えらああああああ 直接読んじゃだめ"
    end
  end
   #1からlast番目のフィボナッチつくろう
 def ran(last)
  (1..last).each do |i|
   puts fi(i)
  end
 end
end

#10個つくってみた
a= Hoge.new
a.ran(10)
p a.fi(100)

