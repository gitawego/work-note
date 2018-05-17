## avoid zombie connections stuck in FIN_WAIT2 or ESTABLISHED

```js
(function () {
  var TCP = process.binding('tcp_wrap').TCP
    , _writeBuffer = TCP.prototype.writeBuffer
    , _setKeepAlive = TCP.prototype.setKeepAlive
    , _shutdown = TCP.prototype.shutdown;

   TCP.prototype.writeBuffer = function () {
    var r = _writeBuffer.apply(this, arguments);
    _setKeepAlive.call(this, true, 30 ); // 30 sec
   return r;
  };
  TCP.prototype.setKeepAlive = function (enable) {
    var r = _setKeepAlive.apply(this, arguments);
    this._ka = enable;
    return r;
  };

  TCP.prototype.shutdown = function () {
    var r = _shutdown.apply(this, arguments);
    if (r && !this._ka)
      _setKeepAlive.call(this, true, 150); // 150 sec
    return r;
  };
})();
```

## force garbage collector

start node app with params:

```js
node --expose-gc file.js
```

and use this function:

```js
function forceGC()
   if (global.gc) {
      global.gc();
   } else {
      console.warn('No GC hook! Start your program as `node --expose-gc file.js`.');
   }
}
```

## useful nodejs flags

### –nouse-idle-notification

Turns of the idle garbage collection which makes the GC constantly run and is devastating for a realtime server environment. If not turned off the system will get a long hickup for almost a second once every few seconds.

### –expose-gc

Use the expose-gc command to enable manual control of the GC from your code. I recommend to call GC once every 30 seconds.

### –max-old-space-size=8192

Increases the limit for each V8 node process to use max 8Gb of heap memory instead of the 1,4Gb default on 64-bit machines(512Mb on a 32-bit machine).

### –max-new-space-size=2048

Specified in kb and setting this flag optimizes the V8 for a stable allround environment with short pauses and ok high peak performance.

If this flag is not used the pauses will be a little bit longer but the machine will handle peaks a little bit better. What you need in this case depends on the project you are working on. My pick is to have an allround stable server instead of just handling peaks so I stick with this flag.
