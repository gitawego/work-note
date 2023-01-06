# interview questions

## regroup string

```
input: 'abc de fghi'

output: 'abc def ghi'
```

<details><summary>show me</summary>


```js
function groupString(input, n=3){
  input = input.replace(/ /g,'');
  let lastIndex=n;
  let part = input.slice(0, lastIndex);
  const arr=[];
  while(part){
    arr.push(part);
    const prevIndex= lastIndex;
    lastIndex +=n;
    part = input.slice(prevIndex,lastIndex);
  }
  return arr.join(' ')
}

groupString('abc de fghi')
  
```


</details>

### calculate total number of given string

find numbers which between 2 numbers, there are 3 question marks, and calculate the sum.

```
input: 'arrb6???3xxbl5???eee5'

output: 19 (6+3+5+5 = 19)
```

<details><summary>show me</summary>

  
```js
function questionMarks(str) {
  console.log('str', str);
  const res = {
    total: 0,
    prevIdx: -1,
    prevNum: 0,
    isContinue: false,
  };
  str.replace(/([\d]{1,})/g, (num1, num2, idx) => {
    if (res.prevIdx === -1) {
      res.prevNum = +num1;
      res.prevIdx = idx;
      return;
    }
    const hasQ = str.slice(res.prevIdx, idx).includes('???');
    // console.log(num1, num2, hasQ, res);
    res.prevIdx = idx;
    if (hasQ) {
      if (res.isContinue) {
        res.total += Number(num1);
      } else {
        res.total += res.prevNum + Number(num1);
      }
      res.isContinue = true;
    } else {
      res.isContinue = false;
    }
    res.prevNum = +num1;
  });
  return res.total;
}
  
  // Log to console
console.log(questionMarks("arrb6???3xxbl5???eee5")); // 19
console.log(questionMarks("arrb6xx???4xxbl5???eee5")); // 20
console.log(questionMarks("arrb16xx???3???eee5")); // 24
```
</details>

### describe how event loop in nodejs works (setTimeout/promise)

### What are metric percentiles ?

### Find max values of a tree

```bash
                           7
                         /   \
                        8     6
                       /\       \
                      2  4       3 
```

```js
class Node {
  constructor(val, children){
    this.val = val;
    this.children = children || [];
  }
  addChild(node){
    this.children.push(node);
  }
}

const lv3a = new Node(2);
const lv3b = new Node(4);
const lv3c = new Node(3)
const lv2a = new Node(8,[lv3a, lv3b]);
const lv2b = new Node(6,[lv3c]);
const top = new Node(7,[lv2a,lv2b]);

function findMax(node){
  // add code
}

findMax(top) // it should be 19
```

<details><summary>show me</summary>
 
 ```js
function findMax(node){
  if(node.children.length === 0){
      return node.val;
  }
  return node.val + Math.max(...node.children.map(findMax));
}
 ```

</details>

### exchange minmum coins

Given a value V, if we want to make a change for V cents, and we have an infinite supply of each of C = [C1, C2, .., Cm] valued coins, 
what is the minimum number of coins to make the change? If it’s not possible to make a change, print null.

```ts
function changeCoins(bills: number, coins: number[]) {

}

// should output: null;
console.log(changeCoins(13, [9, 6, 5]));
// should output {6:1, 5:1}
console.log(changeCoins(11, [9, 6, 5]));
// should output {25:1,5:1}
console.log(changeCoins(30, [25, 10, 5]));
// should output {9:1,1:2} or {6:1, 5:1}
// bonus question: how to only return 2nd result
console.log(changeCoins(11, [9, 6, 5, 1]));
```

<details><summary>show me</summary>
 
 ```ts
function doChangeCoins(bills: number, coins: number[], res: any = {}): any {
  if (coins.length === 0) {
    return null;
  }
  const coin = coins[0];
  const num = Math.floor(bills / coin);
  const restBills = bills - num * coin;
  if (num > 0) {
    res[coin] = num;
    // res.bills = restBills;
  }
  if (restBills <= 0) {
    return res;
  }
  return doChangeCoins(restBills, coins.slice(1), res);
}

function changeCoins(bills: number, coins: number[]) {
  const tmpCoins = coins.slice(0);
  tmpCoins.sort((a, b) => (a > b ? -1 : 1));
  for (let i = 0; i < tmpCoins.length; i++) {
    const resp = doChangeCoins(bills, tmpCoins.slice(i));
    if (resp) {
      return resp;
    }
  }
  return null;
}
 ```

</details>

### find pair of `()`

the function should match the pairs of `()`,  if match all the paris, reutrn `true`, otherwise, return `false`

```js
function solution(s){

}

console.log(solution(')(((()(())()))(((((())))(())())()))()((((()(())())()()))))((')); // false
console.log(solution('()()(())')); // true
console.log(solution('()()(()))))(((')); // false
```

<details><summary>show me</summary>
 
 ```js
function solution(s) {
  let res = '';
  const parts = s.split('');
  for (let i = 0; i < parts.length; i++) {
    const item = parts[i];
    if(res.length === 0 || res[res.length -1] === item){
      res += item;
    }else{
      res = res.slice(0,res.length -1);
    }
    if(res === ')'){
      break;
    }
  }
  return !res;
}
 ```

</details>

### find total words in a multi-dimension array in directions: ↓, →, ↘

```js
function solution(board, word){

}

console.log(solution([
  ['s', 'o', 's', 'o'],
  ['s', 'o', 'o', 's'],
  ['s', 's', 's', 's']
], 'sos')) // it should return 3, because we can find 3 words `sos` in 3 directions
```

<details><summary>show me</summary>
 
 ```js
function solution(board, word) {
  let counter = 0;
  const totalLines = board.length;
  const totalCols = board[0].length;
  for (let y = 0; y < totalCols; y++) {
    const colItems = [];
    const diagItems = [];
    let yy = y;
    for (let l = 0; l < totalLines; l++) {
      if(y === 0){
        // loop only once 
        counter += board[l].join('').split(word).length - 1;
      }
      colItems.push(board[l][y]);
      diagItems.push(board[l][yy++]);
    }
    counter += colItems.join('').split(word).length - 1;
    counter += diagItems.join('').split(word).length - 1;
  }
  return counter;
}
 ```

</details>