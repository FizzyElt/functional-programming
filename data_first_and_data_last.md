# data first and data last ?

data first 跟 data last 區別在於主要被操作的資料是擺在最前面或最後面，而 functional programming 習慣 data last 的方式設計函數，目的是提高函數的可組合性。

## 一般函數的設計

在一般情況下我們撰寫一個函數習慣將資料擺在最前面，其他參數擺後面。假設今天我們設計一個 Array `map` 函數：

```javascript
function map(data, callback){
    let res = [];

    for(const item of data){
        res.push(callback(item))
    }

    return res
}
```

我們可以利用 `map` 它再做出新的函數 `double`：

```javascript
function double(data){
    return map(data, (num) => num * 2)
}
```

但你慢慢就會發現你每利用 `map` 做一個新的函數出來，你都要重複做一次傳遞 `data` 的動作。

## data last

今天我們轉成 data last 形式來設計 `map`：

```javascript
function map(callback, data){
    let res = [];

    for(const item of data){
        res.push(callback(item))
    }

    return res
}
```

我們再嘗試做一個 `double`：

```javascript
function double(data){
    return map((num) => num * 2, data)
}
```

你會發現你還是要一直傳遞 `data` ，這到底有什麼差，但我們忘了一件事情是 FP 通常會將函數做**柯里化(curry)**。

## data last 搭配柯里化

我們將 `map` 函數做柯里化

```javascript
function map(callback){
    return function (data){
        let res = [];

        for(const item of data){
            res.push(callback(item))
        }

        return res
    }
}
```

現在做一個 double 函數只需要傳 callback 即可

```javascript
map((num) => num * 2)
```

## 利於函式組合

一般我們做函式組合通常是 $f$ 函數的輸出對應到 $g$ 函數的輸入。

$$
f = a \to b,\ g = b \to c
$$

但現實是並不是每個函數的輸入參數都只有一個，我們必須先給一些參數後才能再跟其他函數接在一起。

而一般情況下組合會是長這樣：

```javascript
function fn(data){
    return map(map(data, (num) => num * 2), (num) => num + 1)
}
```

你每組一個新的函數出來你都得做一次傳遞資料的動作。

### 利用 compose

在函數 **data last 搭配柯里化**的情況下用 `compose` 來組合函式會乾淨許多。

```javascript
const fn = compose(map((num) => num + 1), map((num) => num * 2))
```

## data first 較優雅的作法

如果不想像一開始那樣一直傳遞 data，但還是想走 data first 形式，有兩種

### chaining

一種是就是用我們一般 Array methods 的形式串接下去

```javascript
data.map((num) => num * 2).map((num) => num + 1)
```

可以從 [lodash](https://lodash.com/docs/#chain) 找到這種設計方式，但伴隨的缺點是跟其他函式庫沒辦法配合的這麼好。

### 略過參數的語法糖

在 Scala 中可以利用 `_` 來暫時略過參數：

```scala
List(1, 2, 3, 4).map(_ * 2)

```

```scala
def multiplier(a: Int, b: Int): Int = a * b

val fourTimes = multiplier(_: Int, 4)

fourTimes(2) // 8
```

我們在 `ramda` 中會看到一個叫做 [placeholder function](https://ramdajs.com/docs/#__) 來模擬類似 Scala 的效果，它可以保留位置來安插後續進來的參數。

假設我們利用 data first 方式設計 `map` 並做柯里化，使用 `__` 函數就會是以下這樣：

```javascript
const fn = compose(map(R.__, (num) => num + 1), map(R.__, (num) => num * 2))
```

## 參數的順序會影響結果的函數

有些函數的參數資料格式相同，並且擺放順序不同會影響執行結果。

- `<`  lessThan
- `<=` lessThanEqual
- `>`  greaterThan
- `>=` greaterThanEqual
- `concat`

如果是一般的比大小，我們反轉一下邏輯就可以解決(`<` 改成 `>=`)，但 `concat` 就不行

假設我們的需求是將主流程的資訊接在 `arr` 的前面，但一般作法似乎會有錯誤：

```javascript
flow(
  // ...
  concat(arr) // 前一個的結果會被接在 arr 後面
)
```

### 重新包裝

一種辦法是我們再包裝一個函數，重新將 data 擺在正確位置

```javascript
flow(
  // ...
  (data) => concat(data, arr) // 多包一層來擺放正確位置
)
```

### flip

flip 函數可以將你的函數的前兩個參數對調

```javascript
flow(
  // ...
  flip(concat)(arr) // 將參數對調
)
```

[Ramda `flip`](https://ramdajs.com/docs/#flip)

### placeholder

也可以利用 placeholder function 來消除不必要的包裝跟邏輯反轉。

```javascript
flow(
  // ...
  R.concat(R.__, arr) // 保留第一個位置給後續進來的資料
)
```
