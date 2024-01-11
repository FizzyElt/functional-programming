# Functional Programming 知識大補帖

這是一個關於 Functional Programming 名詞解釋及知識點整理的地方，會包含一些情境及範例解說，目的在於消除學習 FP 過程中因不懂緣由所產生的困惑。

## Roadmap

1. lambda calculus
2. 用 recursion 解釋可計算性
3. 加上 simply type
4. 解釋型別規則
5. 建立 STLC categorical semantic
6. 加上 polymorphism
7. 解釋型別規則
8. 建立 \(E \to B\) categorical semantic
9. 解釋 \(\lambda 2\) 的 polymorphic property
10. 解釋 recursive type
11. 連結 F-algebra
12. 變成 dependent type
13. 解釋型別規則
14. 解釋模型（The natural model）
    - topos
    - topos fundamental theorem
    - presheaf
    - representable natural transformation
15. 進入真正的應用
16. side effect
17. concurrency
18. 安全性
    - 記憶體安全與子結構類型
      - (?) proof nets
    - 整體安全性不是只關乎記憶體
19. domain language

### ⚠️ 部份完成小主題內容，整理後移除

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
