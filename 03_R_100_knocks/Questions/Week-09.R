# Week-09
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# ラベリング (80 - 81)

# 【80】
# dfのsex列をラベルエンコーディングし、
# dfの先頭5行を表示
# (from sklearn.preprocessing import LabelEncoderをインポート)



# 【81】
# dfのsex列をOne-hotエンコーディングし、
# dfの先頭5行を表示



# プロット (82 - 89)

# 【82】
# dfのすべての数値列のヒストグラムを表示



# 【83】
# dfのage列をヒストグラムで表示



# 【84】
# df2のname列の要素ごとの3科目合計得点を棒グラフで表示



# 【85】
# df2のname列の要素ごとの3科目を棒グラフで
# 並べて表示



# 【86】
# df2のname列の要素ごとの3科目を積み上げ棒グラフで表示



# 【87】
# dfの各列間の散布図を表示
# (from pandas.plotting import scatter_matrixをインポート)



# 【88】
# dfのage列とfare列で散布図を作成



# 【89】
# 【88】で描画したグラフに「age-fare scatter」という
# グラフタイトルをつける


