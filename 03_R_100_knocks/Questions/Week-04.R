# Week-04
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# データ抽出 (14 - 32)

# 【31】
# dfの各列の要素数の確認



# 【32】
# dfのembarked列の要素と出現回数の確認



# データ加工 (33 - 58)

# 【33】
# dfのindex名が「3」のage列を
# 30から40に変更し、先頭の5行を表示



# 【34】
# dfのsex列にてmale→0、femlae→1に
# 変更し、先頭の5行を表示



# 【35】
# dfのfare列に100を足して、
# 先頭の5行を表示



# 【36】
# dfのfare列を2を掛けて、
# 先頭の5行を表示



# 【37】
# dfのfare列を小数点以下で丸める



# 【38】
# dfに列名「test」で値がすべて1の
# カラムを追加し、先頭の5行を表示



# 【39】
# dfにcabinとembarkedの列を「_」で
# 結合した列を追加(列名は「test」)し、
# 先頭の5行を表示



# 【40】
# dfにageとembarkedの列を「_」で
# 結合した列を追加(列名は「test」)し、
# 先頭の5行を表示



