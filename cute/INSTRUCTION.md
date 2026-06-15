<!-- -*- coding: utf-8-unix; mode: markdown; -*- -->

# 大まかな指示

- CSS ファイルを作成せよ
  - ファイルを作成する前に下記の `制約` と `方針` に合致するか検証せよ
    - 下記に `制約` がないときは `制約` がないので検証不要
    - 下記に `方針` がないときは `方針` がないので検証不要
- 対話モードなら
  - 不明な点は質問せよ
  - `提案` について決定し、それを述べて、ユーザーに確認した後 作業をせよ
    - ユーザーのプロンプトで `方針` の言及がない、
      あるいは `別の方針で` と言及があったときは、
      下記の `方針` を大前提にして自由な `提案` を模索せよ
    - ユーザーのプロンプトで `方針` の言及があったときは、それに沿った
      `方針` でブラッシュアップせよ

# 方針

- 配色やデザインは「女の子が可愛いと思う」こと

# 制約

- 出力ファイルのパスは `この文書と同じフォルダ`/`ファイル名`
  - `ファイル名`は、この `文書と同じフォルダ` 直下の
    NUMBERING スクリプトを引数なしで実行した その出力とする. 
    同名のファイルがあるときは上書きせよ

- テンプレート

```
.control, .turn {
    border-radius: 8px;
}

.control {
}

.turn {
}

.prompt, .response {
    border-radius: 15px;
    border-left-width: 6px;
}

.prompt {
    color: #4a4a4a;
    background-image: repeating-linear-gradient(135deg, #ffccd5 0px, #fff9c4 100px, #c8e6c9 200px, #fff9c4 300px, #ffccd5 400px);
    border-left-style: solid;
    border-left-color: #ff8fa3;
}

.response {
    color: #4a4a4a;
    background-image: repeating-linear-gradient(135deg, #bbdefb 0px, #e1bee7 100px, #ffccd5 200px, #e1bee7 300px, #bbdefb 400px);
    border-left-style: solid;
    border-left-color: #a5caff;
}
```

- `.control, .turn {〜}` と `.control {〜}` と `.turn { 〜 }` と
  `.prompt,.response {〜}` は 変えないこと
- `.prompt {〜}` と `.response {〜}` はプロパティを変更せず値のみを変える.
  - background-image は background-color に変えても良い
  - background-color は background-image に変えても良い
  - background-color か background-image どちらか
