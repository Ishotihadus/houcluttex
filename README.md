# houcluttex: 放課後クライマックス ClutTeX ガールズ

コンフィグファイルやマジックコメントからのコンフィグを利用して [ClutTeX](https://github.com/minoki/cluttex/) を実行するツールです。

## インストール

    $ gem install houcluttex

## 使い方

    $ houcluttex [OPTIONS] [--] INPUT.tex

### コンフィグ

コンフィグは、次の 3 通りで指定できます。下のオプションが優先されます。

- コンフィグファイル（`houcluttex.yml`）
- マジックコメント
- コマンドラインオプション

#### コンフィグファイル

yaml 形式で指定します。`houcluttex.yml` をデフォルトとしますが、`houcluttex.yaml`、`houcluttexrc`、`.houcluttexrc` なども可能です。コマンドラインオプション `--config` でファイル名を明示することもできます。

yaml ファイルは Key-value の形式で ClutTeX のオプションを指定します。

```houcluttex.yml
engine: uplatex
bibtex: upbibtex
shell-escape: true
synctex: 1
file-line-error: true
halt-on-error: false
```

#### マジックコメント

[atom-latex](https://github.com/thomasjo/atom-latex/wiki/Overridding-Build-Settings) のようなマジックコメントを使うことができます。

対応しているのは次のオプションです。

- `root`
- `engine` / `program`
- `synctex`
- `jobname`
- `makeindex`
- `bibtex`
- `format` / `outputFormat`
- `outputDirectory`
- `enableSynctex`
- `enableShellEscape`

`root` オプションは、入力ファイル（`input` オプションの値）を再帰的に `root` オプションで指定されたファイルに書き換えます。

#### コマンドラインオプション

ClutTeX と同様のコマンドラインオプションと、`config` オプション、`cluttex-path` オプションが利用できます。

#### 特別なオプション

`input` オプションで指定したファイル名は、入力ファイルがコマンドラインで与えられなかった場合の入力ファイルとして利用します。このオプションは yaml でのみ利用可能です。

`cluttex-path` オプションは ClutTeX のパスを指定します。デフォルトは `cluttex` です。

## サンプル

sample ディレクトリにサンプルがあります。

magic ディレクトリでは `houcluttex test.tex`、yaml ディレクトリでは `houcluttex` を実行するとコンパイルできます。

## ライセンス

この gem は [MIT License](https://opensource.org/licenses/MIT) のもとで利用できます。
