# React Notes

- [React Notes](#react-notes)
  - [Suspense](#suspense)
  - [Lazy](#lazy)
  - [useTransition](#usetransition)
  - [useDeferredValue](#usedeferredvalue)


## Suspense

doc: https://react.dev/reference/react/Suspense

the most important part is how to implement the fetch method


wrap a promise object with this function

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

In the component `SearchResults.tsx`

```tsx

import { useForSuspense } from './useForSuspense';

export function SearchResults({ result }: {result: Promise<T[]>}) {
  const albums = useForSuspense(result);
  if (albums.length === 0) {
    return <p>No matches</p>;
  }
  return (
    <ul>
      {albums.map(album => (
        <li key={album.id}>
          {album.title} ({album.year})
        </li>
      ))}
    </ul>
  );
}

```

In the main component, use Suspense

```tsx
import { SearchResults } from './SearchResults';
import { fetchData } from './data';
import { useMemo } from 'react';

export function App({query}:{query: string}){
  // return a promises
  const result = useMemo(()=>fetchData('./search', query),[query]);

  return (
    <Suspense fallback={<h2>Loading...</h2>}>
      <SearchResult result={result} />
    </Suspense>
  )
}

```

## Lazy

doc: https://react.dev/reference/react/lazy#lazy

`React.lazy` is mainly for code splitting, often used with [Suspense](https://react.dev/reference/react/Suspense).

## useTransition

doc: https://react.dev/reference/react/useTransition

`startTransition` will mark a state update as a transition. It will stop current operation in the context of React, and start for next state update immediately.

It's very useful when user wants to change to another view (ex: new tab), while the current component is in heavy render process.

## useDeferredValue

doc: https://react.dev/reference/react/useDeferredValue

When `useDeferredValue` receives a different value (compared with Object.is), in addition to the current render (when it still uses the previous value), it schedules a re-render in the background with the new value. The background re-render is interruptible.

if the new rendered content in backend failed, the old view remains.

## Await component

https://buildui.com/recipes/await-component
