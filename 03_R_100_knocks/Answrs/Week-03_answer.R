# Week-03
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Answers/data") 
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
head(df[,c("name", "ticket")])
# 解説： c(A,B) でベクトルを作って列を抽出
# https://htsuda.net/stats/dataset.html


# 【22】
# locを使ってdfのnameからcabinまでの列をすべて表示 --> Python限定
head(df[,3:10])


# 【23】
# ilocを使ってdfのage列を5行目まで表示
df[1:5,5]


# 【24】
# dfのname,age,sexの列のみ抽出しdf_copyに格納
# その後outputフォルダにcsvファイルで出力
df_copy <- df[c("name", "age", "sex")]
head(df_copy)

setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Answers/data") 
write.csv(df_copy, "df_copy.csv")
# ファイルが出来ているか確認
df_copy <- read.csv("df_copy.csv")
head(df_copy)
# write.csv() で出力するとインデックスの列ができます。（変更はできない）


# 【25】
# dfのage列の値が30以上のデータのみ抽出
df[df$age>=30,]
# https://a-habakiri.hateblo.jp/entry/2016/12/12/222806

# 欠損値が含まれる行を全て削除する方法
# しかしこれでは年齢以外の箇所に欠損値がある場合も削除されてしまう。--> 課題
na.omit(df[df$age>=30,])
# https://stats.biopapyrus.jp/r/basic/nan.html


# 【26】
# dfのsex列がfemaleのデータのみ抽出
df[df$sex=="female",]


# 【27】
# dfのsex列がfemaleでかつageが40以上のデータのみ抽出
df[df$sex=="female" & df$age>=40,]


# 【28】
# queryを用いてdfのsex列がfemaleでかつageが40以上のデータのみ抽出

# これはスキップ


# 【29】
# dfのname列に文字列「Mrs」が含まれるデータを表示

# https://qiita.com/naofumi-fujii/items/71f41182a23ded86388b
# リブラリー dplyr の grepl() を使う

# install.packages("dplyr") # 一度だけでよい。
library(dplyr)
df %>% filter(grepl("Mrs", name))


# 【30】
# dfの中で文字型の列のみを表示

# 一度にする方法が分からないので半分手動で行った。 --> 一度でやる方法を見つけました。（後述）
str(df)
df[c("name", "sex", "ticket", "cabin", "embarked", "boat", "home.dest")]

# 一発で処理する方法見つけました。
# https://www.trifields.jp/how-to-extract-specific-type-columns-from-data-frame-in-r-3058
Filter(is.factor, df)

# Jupyter notebook では上手くいったのに、RStudio ではなぜかデータフレームを出力しない。
