# React Notes

## Suspense

doc: https://react.dev/reference/react/Suspense

the most important part is how to implement the fetch method


use following function 

```ts
// useForSuspense.ts
export const status = Symbol('promiseStatus');
export const value = Symbol('promiseValue');
export const reason = Symbol('promiseReason');
/**
 * construct promise for React.Suspense
 **/  
export function useForSuspense(promise) {
  if (promise[status] === 'fulfilled') {
    // return data when promise fullfilled
    return promise[value];
  } else if (promise[status] === 'rejected') {
    // failed to get data, throw reason
    throw promise[reason];
  } else if (promise[status] === 'pending') {
    // thrwo promise, it's the way to tell `Suspense` to wait
    throw promise;
  } else {
    // promise status is undefined,
    promise[status] = 'pending';
    // inject status and value
    promise.then(
      result => {
        promise[status] = 'fulfilled';
        promise[value] = result;
      },
      reason => {
        promise[status] = 'rejected';
        promise[reason] = reason;
      },      
    );
    throw promise;
  }
}
```
