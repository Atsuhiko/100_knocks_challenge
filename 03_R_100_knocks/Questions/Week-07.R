# Week-07
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# マージと連結(59 - 65)¶

# 【61】
# df2にdf3を内部結合し、df2に格納



# 【62】
# df2にdf3を外部結合し、df2に格納



# 【63】
# df2とdf4を列方向に連結し、df2に格納



# 【64】
# df2とdf4を列方向に連結後、重複している
# name列の片方を削除し、df2に格納



# 【65】
# df2とdf2を行方向に連結し、df2に格納



# 統計 (66 - 79)

# 【66】
# dfのage列の平均値を確認



# 【67】
# dfのage列の中央値を確認



# 【68】
# ①df2の生徒ごとの合計点（行方向の合計）
# ②df2の科目ごとの点数の総和（列方向の合計）



# 【69】
# df2のEnglishで得点の最大値



# 【70】
# df2のEnglishで得点の最小値



