<!-- -*- coding: utf-8-unix; mode: markdown; -*- -->
# ユーザーへの情報

本インストラクションの目的は

- ファイル間の正規化を行う.
  ひとつのファイル `TEMPLATE` に合わせ `REFACTORED` を調整する

# 用語の定義

- まず、@TERM.md で共通の用語を確認する

- `TEMPLATE`:
  本インストラクションでリファクタリングの基準となるファイル

- `REFACTOREDS`:
  本インストラクションでリファクタリングするファイル名のリスト

- `REFACTORED`:
  `REFACTOREDS` の要素で
  本インストラクションでリファクタリングするファイル名

# 大まかな作業

1. 本インストラクションは `(REFACTOR TEMPLATE REFACTORED ...)` の形式で
   呼び出される. `REFACTORED ...` の中にはワイルドカード表現が含まれる
   こともあり、それらを展開してリスト `REFACTOREDS` にする
2. `TEMPLATE` の指定がなければ
   「REFACTOR.md: TEMPLATE を指定してください」と表示して終了
3. `REFACTOREDS` の指定がなければ
   「REFACTOR.md: REFACTOREDS を指定してください」と表示して終了
4. `TEMPLATE` は既存の読み込み可能ファイルの
   ファイル名である. 存在しないファイルのファイル名、または
   読み込み不可能なファイルのファイル名を指定したときは、
   それを指摘し終了
5. `REFACTORED` は既存の書き込み可能ファイルの
   ファイル名である. 存在しないファイルのファイル名、または
   書き込み不可能なファイルのファイル名を指定したときは、
   それを指摘し終了
6. `TEMPLATE` と `REFACTORED` は CSS ファイルでなければならない.
   CSS ファイルでないときは、それを指摘し終了
7. `TEMPLATE` に shorthand プロパティの宣言があるときは
   それを指摘し終了
8. `TEMPLATE` と `REFACTOREDS` を表示
9. `TEMPLATE` の内容をテンプレートとして
   `REFACTOREDS` の各要素 `REFACTORED` で、以下の作業をループする
   1. `REFACTORED` のファイルの内容を以下の詳細に基づきリファクタリングし
      `REFACTORED` と同じフォルダ内の TEST.css に書き込む.
      同名のファイルがあるときは上書きせよ.
      ユーザーは この TEST.css を試し、以降でリファクタリングを
      反映したものを採用するか（書き換えるか）判断する
   2. リファクタリング箇所があるときは、前後の diff を表示
   3. リファクタリング箇所がないときは、その旨を表示し次の要素へ continue
   4. 書き換えるか確認する
      - 書き換え確認で b なら、ループを break する
      - 書き換え確認で c なら、ループを continue する
      - 書き換え確認で y ならファイルの書き換えをして次の要素へ continue

# リファクタリングの詳細

- `REFACTORED` のコメントはそのまま残す
- shorthand なプロパティを使用せず、shorthand でないプロパティで宣言せよ.
  例えば、background なら アルファベット順に
  background-attachment background-clip
  background-color background-image
  background-origin background-position-x background-position-y
  background-repeat background-size に分割せよ.
  shorthand で指定されなかったプロパティの値はデフォルト値で補完せよ
- `REFACTORED` のセレクタリストと宣言ブロックの順は
  `TEMPLATE` のセレクタリストと宣言ブロックの順に合わせる
- `TEMPLATE` のセレクタリストが `REFACTORED` になければ、
  `TEMPLATE` のセレクタと宣言ブロックを `REFACTORED` に追加せよ.
  宣言ブロックの中身であるプロパティと値は `TEMPLATE` を そのままコピーせよ
- `TEMPLATE` と同じセレクタリストの宣言ブロックにないプロパティを
  `REFACTORED` で宣言しているときは その宣言をコメントアウトせよ

<!-- Local Variables: -->
<!-- indent-tabs-mode: nil -->
<!-- End: -->
