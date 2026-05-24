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

生成物は `out/` に出力されます。
