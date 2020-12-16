# Week-02
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# 基礎 (1 - 13)

# 【11】
# dfのsex,cabinの列の要素を確認



# 【12】
# dfの列名一覧をlist形式で表示



# 【13】
# dfのインデックス一覧をndaaray形式で表示



# データ抽出 (14 - 32)

# 【14】
# dfのnameの列のみ表示



# 【15】
# dfのnameとsexの列のみ表示



# 【16】
# dfのindex(行)の4行目までを表示



# 【17】
# dfのindex(行)の4行目から10行目までを表示



# 【18】
# locを使ってdf全体を表示



# 【19】
# locを使ってdfのfare列をすべて表示



# 【20】
# locを使ってdfのfare列の10行目まで表示



