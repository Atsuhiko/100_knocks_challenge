# Week-08
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# 統計 (66 - 79)

# 【71】
# df2においてclassでグルーピングし、クラスごとの科目の
# 最大値、最小値、平均値を求める(name列は削除しておく)



# 【72】
# dfの基本統計量を確認(describe)



# 【73】
# dfの各列間の(Pearson)相関係数を確認



# 【74】
# scikit-learnを用いてdf2のEnglish、Mathmatics、History列を標準化する



# 【75】
# scikit-learnを用いてdf2のEnglish列を標準化する
# (from sklearn.preprocessing import StandardScalerをインポート)



# 【76】
# scikit-learnを用いてdf2のEnglish、Mathmatics、History列を
# Min-Maxスケーリングする
# (from sklearn.preprocessing import StandardScalerをインポート)



# 【77】
# dfのfare列の最大値、最小値の行名を取得



# 【78】
# dfのfare列の0、25、50、75、100パーセンタイルを取得



# 【79】
# ①dfのage列の最頻値を取得
# ②value_counts()にてage列の要素数を
# 確認し、①の結果の妥当性を確認


