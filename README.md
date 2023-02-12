# flutter_shopping_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# flutter_shopping_app

商品一覧画面から商品が見れて 右下のFABを押すと商品の出品ができる
カート画面ではカートの一覧が取得できて、注文をすることができる 削除と編集も
user画面から自分の情報が見れる

// TODO(me): asyncValueでやる意味があるのか検証する
// KDのように画面は出したまま、エラーはsnackbarで出すような処理には向いてない気がする
// AsycValueは、エラーやローディングの際に画面を完全に切り替える用度に向いている
// fetchの際には、AsyncValueでいいかもね、編集だったりするときは、AsyncValueじゃないほうがいいかも
// このアプリではasyncValueゴリゴリでいいけど、PETはfutureProviderさえも使わないほうがいいかも
// アプリの用件によって、asyncValueを使うかどうかを決める必要がある

productはasyncValueを使うがwhenは使わないパターン
cartはasyncValueを使わないパターン+retrofit
userはasyncValueを使ってwhenで分岐させるバターン