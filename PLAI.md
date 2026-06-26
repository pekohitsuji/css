<!-- -*- coding: utf-8-unix; mode: markdown; -*- -->
# インストラクション解釈用擬似言語

インストラクションやプロンプトの「LISP 方言 Scheme 風な表現」部分を
解釈するためのルールを記す

- 実装系は Gauche に準じる
- 動的評価が必要なとき
  1. `{ワークスペースのルート}/tmp/PLAI` フォルダがなければ作る
  2. `{ワークスペースのルート}/tmp/PLAI` フォルダ内の
     ファイルやフォルダを全て削除せよ
  3. `{ワークスペースのルート}/tmp/PLAI` フォルダ内に
     評価したいコードを任意のファイル（例: eval.scm）に書き出せ
  4. `/usr/bin/gosh tmp/PLAI/eval.scm` を実行せよ
  5. 標準出力を評価結果として扱い、後続の作業に適用せよ

<!-- Local Variables: -->
<!-- indent-tabs-mode: nil -->
<!-- End: -->
