# Soundes   アプリケーション概要
- iTunes APIを用いてユーザー（recommender）が管理人（admin）にメッセージとともにオススメの曲を紹介できるアプリケーションです。

# URL
*  https://soundes.herokuapp.com/
<br>ID:mizomizo
<br>PASS:3925

# テスト用アカウント
## ユーザー（recommender）
*  メールアドレス：sample1@sample
*  パスワード：sample1
## 管理人（admin）　※未実装
*  メールアドレス：tsukimidori@sample
*  パスワード：tsukimidori


# 目指した課題解決
*  今までの人生で音楽をほとんど聴いておらず、フェスやライブにも行ったことのない、まさに「No Music My Life」な管理人（tsukimidori）に、ユーザーがメッセージと共にオススメの一曲を紹介することで音楽の良さを伝えられ、かつ、管理人が気に入ればiTunes Storeでその曲を購入できるようにしました。

# 要件定義
*  必須機能：ユーザー管理機能、案件投稿機能、メッセージ機能、音楽検索機能（iTunes API）
*  あれば尚良い機能：評価・ランキング機能

# 利用方法
## （操作方法）
*  ユーザー：ユーザー登録・ログイン→「♪」から投稿ページへ→曲名又はアーティスト名から楽曲検索しタイトルとメッセージを添えて投稿。
*  管理側：ユーザーとしてログイン→管理人にログイン→「」からオススメ一覧画面へ→気になるタイトルのオススメをクリックで詳細画面へ。（未実装）

# 実装機能デモ
## 登録（ユーザー）