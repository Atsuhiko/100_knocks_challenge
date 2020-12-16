# Week-10
getwd() #ディレクトリ確認getwd() #ディレクトリ確認
setwd("C:/Users/iiats/OneDrive/デスクトップ/１００本ノックチャレンジ/03_R_100_knocks/Questions/data") 
getwd() #ディレクトリ確認

# DataFrameの準備
df <- read.csv("titanic3.csv", header=T)
df2 <- read.csv("data1.csv", header=T)
df3 <- read.csv("data1_2.csv", header=T)
df4 <- read.csv("data1_3.csv", header=T)
df5 <- read.csv("data2.csv", header=T, fileEncoding = "CP932")

# タイタニック号の生存者予測 (90 - 100)
# これまで触れてきたタイタニック号の乗客データを使用して、
# 乗客の生存有無を予測してみます。

# ※90～100については順番通りにやらないと上手く動作しません

# 【90】ラベルエンコーディング
# df_copyのsexとembarked列をラベルエンコーディング
# (from sklearn.preprocessing import LabelEncoderをインポート)
# (df_copyはdfをコピーしたもの)



# 【91】欠損値確認
# df_copyの欠損値を確認



# 【92】欠損値補完
# df_copyのage、fare列の欠損値を各列の平均値で補完



# 【93】不要列の削除
# df_copyの中で機械学習で使用しない不要な行を削除
# (name, ticket, cabin, boat, body, home.destを削除)



# 【94】ndarray形式への変換
# ①df_copyのpclass、age、sex、fare、embarkedの列を抽出し、ndarray形式に変換
# ②df_copyのsurvivedの列を抽出し、ndarray形式に変換
# (①をfeatures、②をtargetという変数にそれぞれ格納)



# 【95】学習データとテストデータに分割
# 【94】で作成したfeatrues、targetを学習データとテストデータに分割
# (from sklearn.model_selection import  train_test_splitをインポート)
# ※分割時のパラメータは次を指定 test_size=0.3 random_state=0



# 【96】学習の実行
# 学習データ(features、target)を用いランダムフォレストにて学習を実行
# (from sklearn.ensemble import RandomForestClassifierをインポート)
# ※パラメータは次を指定 n_estimators=100 random_state=0



# 【97】予測の実行
# test_Xデータの乗客の生存を予測



# 【98】予測精度の確認
# 予測結果がtest_y(生存有無の答え)とどれぐらい
# 整合していたかを確認(評価指標はaccuracy)
# (from sklearn.metrics import accuracy_scoreをインポート)



# 【99】重要度の確認
# 学習における各列(特徴量)の
# 重要度を表示



# 【100】予測結果のcsv出力
# test_Xの予測結果をcsvでoutputフォルダに出力(ファイル名は「submission.csv」)
# (headerは不要)


