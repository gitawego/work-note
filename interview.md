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

<details>
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