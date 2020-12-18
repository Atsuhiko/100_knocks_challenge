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
head(df,5) # default だと最初の６行を表示


# 【2】
# dfに読み込んだデータの最後の5行を表示
tail(df,5) # 最後の５行を表示


# 【3】
# dfのDataFrameサイズを確認
dim(df)


# 【4】
# inputフォルダ内のdata1.csvファイルを
# 読み込みdf2に格納して、最初の5行を表示
df2 <- read.csv("data1.csv", header=T)
head(df2,5)


# 【5】
# dfのfareの列で昇順に並び替えて表示
# 参考： http://taustation.com/r-dataframe-sort/
df[order(df$fare),]

# 降順
df[order(df$fare, decreasing=T),]


# 【6】
# df_copyにdfをコピーして、最初の5行を表示
df_copy <- df
head(df,5)

df_copy <- df_copy[0:2]
head(df_copy,5)
head(df,5)
# 結論：Rでは deep copy（値渡しを行っている）¶
# https://dichika.hateblo.jp/entry/20151223/p1
# http://www.singularpoint.org/blog/r/r-call-by-value-or-reference/


# 【7】
# ① dfの各列のデータ型を確認
# ② dfのcabinの列のデータ型を確認
str(df)

str(df["cabin"])
str(df$cabin)
str(df[10]) # R の列のインデックスは１から始まる

# class() を使うとこうなる
class(df)
class(df["cabin"])
class(df$cabin)
class(df[10]) # R の列のインデックスは１から始まる


# 【8】
# ① dfのpclassの列のデータ型をdtypeで確認
# ② 数値型から文字型に変換し、データ型をdtypeで確認
class(df$pclass)

# http://cse.naro.affrc.go.jp/takezawa/r-tips/r/25.html
df$pclass <- as.character(df$pclass)
class(df$pclass)


# 【9】
# dfのレコード数(行数)を確認
nrow(df)

# 列数は
ncol(df)


# 【10】
# dfのレコード数(行数)、各列のデータ型、欠損値の有無を確認
str(df)

# str() には欠損値情報がはいっていないので
colSums(is.na(df))
