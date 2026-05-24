# tex_devcontainer_template

LuaLaTeX 用の日本語 TeX テンプレートです。VS Code Dev Containers で開くと、TeX Live と LaTeX Workshop が入った環境でそのままビルドできます。

## 使い方

1. VS Code でこのディレクトリを開く
2. `Dev Containers: Reopen in Container` を実行
3. `template.tex` を開き、LaTeX Workshop のビルドを実行

CLI では以下でもビルドできます。

```sh
make build
```

リポジトリ内に複数のプロジェクトディレクトリを置く場合も、同じ devcontainer 環境でビルドできます。

```text
.
├── .devcontainer/
├── Makefile
├── projects/
│   ├── report/
│   │   └── main.tex
│   └── slides/
│       └── main.tex
└── template.tex
```

プロジェクト内の `.tex` ファイルが1つだけなら、`PROJECT` を指定します。

```sh
make build PROJECT=projects/report
```

生成物は `projects/report/out/` に出力されます。

プロジェクト内に複数の `.tex` ファイルがある場合は、対象も指定します。

```sh
make build PROJECT=projects/report MAIN=your-file.tex
```

ルート直下の `.tex` をビルドする場合の生成物は `out/` に出力されます。
