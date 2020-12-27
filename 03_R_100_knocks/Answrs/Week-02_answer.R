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

print(df$sex)
print(df$cabin)

# 列に含まれる要素の確認にはunique()を使用
# https://a-habakiri.hateblo.jp/entry/2016/11/28/220443
print(unique(df$sex))
print(unique(df$cabin))

# 【12】
# dfの列名一覧をlist形式で表示

list(colnames(df))

# 【13】
# dfのインデックス一覧をndaaray形式で表示

# https://www.it-swarm-ja.tech/ja/r/r%E3%81%A7%E8%A1%8C%E3%82%A4%E3%83%B3%E3%83%87%E3%83%83%E3%82%AF%E3%82%B9%E7%95%AA%E5%8F%B7%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B%E3%81%AB%E3%81%AF%E3%81%A9%E3%81%86%E3%81%99%E3%82%8C%E3%81%B0%E3%82%88%E3%81%84%E3%81%A7%E3%81%99%E3%81%8B%EF%BC%9F/968008027/
idx <- as.numeric(rownames(df))
print(idx)
# Python では index は 0 から始まるが、Rでは index は 1 から始まる

# データ抽出 (14 - 32)

# 【14】
# dfのnameの列のみ表示

df$name

# 【15】
# dfのnameとsexの列のみ表示

# Python の Pandas のように、df[['name','sex']] で列名で複数の行を抽出するのはできないらしい
# カラム番号が続いているので
# https://qiita.com/gigatune/items/f3aa0afef7f50ab791cd
df[, 3:4]

# 【16】
# dfのindex(行)の4行目までを表示

# https://ultrabem-branch3.com/informatics/r/dataframe_extract#row
df[1:4,]

# 【17】
# dfのindex(行)の4行目から10行目までを表示

df[4:10,]

# 【18】
# locを使ってdf全体を表示 --> 全体を表示

df

# 【19】
# locを使ってdfのfare列をすべて表示

df["fare"]

# 【20】
# locを使ってdfのfare列の10行目まで表示

df["fare"][1:10,]


