# 直覺範疇論

說直覺是因為這不是完善的定義，但是作為入門或是簡要使用的定義「夠好」。我們說 $\mathcal{C}$ 是一個範疇的意思是：

1. 有 $Ob(\mathcal{C})$ 此集合(collection)，表示範疇中的物件。作為方便的記號，當 $a$ 為 $\mathcal{C}$ 中一物件，我們記成 $a \in Ob(\mathcal{C})$
2. 當有 $a, b \in Ob(\mathcal{C})$，而 $f$ 為一 $a$ 到 $b$ 之態射(morphism) ，記為 $f \in \mathcal{C}(a, b)$ 或是 $f : a \to b$。態射可以組合，也就是說當有 $f : a \to b$ 且 $g : b \to c$，就一定有 $f \circ g$ 此態射存在。與上面相同， $\mathcal{C}(a, b)$ 是一個 collection。
3. $id_a\ id_b$ 對 $f:a\to b$ 滿足 $f\circ id_a = f$ 跟 $id_b\circ f = f$
4. $(f\circ g)\circ h=f\circ (g\circ h)$

要是 $\mathcal{C}(a, b)$ 剛好是集合，就說這是 locally small category，要是連 $Ob(\mathcal{C})$ 也只是集合，那就說這是 small category。

但在最開始的時候，只要簡單的相信範疇給定的定義即可。

我們用本性類表示 **collection**，良性類則是 **set**。

## 名詞補充

[本性類與良性類的差別](https://zh.wikipedia.org/zh-hant/%E9%9B%86%E5%90%88_(%E6%95%B0%E5%AD%A6))
> 類區分為兩種：一種是可以順利進行類運算的「良性類」，我們把這種「良性類」稱為集合；另一種是要限制運算的「本性類」，對於本性類，類運算並不是都能進行的
