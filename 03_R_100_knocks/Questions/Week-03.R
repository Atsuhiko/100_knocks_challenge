# Week-03
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

# 【21】
# locを使ってdfのnameとticketの列をすべて表示



# 【22】
# locを使ってdfのnameからcabinまでの列をすべて表示



# 【23】
# ilocを使ってdfのage列を5行目まで表示



# 【24】
# dfのname,age,sexの列のみ抽出しdf_copyに格納
# その後outputフォルダにcsvファイルで出力



# 【25】
# dfのage列の値が30以上のデータのみ抽出



# 【26】
# dfのsex列がfemaleのデータのみ抽出



# 【27】
# dfのsex列がfemaleでかつageが40以上のデータのみ抽出



# 【28】
# queryを用いてdfのsex列がfemaleでかつageが40以上のデータのみ抽出



# 【29】
# dfのname列に文字列「Mrs」が含まれるデータを表示



# 【30】
# dfの中で文字型の列のみを表示



