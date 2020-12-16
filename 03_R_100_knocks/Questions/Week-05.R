# Week-05
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

# 【41】
# dfからbodyの列を削除し、最初の5行を表示



# 【42】
# dfからインデックス名「3」の行を削除し、最初の5行を表示



# 【43】
# df2の列名を'name', 'class', 'Biology', 'Physics', 'Chemistry'に変更
# df2の最初の5行を表示



# 【44】
# df2の列名を'English'をBiology'に変更
# df2の最初の5行を表示



# 【45】
# df2のインデックス名「1」を「10」に変更
# df2の最初の5行を表示



# 【46】
# dfのすべての列の欠損値数を確認



# 【47】
# dfのage列の欠損値に30を代入
# その後、ageの欠損値数を確認



# 【48】
# dfでひとつでも欠損値がある行を削除
# その後、dfの欠損値数を確認



# 【49】
# dfのsurvivedの列をndarray形式(配列)で表示



# 【50】
# dfの行をシャッフルして表示



