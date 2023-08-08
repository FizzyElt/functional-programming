# 直覺範疇論

說直覺是因為這不是完善的定義，但是作為入門或是簡要使用的定義「夠好」。我們說 $\mathcal{C}$ 是一個範疇的意思是：

1. 有 $Ob(\mathcal{C})$ 此集合(collection)，表示範疇中的物件。作為方便的記號，當 $a$ 為 $\mathcal{C}$ 中一物件，我們記成 $a \in Ob(\mathcal{C})$
2. 當有 $a, b \in Ob(\mathcal{C})$，而 $f$ 為一 $a$ 到 $b$ 之態射(morphism) ，記為 $f \in \mathcal{C}(a, b)$ 或是 $f : a \to b$。態射可以組合，也就是說當有 $f : a \to b$ 且 $g : b \to c$，就一定有 $f \circ g$ 此態射存在。與上面相同， $\mathcal{C}(a, b)$ 是一個 collection。

要是 $\mathcal{C}(a, b)$ 剛好是集合，就說這是 locally small category，要是連 $Ob(\mathcal{C})$ 也只是集合，那就說這是 small category。

但在最開始的時候，只要簡單的相信範疇給定的定義即可。
