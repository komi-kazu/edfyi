# Edfyi

### 教育に関する情報を記録し、共有することができるアプリケーション

[![Image from Gyazo](https://i.gyazo.com/38295b4374b9a5674b4b12b118e8ea9c.gif)](https://gyazo.com/38295b4374b9a5674b4b12b118e8ea9c)

## 概要
**現在の学校教育にはいくつかの課題があります**  

一つ目は、教師の人材教育が不十分であることです。
初任者研修では形式的なことしか行わないため、新人教員は実際の学校現場で手探りしながら仕事を覚えていかなくてはなりません。また、臨時的任用の教師には初任者研修すら行わない地域もあります。

二つ目は、価値観が固定されやすいことです。
教師は一つの学校に数年いることが多いので、良くも悪くもその学校の体制に染まりがちです。その結果、異動した際に他の学校の体制に馴染むことができない教師が生まれます。それは、子供たちへの教育にも影響を与えます。

三つ目は、学校現場で起きていることが世の中に可視化されにくいことです。
多くの学校は学校現場で行われている活動についてあまり発信していなようなので教育関係者以外は知る術がありません。より良い教育には、学校外部の力も必要なはずです。

これらの課題を解決する手段としてEdfyiを作りました。

## App URL

https://edfyi.herokuapp.com/

## DEMO

### 記事詳細ページ
[![Image from Gyazo](https://i.gyazo.com/286b2473c9024c3696e14141ebcba097.gif)](https://gyazo.com/286b2473c9024c3696e14141ebcba097)

### タグ検索機能
[![Image from Gyazo](https://i.gyazo.com/a4378066c25f83734e37e98528bfccdf.gif)](https://gyazo.com/a4378066c25f83734e37e98528bfccdf)

### よくできました(いいね)機能
[![Image from Gyazo](https://i.gyazo.com/217fefa7fa9c4f141a8f65158cde10f1.gif)](https://gyazo.com/217fefa7fa9c4f141a8f65158cde10f1)

## 使用言語・技術
* VScode
* Ruby
* Rails(使用Gem:devise,refile,acts-as-taggable-on,rspec,factory_bot,faker)
* mysql2
* JavaScript
* heroku

## DB設計
* usersテーブル  

| Column      | Type     | Options     |
|-------------|----------|-------------|
| email       | string   | null: false |
| password    | string   | null: false |
| nickname    | string   | null: false |
| position    | integer  |             |
| profile     | text     |             |

* articlesテーブル

| Column      | Type     | Options     |
|-------------|----------|-------------|
| title       | string   | null: false |
| article1    | text     | null: false |
| image1      | text     |             |
| article2    | text     |             |
| image2      | text     |             |
|・<br>・<br>・|・<br>・<br>・|・<br>・<br>・|
| image10      | text     |             |
| article11    | text     |             |
| user        | references|null: false, foreign_key: true|

* article_commentsテーブル

| Column      | Type     | Options     |
|-------------|----------|-------------|
| user        | references|null: false, foreign_key: true|
| article     | references|null: false, foreign_key: true|
| text        | text     |null: false |

* likesテーブル

| Column      | Type     | Options     |
|-------------|----------|-------------|
| user        | references|null: false, foreign_key: true|
| article     | references|null: false, foreign_key: true|