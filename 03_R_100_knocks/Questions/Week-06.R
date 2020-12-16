# Week-06
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# データ加工 (33 - 58)

# 【51】
# dfの行をシャッフルし、インデックスを振り直して表示
#print(ans[51]) #回答表示



# 【52】
# ①df2の重複行数をカウント
# ②df2の重複行を削除し、df2を表示



# 【53】
# dfのnameの列をすべて大文字に変換し表示



# 【54】
# dfのnameの列をすべて小文字に変換し表示



# 【55】
# dfのsex列に含まれる「female」という単語を
# 「Python」に置換。その後、1行目の
# 「female」が「Python」に置き換わったことを確認



# 【56】
# dfのname列1行目の「Allen, Miss. Elisabeth Walton」の
# 「Elisabeth」を消去(import reをインポート)



# 【57】
# df5の都道府県列と市区町村列を空白がないように
# 「_」で結合(新規列名は「test2」)し、先頭5行を表示
# ※df5の「test」列は通常通り結合した場合の結果



# 【58】
# df2の行と列を入れ替えて表示



# マージと連結(59 - 65)

# 【59】
# df2にdf3を左結合し、df2に格納



# 【60】
# df2にdf3を右結合し、df2に格納



