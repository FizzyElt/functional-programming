# Magma

代數結構的一種，由一個集合與運算子組成 $(M,\ \bullet)$
定義為「對於在集合 $M$ 裡所有 $a,\ b$， $a\ \bullet \ b$ 的結果也是集合 $M$ 裡的元素」

$$
a,\ b \in M \Longrightarrow a\ \bullet\ b \in M
$$

## 加法

我們可以定義一個正整數加法 $(\mathbb{N},\ +)$

$$
a,\ b \in \mathbb{N} \Longrightarrow a\ +\ b \in \mathbb{N}
$$

## 乘法

正整數乘法 $(\mathbb{N},\ \times)$

$$
a,\ b \in \mathbb{N} \Longrightarrow a\ \times\ b \in \mathbb{N}
$$

## 字串的連接

定義字串連結組合 $(S,\ ++)$

$$
s_1,\ s_2 \in S \Longrightarrow s_1 ++\ s_2 \in S
$$

## 函式組合也可以是一個 Magma

假如我們有個函式集合 $A$  ，以及函式組合運算子 $\circ$ ，並且滿足

$$
f,\ g \in A \Longrightarrow f\ \circ\  g \in A
$$

即 $(A,\ \circ)$ 的組合為 Magma

### 參考連結

- [Magma wiki](https://en.wikipedia.org/wiki/Magma_(algebra))
- [nLab Magma](https://ncatlab.org/nlab/show/magma)
