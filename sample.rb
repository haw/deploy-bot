# -*- coding: utf-8 -*-
require 'rubygems'
require 'cinch'
require 'mongoid'


Mongoid.load!('misawa.yml')

class Misawa
  include Mongoid::Document
  field :src, type: String
  field :alt, type: String
end

misawa_datas = [{src: "http://img-cdn.jg.jugem.jp/a64/1131071/20131129_874168.gif", type: "ようやく気付いたか新人！俺はなんだかんだでやることやってる奴じゃねえ！マジで役に立たねえんだ！"},
{src: "http://img-cdn.jg.jugem.jp/a64/1131071/20131128_872645.gif", type: "っけね～本当の気持ちを押し殺して親友２人の恋路を後押ししちゃったよ"},
{src: "http://img-cdn.jg.jugem.jp/a64/1131071/20131127_871440.gif", type: "っけね～スベっちゃったかと思ったら統べっちゃったよ"},
{src: "http://img-cdn.jg.jugem.jp/a64/1131071/20131126_870416.gif", type: "見たか？あの映画の濡場(うつしえのじゅじょう)"},
{src: "http://jigokuno.img.jugem.jp/20131125_869109.gif", type: "もっと自信持てよ今 俺はお前に食わしてもらってるんだぜ？"},
{src: "http://jigokuno.img.jugem.jp/20131122_864673.gif", type: "割り勘じゃなくて自分が飲んだ分だけ払いたいデースでも100万円はあげマース！"},
{src: "http://jigokuno.img.jugem.jp/20131121_863334.gif", type: "みんな優しすぎっしょ～！俺ならハッキリ言っちゃうけどな～！"},
{src: "http://jigokuno.img.jugem.jp/20131120_861850.gif", type: "100万円あげマース！"},
{src: "http://jigokuno.img.jugem.jp/20131119_861111.gif", type: "ハッキリ言ってアンタじゃ俺にやりがいは持たせられねえよ"},
{src: "http://jigokuno.img.jugem.jp/20131118_859989.gif", type: "お前ら…勝ったのに俺達に何も要求しないのか…？スポーツと政治は…別…なのか…？"},
{src: "http://jigokuno.img.jugem.jp/20131115_856349.gif", type: "海老の小籠包（かいろうのころうづつみ）"},
{src: "http://jigokuno.img.jugem.jp/20131114_855152.gif", type: "あっ王家の紋章を持つ者もこの店来たんだ"},
{src: "http://jigokuno.img.jugem.jp/20131113_853794.gif", type: "それは…！王家の紋章…？すいません紋章のある方の大浴場のご利用はお断りしております…！"},
{src: "http://jigokuno.img.jugem.jp/20131105_842049.gif", type: "あいつが読んでた漫画読んだぜ…別に読んだとは言わねーけどこれで対応可能だぜ…別に言わねーけど…"},
{src: "http://jigokuno.img.jugem.jp/20131105_842048.gif", type: "もっとだ！もっと突き詰められる！厚めのスーツで汗だくになった方がいいのか！薄いスーツで凍えてた方がいいのか！高いスーツを汚す気概を見せる手もあるぞ！もっとだ！俺達はもっとトチれるぞ！"},
{src: "http://jigokuno.img.jugem.jp/20131105_842047.gif", type: "好きな女子が付けてたキーホルダー見つけたら買うかもな…いや付けねーよ！付けたらストーカーだろー！付けねーよ～！付けるとしても塾のカバンだろ～！"},
{src: "http://jigokuno.img.jugem.jp/20131105_842044.gif", type: "ああ実家の犬ださねやのけんだ"},
{src: "http://jigokuno.img.jugem.jp/20131105_842043.gif", type: "君は僕の天使だいい？天使でも"},
{src: "http://jigokuno.img.jugem.jp/20131105_842042.gif", type: "俺みたいな使えない人間が生きていけるのが豊かっていう事なんだよ先日は本当にすいませんでした"},
{src: "http://jigokuno.img.jugem.jp/20131104_841560.gif", type: "君は僕の宝物だよ売れば結構いい金にもなる"},
{src: "http://jigokuno.img.jugem.jp/20131101_836696.gif", type: "君は僕にとっての太陽だよそれだけの存在だよ"},
{src: "http://jigokuno.img.jugem.jp/20131031_835245.gif", type: "授業中に手紙を回す行為は好かないがもし回ってきたとしたら相当上手く次に回したいぜ…？"},
{src: "http://jigokuno.img.jugem.jp/20131030_833881.gif", type: "まだ告ってないけどでもまあ結構目線の先には立ってる"},
{src: "http://jigokuno.img.jugem.jp/20131029_832791.gif", type: "代引は親しろびけはしん"},
{src: "http://jigokuno.img.jugem.jp/20131028_830939.gif", type: "常温の水とこぬくのすい"},
{src: "http://jigokuno.img.jugem.jp/20131025_827003.gif", type: "悪魔と契約したのか…？何故だ…!?何故代理人抜きで契約したんだー!?"},
{src: "http://jigokuno.img.jugem.jp/20131024_825946.gif", type: "なんで休日に大きめの公園で彼女と１５分くらいのヌルいキャッチボールしないんですか？"},
{src: "http://jigokuno.img.jugem.jp/20131023_824943.gif", type: "あーエクセルなんですけどグラフの配色に秋らしさが欠けるので直してもらえます？"},
{src: "http://jigokuno.img.jugem.jp/20131022_824004.gif", type: "問題ない俺は舌の裏にガムを三個まで隠すことが出来る"},
{src: "http://jigokuno.img.jugem.jp/20131021_821554.gif", type: "デート用の店なら他を当たってくれる？"},
{src: "http://jigokuno.img.jugem.jp/20131018_818136.gif", type: "あ～俺だけスタッフ目線だからかー！失敬～！俺だけスタッフ目線だから笑うとこ違うのかー！失敬～！こいつは失敬～！"},
{src: "http://jigokuno.img.jugem.jp/20131017_816806.gif", type: "俺ー特大号観てると事務所の微妙な関係が気になってハラハラしちゃうんだよねー"},
{src: "http://jigokuno.img.jugem.jp/20131016_815459.gif", type: "今年の決勝吉本何組？"},
{src: "http://jigokuno.img.jugem.jp/20131015_814134.gif", type: "はい３回目～！俺が劇団員に間違えられたの３回目～！はいさ～ん！３～さんさ～ん！さんです～！３回目～！"},
{src: "http://jigokuno.img.jugem.jp/20131014_812413.gif", type: "あー違う違うはいやり直しお前が本当に言いたいのはそうじゃないから"},
{src: "http://jigokuno.img.jugem.jp/20131011_807993.gif", type: "俺が生まれる前って音楽あった？"},
{src: "http://jigokuno.img.jugem.jp/20131010_806851.gif", type: "おめ"},
{src: "http://jigokuno.img.jugem.jp/20131009_805321.gif", type: "そんなミス気にすんなよ…今日うちの会社の株価が暴落した原因俺だぜ…？"},
{src: "http://jigokuno.img.jugem.jp/20131008_803490.gif", type: "綺麗すぎるんだよお前の土下座俺の土下座、きったねえぞ～！"},
{src: "http://jigokuno.img.jugem.jp/20131007_802913.gif", type: "体育の日って知ってるか…？そうだ…！俺達は気づかない間に国から運動を強制されている…！"},
{src: "http://jigokuno.img.jugem.jp/20131004_798560.gif", type: "『僕が使ってるわけではありませんがそのクラスの弱体化は明らかに横暴です。ユーザーの反感を買うことは間違いなくひいてはゲーム全体の評判・売上・寿命にも大きく影響するでしょう。これが改善されないようであれば僕はこのゲームをやめます。友達もそう言ってます。それに"},
{src: "http://jigokuno.img.jugem.jp/20131003_797524.gif", type: "この前大将と野球観に行っちゃってさ～！ね～！大将～！ちょっと大将～！もう～！大将～！"},
{src: "http://jigokuno.img.jugem.jp/20131002_796399.gif", type: "あっ大丈夫ですよこの子出身が渋谷に近くなくても噛み殺さないんですよ～"},
{src: "http://jigokuno.img.jugem.jp/20131001_794473.gif", type: "まっ美味いけどブログで紹介できるレベルかなっ？"},
{src: "http://jigokuno.img.jugem.jp/20130927_789047.gif", type: "お前ビートルズ何周目？俺？俺は昨日から７周目に入ったけどなに？"},
{src: "http://jigokuno.img.jugem.jp/20130924_785049.gif", type: "あ～呆れる\r\nホンット自分に呆れるせっかくみんなで海来てんのに音楽のことばっか考えてんだぜ？"},
{src: "http://jigokuno.img.jugem.jp/20130923_783617.gif", type: "元々会社が休みの日に仕事を休んでも仕事を休んだ気にはならねえんだよ！"},]

misawa_datas.each do |mi|
  Misawa.new(mi).save
end




alts = ["ようやく気付いたか新人！俺はなんだかんだでやることやってる奴じゃねえ！マジで役に立たねえんだ！",
"っけね～本当の気持ちを押し殺して親友２人の恋路を後押ししちゃったよ",
"っけね～スベっちゃったかと思ったら統べっちゃったよ",
"見たか？あの映画の濡場(うつしえのじゅじょう)",
"もっと自信持てよ今 俺はお前に食わしてもらってるんだぜ？",
"割り勘じゃなくて自分が飲んだ分だけ払いたいデースでも100万円はあげマース！",
"みんな優しすぎっしょ～！俺ならハッキリ言っちゃうけどな～！",
"100万円あげマース！",
"ハッキリ言ってアンタじゃ俺にやりがいは持たせられねえよ",
"お前ら…勝ったのに俺達に何も要求しないのか…？スポーツと政治は…別…なのか…？",
"海老の小籠包（かいろうのころうづつみ）",
"あっ王家の紋章を持つ者もこの店来たんだ",
"それは…！王家の紋章…？すいません紋章のある方の大浴場のご利用はお断りしております…！",
"あいつが読んでた漫画読んだぜ…別に読んだとは言わねーけどこれで対応可能だぜ…別に言わねーけど…",
"もっとだ！もっと突き詰められる！厚めのスーツで汗だくになった方がいいのか！薄いスーツで凍えてた方がいいのか！高いスーツを汚す気概を見せる手もあるぞ！もっとだ！俺達はもっとトチれるぞ！",
"好きな女子が付けてたキーホルダー見つけたら買うかもな…いや付けねーよ！付けたらストーカーだろー！付けねーよ～！付けるとしても塾のカバンだろ～！",
"ああ実家の犬ださねやのけんだ",
"君は僕の天使だいい？天使でも",
"俺みたいな使えない人間が生きていけるのが豊かっていう事なんだよ先日は本当にすいませんでした",
"君は僕の宝物だよ売れば結構いい金にもなる",
"君は僕にとっての太陽だよそれだけの存在だよ",
"授業中に手紙を回す行為は好かないがもし回ってきたとしたら相当上手く次に回したいぜ…？",
"まだ告ってないけどでもまあ結構目線の先には立ってる",
"代引は親しろびけはしん",
"常温の水とこぬくのすい",
"悪魔と契約したのか…？何故だ…!?何故代理人抜きで契約したんだー!?",
"なんで休日に大きめの公園で彼女と１５分くらいのヌルいキャッチボールしないんですか？",
"あーエクセルなんですけどグラフの配色に秋らしさが欠けるので直してもらえます？",
"問題ない俺は舌の裏にガムを三個まで隠すことが出来る",
"デート用の店なら他を当たってくれる？",
"あ～俺だけスタッフ目線だからかー！失敬～！俺だけスタッフ目線だから笑うとこ違うのかー！失敬～！こいつは失敬～！",
"俺ー特大号観てると事務所の微妙な関係が気になってハラハラしちゃうんだよねー",
"今年の決勝吉本何組？",
"はい３回目～！俺が劇団員に間違えられたの３回目～！はいさ～ん！３～さんさ～ん！さんです～！３回目～！",
"あー違う違うはいやり直しお前が本当に言いたいのはそうじゃないから",
"俺が生まれる前って音楽あった？",
"おめ",
"そんなミス気にすんなよ…今日うちの会社の株価が暴落した原因俺だぜ…？",
"綺麗すぎるんだよお前の土下座俺の土下座、きったねえぞ～！",
"体育の日って知ってるか…？そうだ…！俺達は気づかない間に国から運動を強制されている…！",
"『僕が使ってるわけではありませんがそのクラスの弱体化は明らかに横暴です。ユーザーの反感を買うことは間違いなくひいてはゲーム全体の評判・売上・寿命にも大きく影響するでしょう。これが改善されないようであれば僕はこのゲームをやめます。友達もそう言ってます。それに",
"この前大将と野球観に行っちゃってさ～！ね～！大将～！ちょっと大将～！もう～！大将～！",
"あっ大丈夫ですよこの子出身が渋谷に近くなくても噛み殺さないんですよ～",
"まっ美味いけどブログで紹介できるレベルかなっ？",
"お前ビートルズ何周目？俺？俺は昨日から７周目に入ったけどなに？",
"あ～呆れる\r\nホンット自分に呆れるせっかくみんなで海来てんのに音楽のことばっか考えてんだぜ？",
"元々会社が休みの日に仕事を休んでも仕事を休んだ気にはならねえんだよ！"]


srcs = {"0" => "http://img-cdn.jg.jugem.jp/a64/1131071/20131129_874168.gif",
"1" => "http://img-cdn.jg.jugem.jp/a64/1131071/20131128_872645.gif",
"2" => "http://img-cdn.jg.jugem.jp/a64/1131071/20131127_871440.gif",
"3" => "http://img-cdn.jg.jugem.jp/a64/1131071/20131126_870416.gif",
"4" => "http://jigokuno.img.jugem.jp/20131125_869109.gif",
"5" => "http://jigokuno.img.jugem.jp/20131122_864673.gif",
"6" => "http://jigokuno.img.jugem.jp/20131121_863334.gif",
"7" => "http://jigokuno.img.jugem.jp/20131120_861850.gif",
"8" => "http://jigokuno.img.jugem.jp/20131119_861111.gif",
"9" => "http://jigokuno.img.jugem.jp/20131118_859989.gif",
"10" => "http://jigokuno.img.jugem.jp/20131115_856349.gif",
"11" => "http://jigokuno.img.jugem.jp/20131114_855152.gif",
"12" => "http://jigokuno.img.jugem.jp/20131113_853794.gif",
"13" => "http://jigokuno.img.jugem.jp/20131105_842049.gif",
"14" => "http://jigokuno.img.jugem.jp/20131105_842048.gif",
"15" => "http://jigokuno.img.jugem.jp/20131105_842047.gif",
"16" => "http://jigokuno.img.jugem.jp/20131105_842044.gif",
"17" => "http://jigokuno.img.jugem.jp/20131105_842043.gif",
"18" => "http://jigokuno.img.jugem.jp/20131105_842042.gif",
"19" => "http://jigokuno.img.jugem.jp/20131104_841560.gif",
"20" => "http://jigokuno.img.jugem.jp/20131101_836696.gif",
"21" => "http://jigokuno.img.jugem.jp/20131031_835245.gif",
"22" => "http://jigokuno.img.jugem.jp/20131030_833881.gif",
"23" => "http://jigokuno.img.jugem.jp/20131029_832791.gif",
"24" => "http://jigokuno.img.jugem.jp/20131028_830939.gif",
"25" => "http://jigokuno.img.jugem.jp/20131025_827003.gif",
"26" => "http://jigokuno.img.jugem.jp/20131024_825946.gif",
"27" => "http://jigokuno.img.jugem.jp/20131023_824943.gif",
"28" => "http://jigokuno.img.jugem.jp/20131022_824004.gif",
"29" => "http://jigokuno.img.jugem.jp/20131021_821554.gif",
"30" => "http://jigokuno.img.jugem.jp/20131018_818136.gif",
"31" => "http://jigokuno.img.jugem.jp/20131017_816806.gif",
"32" => "http://jigokuno.img.jugem.jp/20131016_815459.gif",
"33" => "http://jigokuno.img.jugem.jp/20131015_814134.gif",
"34" => "http://jigokuno.img.jugem.jp/20131014_812413.gif",
"35" => "http://jigokuno.img.jugem.jp/20131011_807993.gif",
"36" => "http://jigokuno.img.jugem.jp/20131010_806851.gif",
"37" => "http://jigokuno.img.jugem.jp/20131009_805321.gif",
"38" => "http://jigokuno.img.jugem.jp/20131008_803490.gif",
"39" => "http://jigokuno.img.jugem.jp/20131007_802913.gif",
"40" => "http://jigokuno.img.jugem.jp/20131004_798560.gif",
"41" => "http://jigokuno.img.jugem.jp/20131003_797524.gif",
"42" => "http://jigokuno.img.jugem.jp/20131002_796399.gif",
"43" => "http://jigokuno.img.jugem.jp/20131001_794473.gif",
"44" => "http://jigokuno.img.jugem.jp/20130927_789047.gif",
"45" => "http://jigokuno.img.jugem.jp/20130924_785049.gif",
"46" => "http://jigokuno.img.jugem.jp/20130923_783617.gif",
}


bot = Cinch::Bot.new do
  configure do |c|
    c.server = "192.168.0.221"
    c.channels = ["#sd"]
  end

  on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
  end

  on :message, "うんこ" do |m|
    m.reply "#{m.user.nick} おまえのことだよ！"
  end

  on :message, "mi" do |m|
    index = alts.index "っけね～本当の気持ちを押し殺して親友２人の恋路を後押ししちゃったよ"
    p index
    m.reply srcs[index.to_s]
  end

  on :message, "misawa" do |m|
    m.reply "http://img-cdn.jg.jugem.jp/a64/1131071/20131129_874168.gif"
  end

end

bot.start
