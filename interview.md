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

if sum === 20, return true

```
input: 'arrb6???3xxbl5???eee5'

output: false (6+3+5+5 = 19)
```

<details><summary>show me</summary>

  
```js
function QuestionMarks(str) {
  const reg = /([\d]{1})([?]{3}.*?)([\d]{1})/g;
  let res = 0;
  str.replace(reg, (item, num1, question, num2) => {
    res += Number(num1) + Number(num2);
  });
  console.log('res', res);
  return res === 20;
}
  
  // Log to console
console.log(QuestionMarks("arrb6???3xxbl5???eee5")); // false
console.log(QuestionMarks("arrb6???4xxbl5???eee5")); // true
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

function findMax(topNode){
  // add code
}

findMax(top) // it should be 19
```
