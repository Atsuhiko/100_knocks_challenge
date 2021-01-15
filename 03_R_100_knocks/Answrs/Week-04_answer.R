# Week-04
#getwd() #ディレクトリ確認getwd() #ディレクトリ確認
#setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
#getwd() #ディレクトリ確認

# DataFrameの準備
# 今回から相対パスでデータを読み込む
df <- read.csv("./data/titanic3.csv", header=T)
df2 <- read.csv("./data/data1.csv", header=T)
df3 <- read.csv("./data/data1_2.csv", header=T)
df4 <- read.csv("./data/data1_3.csv", header=T)
df5 <- read.csv("./data/data2.csv", header=T, fileEncoding = "CP932")

head(df)
dim(df)

# データ抽出 (14 - 32)

# 【31】
# dfの各列の要素数の確認

# 力業
colnames(df)

# これは欠損値も１種類のデータとカウントする
for (i in 1:14){
  print(paste(colnames(df)[i], ": ", nrow(unique(df[i]))))
}
# Python の df.nunique() の様に一度で行う方法を誰か知りませか？


# 【32】
# dfのembarked列の要素と出現回数の確認

# またまた力業
unique(df[11])
print(paste("S: ", length(df[11][df[11]=="S"])))
print(paste("C: ", length(df[11][df[11]=="C"])))
print(paste("Q: ", length(df[11][df[11]=="Q"])))
print(paste("NaN: ", length(df[11][df[11]==""])))
# Python の df['embarked'].value_counts() の様に一度で行う方法を誰か知りませか？


# データ加工 (33 - 58)

# 【33】
# dfのindex名が「3」のage列を --> Rではindexが１から始まるので index名が「4」となる
# 30から40に変更し、先頭の5行を表示

# index「4」の行
df[4,]
# http://fujinitaka.hatenablog.com/entry/2018/07/08/022044
df[4,]["age"] <- lapply(df[4,]["age"], gsub, pattern="30", replacement = "40")
head(df)

# もっとシンプルにこれでよいのか。
df <- read.csv("./data/titanic3.csv", header=T)
df[4,]["age"] <- "40"
head(df)


# 【34】
# dfのsex列にてmale→0、femlae→1に
# 変更し、先頭の5行を表示

# http://fujinitaka.hatenablog.com/entry/2018/07/08/022044
df["sex"] <- lapply(df["sex"], gsub, pattern="female", replacement = "1") # maleを先にすると"female"の一部も置換してしまう
df["sex"] <- lapply(df["sex"], gsub, pattern="male", replacement = "0")
head(df)

library(dplyr)
library(stringr)
df <- read.csv("./data/titanic3.csv", header=T)
df <- dplyr::mutate(df,sex=gsub(sex,pattern="female",replacement = "1", ignore.case = TRUE))
df <- dplyr::mutate(df,sex=gsub(sex,pattern="male",replacement = "0", ignore.case = TRUE))
head(df)


# 【35】
# dfのfare列に100を足して、
# 先頭の5行を表示

df["fare"] <- df["fare"] + 100
head(df)


# 【36】
# dfのfare列を2を掛けて、
# 先頭の5行を表示

df["fare"] <- df["fare"] * 2
head(df)


# 【37】
# dfのfare列を小数点以下で丸める

df['fare'] = lapply(df['fare'], round)
head(df)


# 【38】
# dfに列名「test」で値がすべて1の
# カラムを追加し、先頭の5行を表示

df['test'] = 1
head(df)


# 【39】
# dfにcabinとembarkedの列を「_」で
# 結合した列を追加(列名は「test」)し、
# 先頭の5行を表示

# 力業
rn = dim(df)[1]
rn
paste(df['cabin'][3,], '_', df['embarked'][3,])

for (i in 1:rn){
  df["test"][i,] <- paste(df['cabin'][i,], '_', df['embarked'][i,])
}
head(df)
# だいぶＲのデータフレームを扱えるようになってきました！


# 【40】
# dfにageとembarkedの列を「_」で
# 結合した列を追加(列名は「test」)し、
# 先頭の5行を表示

for (i in 1:rn){
  df["test"][i,] <- paste(df['age'][i,], '_', df['embarked'][i,])
}
head(df)

