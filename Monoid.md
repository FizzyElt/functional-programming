# Monoid

基於 [Semigroup](./Semigroup.md) 上，從集合中找出一個 identity element (這裡記作 $e$) 並且與其他元素滿足一下條件：

### Left identity

$$
e\ \circ\ a = a
$$

### Right identity

$$
a\ \circ\ e = a
$$

所以一個 Monoid $(S,\ \circ,\ e)$ 會有以下兩個等式規則

1. $(a\ \circ\ b)\ \circ\ c = a\ \circ\ (b\ \circ\ c)$
2. $e\ \circ\ a = a = a\ \circ\ e$

Monoid 恰好是只有一個物件的 [locally small category](./intuitive_category_theory.md)，identity morphism 對應 $e$，而組合兩個 morphism 正好得到另一個 morphism

### 加法

正整數加法中的 identity element 就是 $0$， $(\mathbb{N},\ +,\ 0)$

$$
0 + 1 = 1 = 1 + 0
$$

### 乘法

正整數乘法中的 identity element 就是 $1$， $(\mathbb{N},\ \times,\ 1)$

$$
1 \times 2 = 2 = 2 \times 1
$$

### 字串串接

在字串串接中的 identity element 是空字串`""`， $(S, ++, \text{""})$

$$
\text{""} ++\ \text{"str"} = \text{"str"} = \text{"str"}++\ \text{""}
$$

### 函數組合

函式組合中的 identity element 就是將輸入原封不動回傳， $(A,\ \circ,\ id)$

$$
id\ \circ\ f = f = f\ \circ\ id
$$

在 JS 寫成

```javascript
const id = (v) => v 
```

#### 參考連結

- [Monoid wiki](https://en.wikipedia.org/wiki/Monoid)
- [nLab Monoid](https://ncatlab.org/nlab/show/monoid)