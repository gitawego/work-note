# React Notes

## Suspense

doc: https://react.dev/reference/react/Suspense

the most important part is how to implement the fetch method

```ts
function use(promise) {
  console.log('promise',promise.status);
  if (promise.status === 'fulfilled') {
    // return data when promise fullfilled
    return promise.value;
  } else if (promise.status === 'rejected') {
    // failed to get data, throw reason
    throw promise.reason;
  } else if (promise.status === 'pending') {
    // thrwo promise, it's the way to tell `Suspense` to wait
    throw promise;
  } else {
    // promise status is undefined,
    promise.status = 'pending';
    // polify for promise api in old browsers
    promise.then(
      result => {
        promise.status = 'fulfilled';
        promise.value = result;
      },
      reason => {
        promise.status = 'rejected';
        promise.reason = reason;
      },      
    );
    throw promise;
  }
}
```
