# Semigroup

從 [Magma](./Magma.md) 基礎上滿足結合律(associativity)的特性，我們稱為 Semigroup。
假設我們有 $(S,\ \circ)$，對於所有 $S$ 中的 $a,\ b,\ c$ ，滿足以下等式

$$
(a\ \circ \ b)\ \circ\ c = a\ \circ \ (b\ \circ\ c)
$$

### 加法

正整數加法結合律  $(\mathbb{N} ,\ +)$

$$
(1 + 2) +3 = 1 + (2 + 3)
$$

### 乘法

正整數加法結合律  $(\mathbb{N} ,\ \times)$

$$
(1 \times 2) \times 3 = 1 \times (2 \times 3)
$$

### 字串串接

$(S,\ ++)$

$$
(a ++\ b)\ ++ \ c = a ++\ (b\ ++\ c)
$$

### 函數組合也擁有結合律特性

$(A,\ \circ)$

$$
(h\ \circ \ g)\ \circ\ f = h\ \circ \ (g\ \circ\ f)
$$

#### 參考連結

- [Semigroup wiki](https://en.wikipedia.org/wiki/Semigroup)
- [nLab Semigroup](https://ncatlab.org/nlab/show/semigroup)
