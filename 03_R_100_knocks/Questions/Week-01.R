# Week-01
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

# 【1】
# dfに読み込んだデータの最初の5行を表示



# 【2】
# dfに読み込んだデータの最後の5行を表示



# 【3】
# dfのDataFrameサイズを確認



# 【4】
# inputフォルダ内のdata1.csvファイルを
# 読み込みdf2に格納して、最初の5行を表示



# 【5】
# dfのfareの列で昇順に並び替えて表示



# 【6】
# df_copyにdfをコピーして、最初の5行を表示



# 【7】
# ① dfの各列のデータ型を確認
# ② dfのcabinの列のデータ型を確認



# 【8】
# ① dfのpclassの列のデータ型をdtypeで確認
# ② 数値型から文字型に変換し、データ型をdtypeで確認



# 【9】
# dfのレコード数(行数)を確認



# 【10】
# dfのレコード数(行数)、各列のデータ型、欠損値の有無を確認



