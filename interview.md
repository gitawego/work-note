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
