# Functional Programming 知識大補帖

這是一個關於 Functional Programming 名詞解釋及知識點整理的地方，會包含一些情境及範例解說，目的在於消除學習 FP 過程中因不懂緣由所產生的困惑。

- [pure function](./trees/fp-000J.tree)
- immutable
- curry
- Lazy semantic
- [data first, data last](./trees/fp-0002.tree)
- [Magma](./trees/alg-0001.tree)
- [Semigroup](./trees/alg-0003.tree)
- [Monoid](./trees/alg-0005.tree)
- [Functor](./trees/cat-0003.tree)
- Applicative
- Monad

## Development

- [forester](https://www.jonmsterling.com/jms-005P.xml)
- https://en.wikipedia.org/wiki/MacTeX

Build command

```shell
make build
```

Locally watch server

```shell
./server.sh
```

## Contribution

建立新的 tree，prefix 根據你的內容的主題更換

目前現有的主題

- fp (functional programming)
- alg (algebra)
- cat (category)
- set

```bash
forester new prefix=fp
```

基本內容，如果是修改現有的 tree 就新增 author 上去

```text
\title{XXX}
\author{name}
```

如果你願意貢獻你的一些資訊可以在 `trees/person` 資料夾開一個 tree

trees/person/xxxx.tree

```text
\title{XXXXX}
\taxon{person}
\meta{position}{Front-End Developer}
\meta{external}{xxxxx.com}
```

將你的內容關聯到某個 tree 內

xx-XXXX.tree

```text
\transclude{xx-XXXX}
```

提及 xx-XXXX.tree

```text
[text](xx-XXXX)
```
